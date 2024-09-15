Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E7918B04
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726421754; cv=none; b=GtDBXPzLEyjwQx8k9lGaXTSb1uxBubPfyBXG5Ryn4A41ZYxFmDCwmlOptuK0iRWuu0yGzMGnGjZAqEif1nuoH4ragF4b1Yod51hs/0tMyU2Qw36EIt/+HxD4cYza36/RIkGEMam3Ib/kSUhnRHfNbw0eV1LhESeN5OmP+TPryv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726421754; c=relaxed/simple;
	bh=E2EDfLdDFufniZzAuZ8LMaRZUuwalt0cQRRb1UstqaU=;
	h=To:Subject:From:Message-Id:Date; b=SJCDd/VAKh7tVDQwENZKBgAEhXowuixYiQ/VtORQTFPdizat0B+LtYQrkZyq0/E6+38XCAn/LC+cInl4bMYeBFlH0K5lzsxMSVtEQLCLL8GA/c3TnvtZKeZ2pyPbrMgyC6VGVsOevs/cjhJRMyWWe2dSwV4ZS7EScAP5JReYn6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZiKh2Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZiKh2Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B748CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726421753;
	bh=E2EDfLdDFufniZzAuZ8LMaRZUuwalt0cQRRb1UstqaU=;
	h=To:Subject:From:Date:From;
	b=TZiKh2XpDvHV/5vS8l/UQ97UBeXMtyvhCjJZ0yAZ7he8ICoDIaH8jWNEkLxmMfNVT
	 TJt+9keFVEInIj4MYgQA/TFbuRwHwriVPDtpNvtFdYBD4PGQDStgYWr4KC0713IjrJ
	 lpcjSLiyzFNCk7gYxuq+l/Ce9jXJNRw7b/Jpp7AjuODdvryehfczkaCd3DzrAoVgjG
	 NweckW6ty1gNcUNgz+d6tskz2/X+t3Yh2+OomjlOEJQCk/3zIxFa5g3Gm84uaZQam0
	 dGQssSLIFEZInmwkvqGR/mptXN2LOmMbjPGHxJu58WKUlquuz0yqH5qCkBmGxCrCCJ
	 JMD0I+t5I9aVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD11C3ABA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172642175359.26882.17658466461359870131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4256b9b797e46f03f6b55f3965b4d2f3dcb145fee7bd4785a508b7613abe32e1
Date: Sun, 15 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726421753
