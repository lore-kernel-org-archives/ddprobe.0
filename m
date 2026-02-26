Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC01428470
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772123694; cv=none; b=ZDqjE19UtuPv51MZg9mb+ha19KrtyM4Dm/ThSrEUxc0ZKRktYCJ2UZ1E4Y3Xr0kXSLjGG+K5BK6LIb74RSzHXEQnVebmUDS8weRGwZxUcEQ+SM0meyjFpibb9NWdcIgs3L+zaxPFZFNGh8ZGrPwe2VqXRpmGDigiFn6enu47dIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772123694; c=relaxed/simple;
	bh=Sb9BzNxZ21dr+gPcPh28WByKzeruKRaBNyd5/oQcyAk=;
	h=To:Subject:From:Message-Id:Date; b=BISqcC/0UbgcD81upfF3FepDSNLcX2jJwz+12w8i7DW4i0erpeh++3L0P1zi0VazA1h81U3wNYdvq1VwaC1j9GyGnV7FgdM+Wah75EjJiddMyy6cA/OtrW/2HRnmLQlAwvfgfSajCdViMF/BceZclJVpvF2c/TRo2RlV1dZvbAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMECv97A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMECv97A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15C3C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772123693;
	bh=Sb9BzNxZ21dr+gPcPh28WByKzeruKRaBNyd5/oQcyAk=;
	h=To:Subject:From:Date:From;
	b=MMECv97A+jbLq9CjobbVkBG26SoT55yMffejvMjd+OlV/xpu3x56BHDZuRio2VCfh
	 uDs3f6bWv/XxLuDDdQyLaAj6u+2bArjPvpvR/vn4cb42H/Vfq02T3Ajvh3ATJVCIlB
	 63V8IaoyTf4J74HAbxrZV3U9aSBJ4yWMDGO1Phu+Ro/GFBssr/ozfd33ep0VET38jV
	 jCjIX+wo2J1+jSK91T8WnNZ+AyCj5MB/DLI/LBcnXhMllTQBUx1EU/+wG8VDsOOQ5T
	 zRYzRtdL3DOejWE+TW93IZms/oKPb5GCqjqco2i+iAmGdYyJb5mq3IRozSh41PXKuO
	 tq9DioCXJcX+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AC2FD8FCF
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212369361.8212.6207486221166822735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811c2bdf5cc6d8aff0d4f4b66ebfe5780fb0ccde72c725c570adca8aa3126fe0
Date: Thu, 26 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772123693
