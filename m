Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523FE2475E3
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784414914; cv=none; b=einhym8FJY3v21Vi6cfGd0VbQONw1y40Z9IAVrRW60vynY028HssVkzZwCcg+T14q78XlhsXgTVTSkZaAA2NWNDA9twgaH+B6o/bns8vFUIyrIqYutaQkvRrJ34lfjlGY/KciBgbZQDMmm5/hMmEpqM2UBlBsm4y0OjVItiIoyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784414914; c=relaxed/simple;
	bh=6IkWCRxGWLqB2QvloV355kqpya1vJP61obFPTVIsIMg=;
	h=To:Subject:From:Message-Id:Date; b=hqmDkQBLl6pYnSPTIwqF4TFaTOizGoBzFoM2Jm1x0Opj6RGCD3qE+1CllVPQ4RTD5h/LPysrCmbO3KNdLgCTq+XoqgRrF8UGDTD9SrGhWLgbeAEzRAIzxSOMlV+E//Sul4icGGmI4I37LAmmt71U8muSFRnnVpBnlHljx2NIxNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDyVXxNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDyVXxNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76EAC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784414913;
	bh=6IkWCRxGWLqB2QvloV355kqpya1vJP61obFPTVIsIMg=;
	h=To:Subject:From:Date:From;
	b=DDyVXxNl5mkZlXMMNVK56EGl998Ca/+f0jIsvSkxZf/qoUgvr5ReA55qfrKN73xPq
	 EO2mx+KzatLASMS+RMYZUcAP3HNdopkMxO9NgBd4tUW1jCab4UtPTggd9jdlek5IvA
	 2iGQVwvfYDk+bG0gsoXOKfGMgA5204ELGkpGLF2EajGTKI7p8pNT5aJ2w/MpFgzGk6
	 FMv4zFjgEM8MtGKNl863sHxAif5KdG/Bj6RkqFrFAoPw0fDWSN/zjtq2kdPpa/Lh9u
	 VHmlUTdOTj4e0XzZ+zXrEbIKd3WX9Vyv0WkcNiJ8g31cpveoEvp1FoD/5BU6fJV9Oh
	 hlGP7ogPtpH8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14ABC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441491368.26899.2526338811429753638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a60e5ee8fd0cfb585a0968acae8501681974ed579a1af689e513f81a3c4748
Date: Sat, 18 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784414913
