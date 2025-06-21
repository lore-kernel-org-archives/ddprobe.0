Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F741B0F0A
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750544394; cv=none; b=ZN/92jEEfm/EbJigp6HjD3/qwi1qdLYuphB2GdVplUldTLdY0xl44O++Al7sIXPQd5nZb0gwdsTwR92nTw+OBfSN+mtG4ImJgie2g8XnHFO4yLfXwWiEYumNWZZwEFF2Mzd/sJhaDqqxFE7dty9XD5IChDBU7Q/AePkd/9WYx1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750544394; c=relaxed/simple;
	bh=lHWci21cfO5xqaDkn8klg8251kh3FSoHwhG5FQM2oKk=;
	h=To:Subject:From:Message-Id:Date; b=OnZqCMT6ewya1mtBJv8TSCifGJbbWMpVPpls6CV0U8L2I+r6sQu3K/YbD7bZY89l1OcWoy9DKeWe0qPGCvvg/eP9JDXA8aY8lJoL/IyRyFIx/O3Kdt9F3JgFgKH7A21sga37Y3BXZA4LBlqhsgyYsfHAaoZlp25O5qDWaNMwq8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzMwtxRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzMwtxRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750544393;
	bh=lHWci21cfO5xqaDkn8klg8251kh3FSoHwhG5FQM2oKk=;
	h=To:Subject:From:Date:From;
	b=FzMwtxRfRJc2Dkn/gINcbRO+lv3NBk52D4PB3k2gGZgh+jo1SBMtdE7O7s9wl2S4A
	 /N+7K8A6BXSBC4lw1jrDCW9CiJrAaMY5nS8eoARDasbpN+HR1cfzIpPdijYyWs3qdZ
	 iXUWXzmyUignYB5ycTUgO/M1jKKuW1RklYRXFCqCqqQCqySeK7c0X8HzWTT/FUQHvO
	 k5jkMdGseFgknJhBQldlZN3VIkVDdy1Gub/fByfaP8wtobaFsOHhNu/PDj4dKLPDzC
	 /ru8REz/1u6SkxV3tH4BDpMO/4La4f6TzcvEA5TjKHGcbOENPEDqwYNQB0UsTkRUP7
	 7bv2hALu0H1Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91716C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054439357.14697.15983269825528442656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c1ea36fdd3f6d241c28a56821a1a17a9457c22be5652bb33bc507953a50117
Date: Sat, 21 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750544393
