Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5878D16C684
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743481794; cv=none; b=MT90BDEgL3DEEoYy+iBbJaKGdxcMcgXvSkX4njTpF7bR2tuoucOSWbqP1UR7K7DKAtLfETU/l185HVVerofRTnQvF0qzV1U8ZsHDd6oRlsio1FlFYRRNkVTFHYjG062rjLgao1ElSWlhoHoMGADjftJjuRedZLZnOf1+E39LcTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743481794; c=relaxed/simple;
	bh=MEetqprzbp2cPPgSFa8KMXaJKhLWtz3vqznO5cd3gZ4=;
	h=To:Subject:From:Message-Id:Date; b=l8I86WmsJKX6+tr5dmFfJv4EsZrMp5yT5SYynvmt6C4Wn8V09HPFHRS3Im26QTc6zglVFWjctJsKzahPqsjjAGVhPIdeMY6ps+euC263Z01oHYlOSXifq/esSqbBGHlMw+Igs5O6ZNiSQdPt65vDYxQ7mY02B4e3Hq/ZZ3kuc7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpP6ljNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpP6ljNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9DDC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743481793;
	bh=MEetqprzbp2cPPgSFa8KMXaJKhLWtz3vqznO5cd3gZ4=;
	h=To:Subject:From:Date:From;
	b=VpP6ljNxrh042wSqBvFMuNQtwo6Gbkoi8xo7o6YyOUSY2+cYvJb1VqJeXS4MNFRnD
	 ZKap8txdyBqEiuEv8vp9BEg6HIX6K7p1th9RiRk68Jx4YVNhJi0UtZdM0BtrRjhErY
	 YqOT6S+HvoddUOBwHOcRuWt5MomzjlP+vIv1ZxnAsIlhg27KhyMBBuDwP4VP2G6dYc
	 yKZxwvej2XfE8Qy5J39YCChj3en45ZOfftjjI5B9BxQxjYcaQP5o+6vTDH3KLE1Qm8
	 lP9fKzlHYVq+giGHQMBTux124dPYllIwPOMahxPeYbuBLAlBjHj6G3OEMXNwh04Bm1
	 Pltx/tDdoIvcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A214DC36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348179365.25844.3546444526021173701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c2a83adf23480495f9eeffbd87644afa44a9e2391c860175e00e42135e16ff
Date: Tue, 01 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743481793
