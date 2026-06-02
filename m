Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5193033FC
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780419874; cv=none; b=s13eKJ3hmpZowfUYs/0f9zubdX5kWHUubUUC0/9wmFbTktMcAAdzCtOfRogMdFZvPi6CmRM0tJP3WVmX9llDXPNhNGP/h4hN2hq9NyBsDXJHbWqrD4BTV1J9imTiMCjkA2Gsg+k/FoT+oE26KZ0MCAZoYJr9huhfMFHpQZ332Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780419874; c=relaxed/simple;
	bh=PgFt7xdggwtoiyV6nTfGdjxTN2CYHdkcEHTKEIMArRA=;
	h=To:Subject:From:Message-Id:Date; b=fig9l2DKASGsvJitHyT/KChGQrA28MZJZH+w997Mz+7zECNxyrt7IbSKpH9GvdUlwWINSxuSIaSQooA8PTzWYt1Uh1t6aSxvLbTOdljcr+nfXnCqjutmE5SHB+kLQMER+LG3PEuc5rFqX+liMnCoh+e+UjiejiKdh2UG8PFYosk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FctqSS8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FctqSS8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C88C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780419873;
	bh=PgFt7xdggwtoiyV6nTfGdjxTN2CYHdkcEHTKEIMArRA=;
	h=To:Subject:From:Date:From;
	b=FctqSS8BUhSOu4z9nRALKawvMbXZo3A7pPYZg4uRlfT+dVGbY5hHd42HOGgRyQDjl
	 Lh0E+Vg0w3ecntHFO4+EtLeI7hSW9BwHmu9jbP1EBDt4jB45tMo5S/7ztPXu/lUHKV
	 G4JYumcHHvdM+jm2ng0TaI+qgoL6f/lD8HXDeD7IH0PFKouufK2rDH2qjNN6+jfsM4
	 +6OmlHPRZq/tkDV7S54hreHUSGrLltn5aJYQbPr9mAdRRlEqf7GDF14HmQOKzu/rni
	 zdn4azTJ30tQpa74kesF53PlGMPUdpu/F7g9v48zarn89Z6ryimtW177wCFGmr1tXX
	 v13eGHFkoGGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1ABCD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041987368.32612.8661905546535209571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dfcb96384ff8ca21356e76375d019044f6413c5896261ed17139da6d8001bc
Date: Tue, 02 Jun 2026 17:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780419873
