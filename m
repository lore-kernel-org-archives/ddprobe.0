Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687962139DD
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718728763; cv=none; b=s3m0lE1uunpZzSHa7q/ZOV3wXnBUb1HyTl9DEmq50dunMl+6CTdip8oi2GJYus2v9PbTmsrnitSOpNBXLc9tr8lmoxiLGrGse2K1nNRrVGqQTNIEEwi04DTxcAbNfTDKtsSy51pe8WJrMwrWLKDote1ji54LH8cKa9zXCXRfB8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718728763; c=relaxed/simple;
	bh=JWlssZbbJE6Rz8BwrHxsmoPsjMcJQaFmM7ptIqiniUA=;
	h=To:Subject:From:Message-Id:Date; b=OhnERZUc6ShapC3c+VAohDhPqwg8SbnY9ab03olh+r4Br6cXJQha9bqZYUbRfHSF9QrrvBC4f2IPp42+vFzJeNMud3f0+kgExLq9WvUmBNDS7x54kzLMWXdJZSNauMpIIOJMl1s4jxzNWsqCsRxPfuOQUS847VKztgDb6FZltHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+zxmt1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+zxmt1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91E2C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718728762;
	bh=JWlssZbbJE6Rz8BwrHxsmoPsjMcJQaFmM7ptIqiniUA=;
	h=To:Subject:From:Date:From;
	b=j+zxmt1MJH3rbbWyGXiIljXLeysLxS0ecD77udaX0ZI56s2LgEyRoPtR0x6S3XOG6
	 TuyDfHIUKypdpnxKXBHUzTtCvOqCpgcScDOmPbKyehDZB/XiUPWjNozpuhONGAwKEv
	 KNCJ2hlQqxeB/CP1I9b9ne4sUDmURPHZU6G3Xp0cTvCpmu8AVdwwxE13615kO2ggzX
	 +KsCPwy9ssWYXG7JRc05mlhG6ToM7u/lqh8D+wZsM0sgkHqL3D0cLhEo73I4iFpiO/
	 JVXsky2y3oxsH5fSXkSo7pLWJGSDIBXJp/Eo5NQqp97UclFykHIeb+CLVx6roGtnVh
	 YkMsp88AX2BFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE631C2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872876277.13889.15651726850751029750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8a404babb2d5bd8487acb62b7524bcbb5e058c64d437cf5a1354666c53301d
Date: Tue, 18 Jun 2024 16:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718728762
