Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B35438887C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778595034; cv=none; b=a5Zt46PR8KRED3J4ZReCTTsj1t6tW9XChNgQfU7H1nq2AOLGG/QBK0JfBX9G3g8AY5zLlDgua8EmKRCd2yftwVt1DqdJZOo7hkE0x5fzhBR3YOvhxZVGWMU8MaR0XyJlSMbWlVZpXZ+XH/T7S5Ws2alqXeBVuPrFctKa+tyf4R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778595034; c=relaxed/simple;
	bh=69vctzG76dAni2PySn7wUSBUmpGqr2d4dfBxlSLHkFQ=;
	h=To:Subject:From:Message-Id:Date; b=rX+oLUoa1gyqVil3OSsc/SavqU0s6wdOF6PuQHqBC4gfoMzRi4kW3QGj4ZZc37EGVxHansVVEOeYSPxUEgIj/FKenZyWYT0jttLg8U1SN9WGnvuj7GeFH9P3ALrN64jGepNdsS5iDcEJyVIbXqR3LCbPAVlA7bEZXhos16d9TQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xi4PRr3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xi4PRr3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81DEC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778595033;
	bh=69vctzG76dAni2PySn7wUSBUmpGqr2d4dfBxlSLHkFQ=;
	h=To:Subject:From:Date:From;
	b=Xi4PRr3bW2zzRG3tYgKDtipNlUVkE5KTejRUIAu2fsneLBYsvaZB0EJxITkSGh5Cv
	 I9g9ogFmj9mnjQyyd1vrVriXIFzsSzy26c0sYIVQQF7U1f6Cwk2nmT8CDAamr2vBOB
	 pbaR61S/TU9Hd2GJX/wwNky6vzk6jQjN+HACEH5q+U2x1uEEGjIa8UBUaXkZTsOYgC
	 vorcVHNn+3AcaAEngWTzsctIrV5XOR020A58fP5g1A6Lgqyz6FXuwX1uMuregLZRmy
	 G1sSEJFKB29OgMD2CMTMRVWUqW9FC2AHEX8TTRN38xEq8nXs0aZTpdZ3r9OVHGXyHq
	 f6v6mj0Y3HDjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA63CCD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859503368.14654.9749788502490019770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f149f054b5776b497252928bf70f8cc96e9ec2aaa3d1a1d8d76e484d903c0c1
Date: Tue, 12 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778595033
