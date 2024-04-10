Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70CB1E877
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712783297; cv=none; b=NjeMxnr/3E7Q21qntnbOkoe5+D/mLrOO2QgtF9E1s3UYV9ai52QvwCwZK79yKQAuMS/Hny11Z4VGrtTB7F4yHUwTafiPiXkeAhScPSaWHXQger+fzSA9VI2md2E/FyzU8wh4P0CT2Mu5CKL0hQJGKs3JTT3099jWhOJi/yuZl/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712783297; c=relaxed/simple;
	bh=T6t3xH2FqShDWwImRRxB9aePd7c/uJJg5iUzyUU8lvs=;
	h=To:Subject:From:Message-Id:Date; b=jN3oTG4iBIEEQOibm9NXloYVxH3EfTF//x8fFdMqEdahTqLaLry72DSmVB0q2d9riOefZv3U+eqDkDrKkLuMr0cCHYVFhGzkpkUtc5V6vDYKH3GSjnuGF/I7reOfMgui2DMH4ladNQYX38KuNB1O0T6WOIICgv3AG1YcslI16Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYhAPxPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYhAPxPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB48C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712783296;
	bh=T6t3xH2FqShDWwImRRxB9aePd7c/uJJg5iUzyUU8lvs=;
	h=To:Subject:From:Date:From;
	b=hYhAPxPe9468zaY4n4aTVkElI97ihwHlBaYlMH5mMWkF7OPpHneICiFTPOWxNoJlA
	 ELCaQ8e2Cb8Ow5L+dKLSX2CovSfoN8F+02baXwrnvd6PvZeoKBC9t0E1lH6AoPveC2
	 ARLSWhLl7Mu6wAKYyYEYCljO6/ygdu+vOGDiZzKqNjU7EWZufHfZmlP3hY3dru8yo2
	 GmUvfHfCLVwaV3W0CxvL4Fnk6hXgBLuIGNM7tv+V+TCpRzHlmk87dzXwzZqFlkU+OL
	 Dr3umDzU6pf1zOPRv/1olF5wPCFwVzI5vrnUoHwiVNPThCU6VVQyopst32eY4tDkna
	 5Buj1Ptczufbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A1BBCD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278329642.6328.1579574012316860572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899df4e0f1f32b39256b250b1c242c4c2aae13a33b2b43ab57337823e7b73a78
Date: Wed, 10 Apr 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712783296
