Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240B3171B4
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707302897; cv=none; b=XQm+IwS04YdkkYBFFfmycCeYGPZWNA5Lm4WkJDDuVCY0F3aYZ48LHYWxLdLQBzhiZh2BXe2wioyLRf/A0S7bogct3bdAXH3sIfJHKE0XpbNC0kgTV408izw+odM+VGb+JGb5OJ/VTy1qnZQ10sFcs8za9rFYgqo2zjVLv2RSx1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707302897; c=relaxed/simple;
	bh=kTPimc1U1iEJ79DwYR3MQb3zZSqsHxC45s0ngQeMG1A=;
	h=To:Subject:From:Message-Id:Date; b=pKuV9vlh52YxvH1ZaK2+IseY/eo87xrUImQGKL9tfQpCb4ZJ3bxhWIKWDA+PPELq5JW9ASZUKkMBRuMnfvcS3ul5EsdgPay0ZWG7VSS7HmitiUCbTpDnSBANJcFW58+S7cwKTzH98TOdY0f1b+vepyWCghf5PYRsOAHHThMxBu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViYXsdKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViYXsdKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819E9C433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707302896;
	bh=kTPimc1U1iEJ79DwYR3MQb3zZSqsHxC45s0ngQeMG1A=;
	h=To:Subject:From:Date:From;
	b=ViYXsdKdR2cYinq2sQpMDMriJn9SOTfgyAOj78op/jc5/YVsUzD89FVd8MyJFkChI
	 I05oBJuvaXFhLM2BEpyR+OFov8jcvF1Um0wg0pQH1/O3Lr2DVY+BwlTgtVOmi3E4kQ
	 U4qzkYoYyJUcR1mcuYbBgUYHJd714kIdpbMtmhxkD4DUDD53JKxlyV3bmOAzBr/XMj
	 s+bhrRxXAYMH4QcEPKvdbMI1jaf97O3Dlbl4PUDdnWmSeLvHKGTrhbVjrljuke9Eb+
	 72BK/R5bZOU1P7otKdbUIEsctBHXxX4DZjQv10ROs/6AmZrMpxrNR8WH0imGWVgCsX
	 JPxv099nkpQLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C50C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170730289639.28492.15742495446624528629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdef3bb3cd96c7324675fb4e56210e0dad85e248927047ff37ee711f175ac350
Date: Wed, 07 Feb 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707302896
