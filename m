Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE2E28BAA5
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749596394; cv=none; b=MXKdjjJkgtaKw2Wp9nVehj8vyfyh3OfPJCerK14OW8JK6P+Wg4OzC05ZTi9LRUhQVx3KyPkD2Q3EGYP2uxbBdlFOygd3YymxqVq2DT503iSsXavJeSfaheo5qAqp+MDOj4RodJDk0f3MGTS4G0fyG19vli1HOlzDHA+kh+6AcgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749596394; c=relaxed/simple;
	bh=8cIztwi1s4q2hm4T4URp3gRWu9BxfWawPRkA+N2EQNM=;
	h=To:Subject:From:Message-Id:Date; b=XQPW3aZBkIGXM/0qUAxZaDw6TYCd/7R8B4SDcaLWinw1h1819DPBm/LnPlUmKAEIV0CbLE5n/kSqiN49wWz7wlhDA2VKCd0ikGrduj1tR8ZtOLn4hqjd7z61Zv49zfyDaNsggrJDHDaBEDVDrTTCfDUNzXSeOvn9W4n41nlCnoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E47SdJY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E47SdJY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE0AC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749596393;
	bh=8cIztwi1s4q2hm4T4URp3gRWu9BxfWawPRkA+N2EQNM=;
	h=To:Subject:From:Date:From;
	b=E47SdJY93IZjY+DMfmDuKuiz5GcMYhncPMfWXkZWSgK1mpOJhGYPtIWcbXIe4QGkI
	 fZGXJjmJa1cz/mqCM8JjgLOqoHLpvWlfqmalQrp05tVgPhJmB7n4tLKuwhZiqCTSBs
	 zYbtxIiw8m+rsA0NAEcodu8DGfo6sCCUjt+xCEVuPclEMHPqgMTfuVMA1Pa4sR9X1S
	 3UOQTHdof+NmpL3ZwT6HuOjqZXuIq0Av4/U/HXTNtDvGacaHZumLz9wIiAdnTYGdKA
	 M6v8p7QnlZT68mNExfpvRI3oMINhQ9bEJxqsGgRyWsJt54PJ3/hgPjFdGFUJ+hEO/D
	 RCyUJfpfNXaXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955EBC61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959639358.26138.11443103949937431871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52a2be82b01292b41f356e57b1d9c3fb8a1944df4efcb8aa922c4baa3c16144
Date: Tue, 10 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749596393
