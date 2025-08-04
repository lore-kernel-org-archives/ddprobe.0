Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FF51F582F
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754340594; cv=none; b=msPf+D8GDuyz9dneOiP3NOXveonQQVoHvTcFrye4x/WzPPr3AbHXtsOq2B3hMZgyHr3wmxYIAIcE3oAkN1ywHYE59TcVtB9LPNVdgThuFvwTAHV7CvImGy4zn90IKFPNcvcANowVL/TNrbH/zrRcPPh7qZNZGvbP33V04V6WILg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754340594; c=relaxed/simple;
	bh=iS9R0Ea8/joKCdkWs0ZXf+CBIIrbqP7QeLYkMzqMSYs=;
	h=To:Subject:From:Message-Id:Date; b=iztAxnNqjZMdoFixp/cY9Ze/SvBIaW6sNT5elUQz5ZmWqp2TMgHIgD1dG3BLfguW7NihdS73NEnzvGnGYJMaQo5QnVhIREzgKRRQ7LW2XlOs67SLLfVcBNSwspJdYuArw9QqxocrEzizOHQ5n0qcoeie0EHbjfoMM+tIg2jwH7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVSGxcrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVSGxcrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC77FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754340593;
	bh=iS9R0Ea8/joKCdkWs0ZXf+CBIIrbqP7QeLYkMzqMSYs=;
	h=To:Subject:From:Date:From;
	b=SVSGxcrIKdat5EpA+fqKo+HJwOoaSw4LlCLV8AO6RmxG1zHxrRxM4ZSyq0wC0CBVJ
	 5XtFN3uYImsZjVTT2HHXTHaEOatInSrht8VT2gl3U1D4dm79ITLcUgzSesl1ZxXM06
	 ITIDZmkMAz7f3tSlvBqiCFbZWF82CjszXnsmR8I0G44MGxfT+mEw9O/K5u0JSYWnY6
	 sgOS0soMJSCpyyUK8Gv5Gv60aVfUVw1vm2oldRwaiZme0xp4tf2B2qi/cLo3t5sjZ2
	 eRte+ZUjKyAGEuDwVetM/jfjcKTRLo71Q6XisXFzgXvq2D/NQ9gH7FDZNZA36kiTur
	 aJk8VLP1WIabg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD86C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434059362.23649.1959323048811422729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effe9f285f9a17d817566cf58f3b35bc82dec374a03f83883aa893b0775fbc3b
Date: Mon, 04 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754340593
