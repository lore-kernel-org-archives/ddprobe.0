Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4E9189B86
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 07:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729753555; cv=none; b=tdwOwnSAAolXIoSucRZ4b+fcnYW3p6t3tVcH1JiE47dynjDLEd6vW0oI1D3pBLsOYU33MAhAgLIIFUUS7DOe3UEewNnVVUGYBI96khLuK1ZSj8IuORbcqrp3N8o/hQzdPFv4luEpJORGziXCMbFfDP9FtlcthGJvdir2G+tZ+30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729753555; c=relaxed/simple;
	bh=pIl0dEP31X5/pZRUvFBOclq03Rumjmc0sm/75nSacp4=;
	h=To:Subject:From:Message-Id:Date; b=ewARNKoDZZFvyjQ6icP+CVZd5YzSjACEmRZSqQKZB1QQxzuj9lRwRCQLSwmtgOdW/VrFR2a/zD2zKO/8tCLNl7i2++HA2Po//Mso7WhLgJtjoMS4hh3PdElnp6f46/fE4tX9aIgUAyOX1txdUyfTobIWiEEHIVu7hrETwU1DKWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lz1NUElI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lz1NUElI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A90C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729753554;
	bh=pIl0dEP31X5/pZRUvFBOclq03Rumjmc0sm/75nSacp4=;
	h=To:Subject:From:Date:From;
	b=lz1NUElITYb0K8QdBEMVPoEpN1LXomyB39SWS2BaB+FWfCNc1duND2ACaf/RY4urM
	 4NVymCztanz/Dv0w13u71xLkox/+6hamPULUH1f90uIaS3CqiqCwFrBLOCcGeRcRC7
	 TijlvoFASHyDkeopQBWa6vaPx3FG+5nkB6X93FgEWA/9PcJJQpsKw+RBP5tlnPiT1k
	 yc+NFt/5vQdsmbQG8d/pRWCzvIazrKo8kA4FumX6Q07eylqK7VenXraSzy2j72QP0O
	 FhwyDIkyt7mM14260tw6lz6uzSmu8174wZPzQPhg/vQazaFydaW8d8tZsYStmbsHqn
	 9rlSbYQxRxsxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D88D0BB69
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172975355366.10580.6508526572320408166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10315f3776045fe66367f26fc39023520affaf23beba34439506b8a0e3588c5d
Date: Thu, 24 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729753553
