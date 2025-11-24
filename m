Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC772FCBEA
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763983914; cv=none; b=Lk7oQOZuNtnxcQDRMTWmqzK3Y/toJwa/h/prkpv/5hWnpm5JJH4wuYUfU9uXdd5aogE8lGb5mbVzmVh7Roa3Xjlc3aPkHNXZIK1oME9cE8BkR0lxI936Wb7J7LZuE6lxtpd/Qp+wsPjjLoDAua/ZxqutKJl0v/v/B/NIf/7BMgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763983914; c=relaxed/simple;
	bh=kjSCj+A6Lq6XDNFrRhp16qSJ0uRp5qpHkhjd7ZakJtc=;
	h=To:Subject:From:Message-Id:Date; b=ezOCsMNzLviUJRogRfCCKMuWqD3KnQoWU91YTuvhhLnLCCOXDP+WcHtUFQnz3b1At3oDgJNl3TCmHFXkBZW9we1TSBY24hSBFeAJoyv5SSPC+0etY+MNT0E+IrdSh9glTtBn+lSIhn/R+8kpRCufAsNfrc6+Mrxdo7AigarAQHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtJWeBGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtJWeBGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE70DC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763983913;
	bh=kjSCj+A6Lq6XDNFrRhp16qSJ0uRp5qpHkhjd7ZakJtc=;
	h=To:Subject:From:Date:From;
	b=RtJWeBGIZI+DeJASpX2sVi4RjxAmCwRgTwlikvILrcxH8pogTMCk0pcuIEQZgMvla
	 FKL4kWBBCHlsq4MYs9GWct1DuARpMw2zFZ0PFBJ1iwhJA4yzTd6mk5Ir02kdYkn5Ju
	 FZ7F9mQuy1/QiSnSf8Ssii3J6j/T77GSFso/IfHjbxKymbu3Lpr3U3TloX1Bo2Us8l
	 s87/ZsAvR8iNpqaeeCuw5cV64qCqpsI3+UZBBdHg5T6Bw1fOjc004EGU5rtNrJte2D
	 72P/uxFoHl8ZNXmdrWXx3xseV9fAffwhNw+hPpjIYF44BIYefxLOgkbvyW+dvNnJFK
	 jVRJIlEvscYZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A42CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398391358.7915.15503843229023296732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 187457eea0e77885744a651a08c783ae09d035325fb5ef39815f92f823108b45
Date: Mon, 24 Nov 2025 11:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763983913
