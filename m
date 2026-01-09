Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055EF2D47E9
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767944034; cv=none; b=DHS6TPFO87smhn9mueVTNcnyubXqNI3AUMI88UiEpgyMfaS9qILmafT3prtp3zp8CxhA4fuSOBIEvfyQTnT9ysDWEzyen+if+zJ90grVrWnYXOCMelCJ3PbVvnmlyX9ghVo2uaH0AhLkDNucgzLHsAwt/D7YR89vFEx0mxmCrYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767944034; c=relaxed/simple;
	bh=PXXwG8rNqfvK8fK+JRJwSpCzJLiFLxaie7qzosRRIRY=;
	h=To:Subject:From:Message-Id:Date; b=iurB9DVntuwAFCyaHulnxb9L9JeKsmaQy7hagU9r0kNGaQh7eIweZFq504h5zwxGW2QMpx2zxawflDdwb3zZIEj5xKRQ91OnHoKpupP++mOuoaQGoR0ZLxn2H6dSBD31n3gXCrwjXMJ+t3dNJ3EhCfKB8Hazh+6mCWrwSbDAdfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c64LfCFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c64LfCFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF3FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767944033;
	bh=PXXwG8rNqfvK8fK+JRJwSpCzJLiFLxaie7qzosRRIRY=;
	h=To:Subject:From:Date:From;
	b=c64LfCFzUqxCXLRgrl3W1m/0d3dQgovThfunc69T6U7Rnqlo6wpOcYNZvjGi9nZuo
	 uRhZEpZr0PHKcVclybDZRJBbg7E5T4z2WXVPBaireN7dF3EiD/9JJv25ZOauyQzLkM
	 mNCzD1ic9fSj3Bb9M1q8zygg8PKnQeLgyjUB+UjOOGsstertmYQ7/Gw23kvdKVRW4G
	 93QIQuhekcyo7ipf/XY/0cEc9G3YbL041G/2eGBJUZ+StEvuXrRRGhfoM0aeJYQP9X
	 O16Yb5JtSPEOTKT4uzY/ydKK/Y0lV/0x3qiT1HNyH/ucUO+xcnY9TJ5OkXap0IpHD/
	 nJI/CUz/vl0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5CD232E9
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794403357.6144.15756636142823955422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7811460274899b106321d1c0ab57258b2641b436db914dc43b2340d0c3b98b06
Date: Fri, 09 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767944033
