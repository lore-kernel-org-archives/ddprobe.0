Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217424A15
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728536754; cv=none; b=BMTg18bdoOcwAEGEWpKp0ePtcTwNCCcrMRDaCd2o3hFx75ufiEDK4k59yGsp/Q98UV7knsCkhls0flo2A/AfNwZ1SYtTC79xcoh5yMEiXOnyxBaXxGiC9SLlbXojVFv6YMZEuc7EIrRVi4diEvGdIfNfEVtjpZnpBNkT1bQiMo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728536754; c=relaxed/simple;
	bh=XUDEnt0McULbFziV9kvNRTn5HpbJAciGRnvJuHvySKE=;
	h=To:Subject:From:Message-Id:Date; b=Ge8Zi76XtCfNb9u/Ku6dOry8jaS2egEjyCiTrAWUKREZ2n9gSotHway7y7k6qouylDt9vWEYSylfnr8Vmqk5ifA0VvLPbmGD/x/f8nOVQ/7f2OsAeYp4Q+V2zIAOVLf1OEVeB3lFPuDQ22rCb+i3ATNxd+Xb6M7MjXCAGa2LP84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv64QkBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv64QkBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DFAC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728536753;
	bh=XUDEnt0McULbFziV9kvNRTn5HpbJAciGRnvJuHvySKE=;
	h=To:Subject:From:Date:From;
	b=Qv64QkBpWNnaHGZ5ZrE2yi/vg8Lz6OYI0EUY1PxkoTl3Y5C0hpCnA+yDxJv1q3x/B
	 /EocLSTlXuOR72QpMR6824LvUGohRl4nKUDjyBoAIhhwjhc6HYqo3dWXgLYX4hAwHw
	 KwAhfxz3ShGmrbOw/OM7kqrHHDjA0ZfoKosALTddrGfo9F17zdAAfnqktoyS0ZTrqB
	 7pHGMcm00cEo3o8Z2hJCOVXURr5XFMSVslC97OG7XRGKI1EUZ8tIYQJfDOxnkDNjaX
	 ttCOuYCbDBoT3i4/Letc2dpX/EGSVivFf15fcugaEQpQZw9HTuDYVcS8lMwoFLOoGS
	 aMqgCIOEJTmDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DB0CF07A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172853675366.1543.9255325193074402178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82b826d4cc22d0594f28eecb8ddcf0b4016becb72fa72858767a6cdddde937d
Date: Thu, 10 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728536753
