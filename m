Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068861D61BC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771792494; cv=none; b=lWhUzuTBgqeSFQXfcZgMdF7n8jJAEKsHf/Xqi96+mhOIIs3KCRH4v1yzOmsfAyz/AiOGlTvJG4IhrBQDeOW60O1EYSRyr7BQAaExR4Y8HVclD66XZXogd+iPwgdH37FWdWvoPrARAMnLNHUKM8g2egwzKXHKXXOqpfmlkUK/ItQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771792494; c=relaxed/simple;
	bh=LC77JBCIzWOv2f21KMg+xYir62rLCZPGpylEMNhZXyI=;
	h=To:Subject:From:Message-Id:Date; b=SUAkLsFXMpiDoDXbGv+SA3t6Vq//jUdJ4BamFZ3JxBOZeDXJeYZkTOY6nXs0YKwkfY8CYYGbZb3tU4AddNqyuUBgPuFn1t10C4jGrqveUygIorUL8MlF7JJvlpB59ppKNkz3kSZKLEcVHCleK8F+5YDOLwjcPlvuSoN92KZPcYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSFLcePF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSFLcePF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61DAC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771792493;
	bh=LC77JBCIzWOv2f21KMg+xYir62rLCZPGpylEMNhZXyI=;
	h=To:Subject:From:Date:From;
	b=VSFLcePFTPHpRi0tywPicSikPq5qu5ZxQsQ7D9kKGYWTHYkU63SJne6iJ+12Ud/zC
	 eAUDMPy7iIdlGfRLmAp02PCRrLWfsb/U0BGgGDUp+MEixJZKVIroWpxoUOxsugY5qn
	 JyEKtt5PNpa4igJE0GtcUBbj6AIsdazDa93pNpJsjm+newvo2kYxJkQgbNIEpIgG0O
	 hACyqgD9a1XKCuq777COgHWaYDP3CFMKF4cC8k/i263wR932DiS62MjgGVTdfy639v
	 3SrEEc5brRYxVTDy/qvhVb7F76no8+vM11g3cYYZVkc5zMIlxRBUnVW9bW+TsPu+NH
	 KTSdED90keVwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA4C636B6
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179249359.19497.7516967953014441095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94794059d3e4da2be44523da7f200500c7d8d98d9ced933dc69a6ac74209e900
Date: Sun, 22 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771792493
