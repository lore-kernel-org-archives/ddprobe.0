Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF9E1552FD
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781951194; cv=none; b=ZLyDUmnATTP3aSmrsMiwvUGQUALC/1BVoYwZwqXaH2m8Jlci5MgumtukkKNOsvgbegIIyOmJMketNRnsxIjBtC11+OAeq5XbQuiNeYHxtgYhGsnXbSPsp1IJHi67Ui7MUcvRS9vYQzd5RapQwu20DmbNp15EGB+40ciZhfJWK+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781951194; c=relaxed/simple;
	bh=IatSFmwJFUJ65cGKGKOD3tOMMM1S8XilHpwkZ+tzEr0=;
	h=To:Subject:From:Message-Id:Date; b=rVBFJwW064qRDq6WDJuYeBx6HpP/Fxhbe1TujkqCA1G3UT72KK8pFAVJPE4hYE3P8sPkbhI1kUhEnfEEVOtWmE4XG0hunqYJ/jP1QGw/bHJfAhxeUWwPOcIr6Xj7Qw6aPUXsQer3mpt0Rj5PEXLsZQKgI+pMEMCD7lQuTfyBOco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fq6yN33r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fq6yN33r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D776EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781951193;
	bh=IatSFmwJFUJ65cGKGKOD3tOMMM1S8XilHpwkZ+tzEr0=;
	h=To:Subject:From:Date:From;
	b=Fq6yN33rQ+pGHY1gEIJkx2BcDs1hmFplR+ukVYV+dXNhn8KtNraBDTepq/B92IUMv
	 Y5+PdedOhAsDnJLX7ZuAMQ1g+FeujvVbEct/aqE3fl1T6iuvGqCm23uFROxtvOD1ZY
	 K9eqpbuh+3dCdl3DGCFYwCGve8VUxncElyyQh1SnNcVzyBiXcSdE2FkD7+OmCQloYn
	 54+FmnuPRANV2k5904kW7JtdeYvhOgFMcuqFSQ0DwxGMjTuOYMbXbT6hzPWdqaVSeu
	 5sfxSc8Ct24b1cAZ4mrhSsKtdTuY6tCSYBGYYrA5SmkpISUIbDnIiU2T047ONSES1r
	 2BOox84b3fo5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C3ACD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195119370.4567.17181163647200083258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc08d2bdbbefb5516a6706be3493eac4828bae3fd9eb9424ea15cc1b4b7a0e9
Date: Sat, 20 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781951193
