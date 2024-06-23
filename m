Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66574138E
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719168743; cv=none; b=RgqhxUtaKPRB5aTiPWDCwvhlfEePbUttzKK/h/EahmkIzOTWhSt8VhmODyrefcM+Uj9GjLuR2wdrYtMaC6fOrw8gE9RZ0DI70QSv0+mIchc11bl24df5GZ0fpDjIWO5ejWqOEsi2PurWq/ZtLl1/VM5s+BD81fY/GnmXlNAVYhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719168743; c=relaxed/simple;
	bh=V/O75hvVXtC2wJQI45rsNBu9c7/1z53TBiKmhZcln1Y=;
	h=To:Subject:From:Message-Id:Date; b=g1h4AjXOFYixFBZ2NJuzDbwoA4Q8zJ43X3yrZdeaiZS71TX6p71KiFLyQh614uPcnOgPn+zrdMkyxF/sj0EluksVJQjcylO7HMvYwwQX9vpmFMiVugZHvcsQk4ILprdtJJeWUDxjU2keYUXjde6J03YA1378HxqAYlNVvK44V3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M20FmyQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M20FmyQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0C7C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719168742;
	bh=V/O75hvVXtC2wJQI45rsNBu9c7/1z53TBiKmhZcln1Y=;
	h=To:Subject:From:Date:From;
	b=M20FmyQ3ber2qgMF+92DJlONa2T7ZREK1crBE97w1zdIo/Ef3BNpWU5Y1g3/8yVwc
	 5A7/CQg4ByzcZrrfxjf+MlHq4r+R04oREMQCEpNHA+k0ZwcyAED+4RNXFiTndJlD4x
	 m7HPU40R/vBujrHFlEXzF9dexqQ4HUeCf9td0k+YQ04CvbcdnHgblIVP73EE1S85hI
	 XopJHj2rKD8/acEmZT8NBNjTAgvIkYWiF2IBnVtfWwHDfEKabcvyRJuILkqCZtTxBM
	 XNAbSmxcqVm5kz5MiXO24hTbPBFd9Bn/KDfxgQzOQuMkQml/Z9POxdtYlP1EoA+Wpu
	 PqnOGatn72MSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AF4C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916874277.24674.17545542860284684747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b80ccbc18b00cc1015b71823e0116058628a6c6fcf8ef54afbce1bad32221b
Date: Sun, 23 Jun 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719168742
