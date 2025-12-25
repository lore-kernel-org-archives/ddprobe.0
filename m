Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C88242D70
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766676234; cv=none; b=uBa/tLh7t/03XNd2VtkRHYFwLZVn3EBLjlfVBbKF/Ud5d/7bdStweCGDC1ZAfbXP1MriHZiADUJbK57ST4aDIMPhHmoQuQdUFj7FxAFrxgiihFM7AjtCYaEnqxvacZs5BzzkfBM3QIulKdLVThf34kSbOknoBweKhdVZarCK1WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766676234; c=relaxed/simple;
	bh=Os7Hxe3PW+DlUoBbPI4LX967yasjPbCWPyYvGxoyAHE=;
	h=To:Subject:From:Message-Id:Date; b=bp1P3a/vut+kWl5TX14urL2OWmcFLJFfYhAFsTLGmOdHQGsxxRMEs/PVVGfGHtJP69elna35Zixe09mZ+T7vMmGulMP43pYIj/T4v+JZ1L0GntkzBwGPninIWiyFe6MEpSIU1+ZFqdEN4cZF+ELT3S0Uh4PQp9QMHa1ij2qkra0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKHS4jQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKHS4jQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD31C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766676233;
	bh=Os7Hxe3PW+DlUoBbPI4LX967yasjPbCWPyYvGxoyAHE=;
	h=To:Subject:From:Date:From;
	b=bKHS4jQjsStQ9FGpphi86PVHYhBa2tPONlBV64oKm8t1VkryoocLz2f63fhDypR31
	 YaPffD5I1ctl6dEMTXm+QZ6Qbc2Epr/PZloK0pWaPGWmFM68JjMzgmFWd2XgYPNiTU
	 GH4AClFP9sXPH8Cdinb2ZawpFktN4w6lyvlntH0j/m1v/KPElXNCkMlf4lT1+6Wo1V
	 VfPHwZTYj2J4h2l1iNpMHDYWx4KXbWN7M46u91kkWaqrCYA2tXgfsCGy9XiIUccv7u
	 2YABCcVlzZx7MqSA2oM3GO9m39IpZpD/LauJKtyHDVc5pS3rE3BCXb0bUIsA1ov1Wz
	 FzzQUHyaAAOYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C12E7AD5E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667623359.25069.11471934270859673011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab38eaf5684908a248d87e9809b70e47627b8b7350da387f6de410964fa6cbe
Date: Thu, 25 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766676233
