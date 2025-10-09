Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C72277029
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760001594; cv=none; b=SEi6NftJ2hWI1K2GAWx+sx35AVUNIo5Stc8XxL4+tnAyGctFCCqXGCUbAKKJohvnMbcaEyLlxDJElSW9k2l7s1wjnzMRsAPzFPukosQmecBVcKfJHJEctcsE0LpPPpbALXwGYw1MLaUUoHlGMD3/cR8htnok6WRwlsCRlz2ztII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760001594; c=relaxed/simple;
	bh=5jSkpoUIc4gFnwRl8XTFvBUdiIih4lJQFGYQ8mu5BQ8=;
	h=To:Subject:From:Message-Id:Date; b=sD/9tHUkZfwE5rTpLf8jlr4tlR2HlU70/svleoI/SJqwrHWhep1lNHQEk3p9bLh1ORqI9j2EZjEKKDyaziD+ta+bedfN1wEZEB0VNR7M58eAdMw6vDVhyHp1OVXaLKmnW0d0x2brDirTePKYZKzl2PtU7S2IRJQiz31kQ8htRy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pysZiF1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pysZiF1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED3FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760001593;
	bh=5jSkpoUIc4gFnwRl8XTFvBUdiIih4lJQFGYQ8mu5BQ8=;
	h=To:Subject:From:Date:From;
	b=pysZiF1Q9i5lfU8Zx8nuhNmwi2sWUspHsjfTM3rfQsio9qe0v1FFQW56L2/VO8Xx3
	 bPJvWN5J55rWK+QMUttO2JxxpTewhRpL7kTEvRTywGYHbEsl4SlMonjFTS+fQJWlat
	 sIWXFZ05paXMJrK3nnAZ3F6tVJbb3KKdeBxz2l3UX/naxanj/dx3D5XvHWUY4tsIia
	 /FwksmeDmIsFCYvSzrylbTdcrAmN9+ZzdZT0L6lrma+KONgrO6Rw5h/vPfsCrKwtvB
	 U5O6csE4RBhjdwkmrbPst/Di6yBZiO4SW31sG+Rw/nk5YJnu73K3BodHl5UoRButj+
	 8ZnVYOsWh99lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A21ECCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000159362.5661.14089311063161146560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f9e35fe5461acb48b8c0dbdf6626b4ca0952dcbfcb209153131e5534ce3ef4
Date: Thu, 09 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760001593
