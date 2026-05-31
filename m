Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BA0194C96
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780218274; cv=none; b=WjVroLUAh5b6ABUozTtdsl+mHVwIhlQUeiuZQZAP08T/tsb/wf0NXa+L5bNFH2sTQ0+0rJ18uMaSqKHak0JqFluNrBnN2K6Z4pC0xdUPq8uMnEJJOJsDJf6lCDozI5JIoLu0cajlcTl6s6GamT9sdlHKgaHYYx/ly17oZ4Z6isU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780218274; c=relaxed/simple;
	bh=ZFFhGUQ6sDNfrLW1zn58poTOSKYSQFEpNIHJ1vt4XoU=;
	h=To:Subject:From:Message-Id:Date; b=lCVUSsTaTyBQN5fJPfqEKqgNdA7nJEHsfp7p6Ufq85j23GaFStR/Gztkr/eYemkt66UuQczWFXoCoTc2i0QTUYPZfKnDeOnaUUsSYyO3ewxXjazKGBbX6+ULwSiLLanJVd/gWNQ95OnjhGJ0rOBZWMavb8wNNzNgjz/j+j08W5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjMTV4SZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjMTV4SZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF978C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780218273;
	bh=ZFFhGUQ6sDNfrLW1zn58poTOSKYSQFEpNIHJ1vt4XoU=;
	h=To:Subject:From:Date:From;
	b=NjMTV4SZojLwzzkqyLRsxVS3EEdH8jENOWiIczn37zfUF69OgvYVHTP+yIo2QgQRf
	 KdnidzrYAqMrnVD3i4EkC3ndUz29hnsJS2R0WD3xPOJSgOzWkvte539E3TTtaVDqcJ
	 Af2//7688mXH2QyJ7nK+puiErN6tXO4DVec5vcGl4ZZLlinBo/dzlUo3S59L2f8gdE
	 d0M1qsabaYs2rwMfThd+NYfQhIqK/iq/BwlJU0LDKaNRuODRlBvXfJEENqy6A9TRAi
	 P5F/4HZqEzCtyG69MO0bQyKK2ccq723uCKU1XZIatXGLF62GYCuraHcuntkWuyy9mb
	 zKHhz5QJroGRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B232DCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021827369.31350.2780673898248852698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9619dee975a775c5de30b44c13c9f3ac6b72312ae3c7b2adc9bc2f74a60ee99
Date: Sun, 31 May 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780218273
