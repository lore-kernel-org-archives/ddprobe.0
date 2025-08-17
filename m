Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144DA19E82A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755474594; cv=none; b=Gnfh12lvNDgYKWdprfRwmx2CwEChu4x8jupbKO0gh5BeAcHswCPkzkFiFXBr8iWOORyDWjXrCp9R/lUcRfq3P2sNTMk+hST3J7Ihogmrz8ce07KAhkcDg7RTvWIjpQZxBTIo7JFKTLEemyzWznVu3sdGcq7F53UKYI3klHkxEZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755474594; c=relaxed/simple;
	bh=qxps5YGB2DvdYYXqrVVzrCp+NktQqPA88PeJ0dpRvhU=;
	h=To:Subject:From:Message-Id:Date; b=DpsAG2PqTFm1qWt6BOLq9Z+c3ee/oSZrKUNP4vaikZbSKGwxRQ3hVwAEKzfI3o88XIpn/RcUUhQUwG78qMmxvlCmug6WNJ1Z6k4jtjd1Cj6hv6vd7ujEsVaNl3YoZ+aTQY68tIuWBH8ifdx1B//n8WccPqXfSj02VL2I1LvLKXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkyeZ7tL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkyeZ7tL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755474593;
	bh=qxps5YGB2DvdYYXqrVVzrCp+NktQqPA88PeJ0dpRvhU=;
	h=To:Subject:From:Date:From;
	b=AkyeZ7tLcO3nRC48gsW05HHJCzcYdiSWhxqjv1YJ629PrXWCVXvc0GbscguIx0mKT
	 XvzhvUIOXlKP84amkD4uNZp4mndaI0gv2ImDQfhRgL/u1Jm+OofrkqCT22CVU1/EO0
	 d/5G749Z7qLuZyk+YPAaB8P8akZWgTR7JdnOOLjBuY1gq01HyqAPdEWXF/rZ23+7DI
	 t4A/hiA0URQGnYQYXcBkQFzfZ8KWZvSn/ZOlPWuPnYIpNh+c7a95ayPbzmz2R83BBi
	 pazIsOXwkuZpvEXPGYChTfbzs1I2zauAKvBQmnG2zYPh1z+ks6EBXMKHD/0aS1tRvM
	 PmdoLtoKBM0yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D9CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547459358.26491.5168219299353547257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1605033ac33f3057613c2a7ae5fb531c555c1f274636e00bd52a0cdf2dfd1c6
Date: Sun, 17 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755474593
