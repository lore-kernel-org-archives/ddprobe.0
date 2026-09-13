Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CC71E5B9F
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789318834; cv=none; b=Dp8Gr+zlFXxmorZey4yN6RHg/FTRoCgcr570sPXzeT2rYk3ZBvCw1k2D/uEdRDimcAb6gkvIo5BCB0MMYk6XeZxEfMkmibCCbHSFUeU+9VKPHztRwejvcXJKlKBrbZAqsQ/KBWzjO9PXvNUkxMSllpulyYgKGRSZ8pd0oQIUDoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789318834; c=relaxed/simple;
	bh=qBh7HGWemzNXjFVNSzAluDN//eN9GCn5g5jgFz7p0/M=;
	h=To:Subject:From:Message-Id:Date; b=qG3sD3RFFPwg/PLGHkWzYRNq2Xb2FMnt03Xm4N2nfO1qOHjxsrnUUWmmm0p8X1SQ2NU8R4RVIIrq6QMZzRhaMIis97D0pa0GyDEwL67VJOVHO/mEOqhJ8DhpprEfZwiSUyPEvNgCm2/LHeZlNaCuLLtjlbFYuZFICygWHfpO+e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecbWrr5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecbWrr5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EEEC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789318833;
	bh=qBh7HGWemzNXjFVNSzAluDN//eN9GCn5g5jgFz7p0/M=;
	h=To:Subject:From:Date:From;
	b=ecbWrr5ZHyWsHel+PkrXxTrzSlonj+MSdNGFVoZ8D7vTLug8leTUrCZpckimYliXa
	 wv9NRYLaUds7L1JvGpatxw7LTd5y4mTMxel1k9heig9NGICHFo9hsa1D8xwB9OAF2t
	 /3smSJylO9g5VB87QepigjsirdpaUSo0ANJa4AxYsQq6OO/HmCa3x8Jf2IqvHlXY7W
	 2E4xEpAEdm4BbFJpcOFaL7pgJwJDDfAaGXQI9f20xatzuogRj4kROsXqbHjPDva1k1
	 ERt09SlrzG+DbN8ZOJZgSKSAkI4zgKnFO47Y6gc1q3FX98J/rZC15Br64iPHEYv5f8
	 rb5TqRqBB3fMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA7DC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931883368.22601.17756453309463489857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8943d6f0ecaaeb449c45e69981b6a4e4b2eabd7c0c045b5a50ed7c45ee46ff62
Date: Sun, 13 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789318833
