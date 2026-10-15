Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BEB530E14
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792077034; cv=none; b=kGSsU1GNDEa7s+73id7YZj5OO6Pz2i7PHTQbJ7rXqLUUD1hblE5aQLhY+tbYFsCfXVp5vert8ff8B8sEGgSAaYknlRfj6nejGIiHSyg58jFbtSZItBoWdpj9kCeK1ek+32D3XVDvgMValpozlNqkv2wPtW5saZXeR1NScbtYpr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792077034; c=relaxed/simple;
	bh=I0pEgdQlSfuk97uQkwXZkEc+VU8qrV4fFJ4ve3yagsY=;
	h=To:Subject:From:Message-Id:Date; b=uyR5zxsgMHiIA19O64077Gg8RkfLkZuxDhY5U+37XeqwJ0JeBRK1iirZYV8W1hQIh5YyweKG0aoF4RWwZ6GgHMt5n4FHNhTRjdCGFDOXNhTrgNaa5mkt0BjSZeUX2UHSi3opHjDV8JQwz0G6DSa26bCwNfZuluTe3l5dq+CU8V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBNIg1L1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBNIg1L1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9752C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792077033;
	bh=I0pEgdQlSfuk97uQkwXZkEc+VU8qrV4fFJ4ve3yagsY=;
	h=To:Subject:From:Date:From;
	b=kBNIg1L1jZ9GasDxvgXZYwxCHPF1GZuyaVxBFH/C+96wGxU9n26Ga8reTB7uehrbV
	 CyC62DesWDjw0k5lmWQmPogvyTffZ24Pbz4Rg1cRqa8npbUh2EYJmb1bT/jVlnEYni
	 lYNTkU7bed27xEXpbV+Y7z3WbQOGudj5rwVfDIkxk9BOoy9B/IzYJiVlaiopd5rpK1
	 w7KARgkI72a06Nx+dNLD5Okq4auDAzYsY2Tty9XrZ/RDIzR9Q8IG8gr+X5Oab6Dtt1
	 BMsPMGRriWWsIZ3cZa3T4hJVlG2mfjzcOv1SEz9vCoX4R7tzasJB4yFWcP1YDPcYBa
	 uDyc8ygCZylVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5936CCA465
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207703373.15840.5752336745137810103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6dbde3a743046bb9593f4e88cb1eca77129a972331bc4ab21392e2c2b73a8d
Date: Thu, 15 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792077033
