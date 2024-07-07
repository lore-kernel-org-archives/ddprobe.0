Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F35520DC4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720361783; cv=none; b=bFzzkFIa8FNHoQ3OuQ9pr2ONv2AKCZ/cKxKB7bwC+4LnHcf9UUmV7OHdjABiz9c5dZ5yhPX3YcxEyBEU7RmIshq2uO1nBuWhA87N/d+JaIe9bcAcMUtuioDFZIk3xq6HmOi7jr6P979tgiYwH+ZGD7LQwaDQc6GsnhMvggJZr0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720361783; c=relaxed/simple;
	bh=+j8/rglZuUj8x7eEf77Frc4rPsaAd/kTA96cZSVgOT8=;
	h=To:Subject:From:Message-Id:Date; b=pmPFytUfBEpNUz+0KalcgVHijxeW7z9eb2vbZi8pmMVLeBo2JVugk25UdyNVJ1h92vIit5NJ1PoKsnix/62sAPEVetW8jjKWfRIfziInkqI1Top5awsNFfiV3mbiSZoTMMWHIQ4b2tECuL5zQVygPN/loC2GEY0MX7kUDMHPj0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLssxTUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLssxTUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E67C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720361782;
	bh=+j8/rglZuUj8x7eEf77Frc4rPsaAd/kTA96cZSVgOT8=;
	h=To:Subject:From:Date:From;
	b=rLssxTUIEj8/jgOZhqv5L6yO6RkR9DYph8THI+WXBWIPOaHxFXQHqvisSueG4JtZA
	 QpGc+TCLoYuKu8y0CTUGpxS6/W6p398cZit/wYSLHzf71bf+GhHn5wt7ynyvtdM5nF
	 Y8Z6rKgH4UpntUpsJ46DO2kfsOFFevDv+lJZ5MX7WNq5+bQ6CDoa/2p9Q28IzJNmND
	 dOt6vV4g5610nGWECLbd6SW6SptBRSRzqxdjLGNaORYhn11Fp31BVN/TdL6FGfIVP1
	 WTZGrDy5NOFwc4z+ZIkc2qI4AbmxVLHfiTkL+kzs3eLpSv7yH3mErrLcwiYJORl92W
	 4KXjZG82ckhkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A0DC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036178278.2125.8393700430839064438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f614e57b1db13db16f21f6089af0b15778b898227ebafb6943e11e1eb437600
Date: Sun, 07 Jul 2024 14:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720361782
