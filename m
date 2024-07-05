Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F091C2AF
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720197923; cv=none; b=Qsh/1zfxHQETVPAQe6LGwMW1mtwmmzmtm1Hp9Kl1OY8v7/YwKW47eSk40E5NCTP7uZ9oNG0syB+8/C6NBbiRs1CR5MTwcxnNpOCDTJjkCgdut2gaL/aNcJtghiTRvTHM2coiyKh9qZraV30es1I5reHSMQg3AFXRkLH7vHAkNpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720197923; c=relaxed/simple;
	bh=K8NKqG7F/Km/X0VxCZNdu23rSoK9Q8N8JfABYIB3Y7k=;
	h=To:Subject:From:Message-Id:Date; b=ckBP7nwV2EjbQEZXr6gUDdo6xGj/HFafWhmwOxdUkKA7i4JQRig3uLIA1sPH1jdV2PRno+EKKdASxy1yuW7LGuJwFwaD/lwzOviJfYX/3dAEy5YBFMXOUtexITSAZXcKn1msGt29mSAdSOL1n569ghGIEBo4ryYTa1xp/o7HMAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkmsMtxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkmsMtxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E1FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720197922;
	bh=K8NKqG7F/Km/X0VxCZNdu23rSoK9Q8N8JfABYIB3Y7k=;
	h=To:Subject:From:Date:From;
	b=kkmsMtxM9ET75ScEdKiEoxiApzX3Mi2xswh2hVcZtr6imbkL1piYHM8KvZi9dmR1G
	 JHmfwDfPLKYpiFP4mEE1LCO3oaPxhj0Tc6w44fx6gJs6eiU5k2CpzbKdMOp/PWFblW
	 XmUDX7/oZyvIAo2jSRA4NfTBA28jSdW2lLVxY3STywdrrpg1QxLevvh+n+Bi8XmVE2
	 /Rh3QntfDRS9c3YjUGanEmJWfRFmKMZlUZntlCZQ8Lezbp1R+6TPTvmUJ4/7UZ5W3c
	 BgjABWegoUCOyHJt8ayYE1CW+vWktx2+LDN4NMAdhT+AmXufw0dD08XzK0wug4Nr8m
	 yYr9GKRpJIDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E09C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019792279.28689.9089757016702526552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1207f7f4fc1da809bc6eec9716e53a2b61922260b7f9645481c7c9787e5db056
Date: Fri, 05 Jul 2024 16:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720197922
