Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CB851DDE7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791912034; cv=none; b=g+5QQvj8SXpjv/UrbAspKz4rIc4lLodJL2CdZ9gxGk2t+75O17W4aXDRWU4hR+YbvysABKqa5xMO9audud0zcValkwPAM56zohXIKBOOZQD6OTLh0q2ENW3KvKxVUY6c1I1bzTYlejVBMVoYwpNQ5I+wOeXPBJ2M1ECtVs+Mdkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791912034; c=relaxed/simple;
	bh=TIfG7F5sZVmuBw6oWz3+faG74/7AP8jV+psSBOlJg2g=;
	h=To:Subject:From:Message-Id:Date; b=oVwtXtIcWzHsgPnkIm4yr8usvylDnbEtPxiEjm90oPqw9m+aowIko1CtIzBrnsiBNDdqFAmSuCxbypen3rGmow5BZaX/wdtaZLPDVNdXfV2loX3u0KemQDnFcvcngCiJ82TqRYBi1+AgTsYmSPoVALeGxBRjvDML3Pb1QQvTClU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkecSIMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkecSIMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DD4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791912033;
	bh=TIfG7F5sZVmuBw6oWz3+faG74/7AP8jV+psSBOlJg2g=;
	h=To:Subject:From:Date:From;
	b=YkecSIMlYbeEPLHgnJmgu6vTowlgQehOEj+aCAbnkjmp9J1uf5hUZkcur6xhrE+2j
	 AUVf2Fd82cLLezIj8wFrMcCzRYuZP889c84MKB/Ccn8gJVoohmrG9+REhMWlbrguPW
	 pcyDdtWiw2PQczQNezoJfsto2QSS3PeafbuTbR7SmHfPE4Y3c+dKimv4tXMzfKIFNh
	 AmOD/GZoPrpc7WN2Ssrs1wb6gA7eE8T/xyadkVOVeRfErErCMKK2ZoSND6PPqrv9J/
	 OiUMWT/xjbdAyjmXj+NC2smq5rEyeHosKX954APWJbF+uLmean/aPmL4dEHfOCqaVO
	 vgNnkWBDx0tFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1521CC6B19
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191203370.24975.11920764700970524940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98c6edef094684021749e80f98857d20e2ec79c54929e69deecfaa34960ca13
Date: Tue, 13 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791912033
