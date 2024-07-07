Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A74D4C74
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720329983; cv=none; b=eus4IlcgTrFYTckrP7yRym7SDFzZXGaIc8bSZ5i6JCx1DH7DphnTjqkOAmLwmdzmirGGu30SvRckb9oNop6mwrCR47bgBwvoO7wXvG6Mz77CaOGzua9yj1XdDyUgGMNW9B9EH03BgswWfQb6cNCCb5LEHoApXhvqBDKAeM47C34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720329983; c=relaxed/simple;
	bh=D1Lo6h5b5GyPuOmIDrp6JG8/93APV6D+5IiYtlfnHq0=;
	h=To:Subject:From:Message-Id:Date; b=D45SrVkValAcYB3zuVQUFASsBLtha4x87nRVOsVTagOzbx9eJpsNC/ABAc1MwTo2q8SM1IYgActQdH7xxYDe8ScRrG6+eDloa3aa6EJYSHzFjHX4tzKUHExjXe8V8JGoNZIEKJes33aTRevqfmBh8B7x20oHAQF36dN8+Z995OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLQVVIoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLQVVIoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9135C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720329982;
	bh=D1Lo6h5b5GyPuOmIDrp6JG8/93APV6D+5IiYtlfnHq0=;
	h=To:Subject:From:Date:From;
	b=tLQVVIoOpQU6HfbCHAczpfaJbujir4cwoaJa/ZlQIadiB7TYsV+7tzY9Sn83oJbCW
	 x+I0BwJ3uxdiN73GZtO4+6LeuERE57br6sMkdjNvrdYhpnofG5Lh3Vb+aDPwvCOL8A
	 1UjTLK9/YZIqz81luR/2c9Zem9P4ajMLfSjxx+Mn7yYc6YITWWBUNuzNbtp1i0PoYW
	 UNTp96AZcmvlnmUDYT145G+Wee5yCXa6d1FqF+xnbP/e10tidLV34aT8ALnBmpE2m8
	 QptZ321SGdb6myAfljPaOFmsZy3HmVcWiGgEkl3Hv34LgL4KGpXbDNC8pcSU5PwuTn
	 fPSpvfxfD1G4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C334CC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032998276.10393.2879363751847100845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6dce48a7cb3da4f6949c9a3552058ff777bb4f92c9967ce167d2d1d33c79bee
Date: Sun, 07 Jul 2024 05:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720329982
