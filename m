Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D84927FB2B
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762532994; cv=none; b=W6ISyzrf3Bv0O1C7rq5HSxlHuhxMMd3KBHfbhEUxUJr6Jaczjno3bkOf3tNoXO5Y7UoL52eM/lfJKCWYrcNp0HO6BTBB0xHSflbA+g2ow5kkZnOPrcNAYOhJklJeI9PSzlYgI8vaz6ODat4rK1hnwaD4xu/cwxsmgrKJJ8ieL0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762532994; c=relaxed/simple;
	bh=zySbxfaATuUtGu/Sx75mVxnH77TmvAx9OCLtFCRGukw=;
	h=To:Subject:From:Message-Id:Date; b=AB+gYv4Xi0CVk8joPP1fOvugDyIS1Se5DGvIQNMbYOYb+bjfCd2trRi4Wb4GFfXDkWq1mz0vhVMk4T9+IJ2MXMCY4zJa4FX8joUxeoWfN/96sN7RjLjyk2FR5N2Pt5KJLQoL13ZwANwRHCCmIyrwdo79qVolqbKz3HQAs8nv088=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zvz7GSxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zvz7GSxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D6C113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762532993;
	bh=zySbxfaATuUtGu/Sx75mVxnH77TmvAx9OCLtFCRGukw=;
	h=To:Subject:From:Date:From;
	b=Zvz7GSxQZfgdrznGEF6U1H7TVqADpkQdhbCuaPJmSARkd5hrgcaOdBLMrRGZ9/3RA
	 F4557TXaMOWyufdeoyDVOtsQa9A0P0utnNI9m26TLz9Kyetl6mBIyGSSGehMsXaFoL
	 hSryzhgXvAeZw96fRDjut7NIPF5997ZmsvNykq1H9brKH5tGOZ15/d+47SYfWAOG9w
	 jTg0gNm5k3elW+FCtJycWXXrzjxc80KgMW/uLnlLemxanGUlkk7BYCGrhRT9owNe1A
	 sqMFnrj7fqBGmJ89mOo+H+hXZqKCaKFvweKBTz9dylHpQgif8vh1pwRah70AKIr+h+
	 3FkhAW2KAUqxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90348CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253299358.30185.10029721116938972152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7621f7b308f1f696c65fabec567f52b98e96f249d2a96c06a0f93eb103dcbe
Date: Fri, 07 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762532993
