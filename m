Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226ACEAE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766285034; cv=none; b=MQBKbLE7YxvLUPtJ7hhvyfMinsl0IBTPd3D2m0FSM78yV1JM/irSUYhkBzF7jhyPCYqcjlCvUM6+AOLc79i84ZliS2k5Q8TLbaUPwrwaSvwvFIoKfd3PSh+ayeQ6LCwZGrQz/enSNpSWfKU96D95OKAYcMwy5koABBR6cMrbrnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766285034; c=relaxed/simple;
	bh=1SfdwPuMfigSAK4+99p8xHA0L7MHimy1aBMeOpdZoKY=;
	h=To:Subject:From:Message-Id:Date; b=ii/zx3Crq+6jB2+7lQFkUpte3dT7/5jmdSSJm4dM1FeltGjZlUCL8YpYWWus+qhuPS4M+hjf2Wl5XD9g9HnAlUWcMR78o40FUn6+Av8i+/EmdQF4AqSC4bC+/D05LgJjHF7h4Ye9YFEE/F65avRNtxRQiI2n6oWy0l7e8GB1Tl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snjtCHLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snjtCHLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0085C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766285033;
	bh=1SfdwPuMfigSAK4+99p8xHA0L7MHimy1aBMeOpdZoKY=;
	h=To:Subject:From:Date:From;
	b=snjtCHLgUmaHv/4rrFm7hNjQ3uj3TWpZoH2YLm3jTiMfbzVoFCULZGDmEmaulofRh
	 G3PUWdo+7ULFM40EkoRbjqm0ZY7mJJXfaOY4aysRyt3pTXVXgf/HQ0Ol7kEEA0lqSZ
	 RbaDXnxluqRzjlwNaN6s9eLeux0NXIlKhnXGCd6DlU6Vmkd5k+6u8j2Oai1rSELU5D
	 4IMIn7eKywcX5vvsu6dkx9Jgwct1VT72D0DdWSw7xJImLRzn3vbssQd3dNEBL++roI
	 oyS7FF64eVR0056GcyQ+C1lQYrymQbUFWMPCI0p+8m981ZiiXRDVYpIpxm4ez0GgcQ
	 TjVFe6S4k/oxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC55E67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628503358.14840.2277139837286853302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ebd1b541390f9498518a80acce3e26379ca3d8f1688e060f5936d16115385b
Date: Sun, 21 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766285033
