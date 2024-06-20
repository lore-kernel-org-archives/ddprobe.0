Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B0438F97
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718863763; cv=none; b=CtejtKISdOY7eZGmFlzIBtTTM32U0p7YmfAwNp+NNYRPVtdESVZ6v+7AarHhZlDqIZK3gaQG6FNcm8l+wnvRiZl+aKJPxp+ng+W9CN2EZKxhMBwJMllfgD0Q1tcGTnz7vFIxljHWFLf/6+njsL4I1XJ7U1wUKcPPF1xPJgaISoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718863763; c=relaxed/simple;
	bh=4a4thpHr8WBlPr6uWk3hVr7enV6fPTvFwOtDIW9ci3Q=;
	h=To:Subject:From:Message-Id:Date; b=q0bZNwyjrljP8sERf6r0Uum8/F9jBw6tHndLsnbIqo+1TypyNQFIGClGNtS3bm6ioVAY2/NvzECkhuPuX6oyR51nzES2QZpkUVgo13hzGw+0cGj345fTrmTpFaq/Fyao09It0+EXnMiF8cRiGT3XIKXuPXGJ8MhtPD16R48UDug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfrzAJ2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfrzAJ2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D44C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718863762;
	bh=4a4thpHr8WBlPr6uWk3hVr7enV6fPTvFwOtDIW9ci3Q=;
	h=To:Subject:From:Date:From;
	b=GfrzAJ2vPFKDkZxFtw48zJxs8VBLQgW5m9f4glJ1gUuIgsBNoti2FMGfyBSju2DxQ
	 +mhLDppEVxwZoxpOvWSOVjLA20aak8zHp3qYtgD1gUq1BNI0lGIJQG/iulXp7y01Ps
	 6wrIoLux1swlheBAtibrkv7C/F4QJKpHFw6jCRZPDPZ42YnyblPD9R1DLLAg8HLXSb
	 PfgrPx71+fDyry8MhAHVF1XZAs0X/Cdsdqtaeflp6RD7bleo4RJWwQ+LCLeuXnyt/h
	 6YoxmFjhpPFzgPmdVnqx8kQ1qI0onddjABrXoNWS6a63KauL8cPUDy3EAuyF/+AcQr
	 hJvetinMqM8og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF5FC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886376276.15716.12770045484391159560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897dea03d13e0c2e9a4f78f70c6432b474ea8cc8b221bc6b6e4b5fbce7f10770
Date: Thu, 20 Jun 2024 06:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718863762
