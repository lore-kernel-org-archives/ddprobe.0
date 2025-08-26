Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249E01F0E50
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756167594; cv=none; b=gYB3R1s9illakKL0BNb5I9S8jY94yaNavxadgrRed5276tZatVbKmzAyWBIdqkbymyzCP7hh4nQTWd/6nkEcLepGiaNYgDv3IsfBrkfb9s7x6be4AIx+5JDmLeXHd6hvNrXQ0NgI5K0cO27o6EEL74uzjKObcXWCNaHh2V3Hw7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756167594; c=relaxed/simple;
	bh=HqLQF96wDhn1mx+i2eKWb465abjHm7DMJj7f2d8ya0w=;
	h=To:Subject:From:Message-Id:Date; b=Jm/w3kb/wlnQJyHjrV9CqQOUVqcT73bULrSexWhvmdXBXJKOfUS2qDjD6plR5fqyoMru3aY1BW6Y5s1s23mfxhciW0+AyPUm+IGar63Vk6+TJvehZupVrj8dbiBul0S5fjH8i5gvMEdLZmA/SmGkGt0O6Up7AWC8AYLeZROdaiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUNs/uTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUNs/uTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3334C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756167593;
	bh=HqLQF96wDhn1mx+i2eKWb465abjHm7DMJj7f2d8ya0w=;
	h=To:Subject:From:Date:From;
	b=jUNs/uTOlFO8MEpwxnt5pX45nwHFhtuBoPzd61GGCVKa6iNh8IVWAr6GfmbhUvluF
	 Sfua0/yk8gidND2NKgp8ZZ5grnGHxAsW2Gbq6jBigpLm8aiWYdlxw/vwEBzn+glTLO
	 9DSdoUivQq5GbeCf4f7Fr1KJR0x/GOR285BukIH9PLP6gph6ooZaz/0ODZnBL3H5Uk
	 w5tjxszKQsDTrH7wiq8MGnY6o2befQED4CB8kCiVypA3CEE5isfdPlwat9Z4QT6qLl
	 iI0p2+Z1sWfC4fgfPn7/dtQS0Pm1p6ptbqmWTy/sEX4sgPcIbNuKD2APJRqn1xGyrW
	 Lqp9fuRHAlD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA0C8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616759357.21639.15090801176838689596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4919747eb422ae495f4205c330fdc33388f52a2f0763447bbc44edf508a8e9
Date: Tue, 26 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756167593
