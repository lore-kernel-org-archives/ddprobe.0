Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B6922127B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765587174; cv=none; b=TM0sjNHgaJHXa9tA3/5jYyODAHNzCtOPdDgUgGtTxZzgEBbQvfVpz/AjEbgAEGP6krhGr/C9noc873w53yy04Fl0f0qoejgu6W5GY3P8Uo8L7ZfaPHhQc3bYBY7hmEVNKSejxjjBtGdezEoUnvia7WAYzpe4PSKhHkAnX1N0I50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765587174; c=relaxed/simple;
	bh=5LA5oPfncMwbi1BgD2qWpQvK33lXHxTWfTDYaIfKTKI=;
	h=To:Subject:From:Message-Id:Date; b=HvOy/ji7AimKUo5uLQgGJ6q1RHANRsBvW4MFWqcx74oDHNHpYxOuLwDKNpFqpcEUsEEjhuDCdH1RgWa+wYSqSs9KBxWcvoh5Aehz9TQC9jTEjGgRbUXZhypx8yTMv5m4PNfLVR+LD7awOjVa8++4+Kp8+0b9JkGkhKmvpBd87JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI5IHZZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI5IHZZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD01C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765587173;
	bh=5LA5oPfncMwbi1BgD2qWpQvK33lXHxTWfTDYaIfKTKI=;
	h=To:Subject:From:Date:From;
	b=iI5IHZZInhxs1HS5UZkAKWGWZO3zjfD0Sn1NRRIc8coZ4TvR3mMU+pWjImOyUd7lr
	 QitW6gHVF1eDqWLhy9ulDNxAaEsEdRmAufEVcdiXq5OE3Yylo2pPKp1fhEpZQ3qqvV
	 wbb9TMjqh6+f3rRiUT8WqzY6Nlw24xPaUC9RGpFgmSSobnEvbUQnrZDEYzd9dpTJ9A
	 z8NrQiPYjiVINEBGPy/kETYYdLMvYIMlTGcL8VpZUb2fjg+cKuFny6GmljcdBc6R7h
	 sDuVMqB5VLrfWY3R3ipPU1pHUXOzUPN9J2pSSa3YoYzBP97ZiB7PtzelwxGRHEoo2g
	 LEF7z/M97K58w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99767D59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558717359.25090.5328064080043898582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fe0a67d382b5b669855460f79aa031c622a762f8fae2dfb8fa4e3f69071d25
Date: Sat, 13 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765587173
