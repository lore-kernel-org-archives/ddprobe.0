Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5923526F2A0
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787734834; cv=none; b=LdDXwhGOOgOYylyvrtablNTbXI/i9hVKeaBX4tHULIWakBbZ9hFrgZB/i55CepfjevL6HjGRljRAF/6dgGBOEnEdD9NCF48XWR55N/HYSFRKcuUVawC3ybku0Qrf5n68weYsehc4cEr8m2Tt7noj6EkNzZxE4IZzuZueg4oH8s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787734834; c=relaxed/simple;
	bh=QVbgMXQLgjUW6zkhv0NE8fi87uJmVyUGiVFa7UaRNQ0=;
	h=To:Subject:From:Message-Id:Date; b=tZ/ufxZb7vLoJ2yKRJJWrLDGKwowOpuZdvaYBVlPKlhwQ9VW+5RPgiSraBiXytNrK1k+oPZYD3sNsanTNX84WAF+amF4wllJYdzB8lsMC0/NE0M6AYvTtA6YTDxoQcN1IPGpQ5ftcFPnsG2kSTXIBhyiRMZAsBZQKk/rVAR9S1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRnAOVNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRnAOVNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2E6C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787734833;
	bh=QVbgMXQLgjUW6zkhv0NE8fi87uJmVyUGiVFa7UaRNQ0=;
	h=To:Subject:From:Date:From;
	b=mRnAOVNfMC67unpl0MVfJYGF9IR/Ewjwt320soh2AyXFGVOosrmPKv5zNdGCHE2no
	 IZd+acndLpP9vZ2zoaZ7X0Jk51ho5vBwDgkXh/pPZy3TS+a642XosWma2uBaZMNmc3
	 b74zIZWirURfL9HJZl/P3mfEN0u7eZ3oaAMp2lmMNSwQzI3Ac4JLkKIHi3CvKuQbVW
	 N9y3xvRA0Q4aBu82ZcmqOV7E9KyoNiLP+fggWeuqPGJjmoc7cJ1mqzURlveA8bggTn
	 jdf28jaofCzPYDigdNZor10fKG9+dIp2OJwuyRiNSgEpcZz5WGbpUdYlu/6NcuU6QE
	 voZQXOlUlkReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF04C61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773483369.2731.4292745051443989839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e6921aebbecd7baad4e07bdb4f68d63fc8be9aa40fd486a1121b494ce478e4
Date: Wed, 26 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787734833
