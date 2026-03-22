Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E06E35F162
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774202694; cv=none; b=W2dx1fYQkbguq0DBzaGVENKoRWNypP5z5Og5cvA3WAfA9boMvBU8FMDnE+Jq/dpVUm4OHFBbwN9oyY41+6lx9YJLw/ZxPGfmp+9staUIx8HuYdj8GWCg2n5jCqACpb4Mt3+euMAGbEDitoNZJV0DYrrW1spceNEP1kDDpaTeU3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774202694; c=relaxed/simple;
	bh=Yt6AHKO6EaHlsBG5r3PwSp38Z6Qv0SzHXYRuxAMwqek=;
	h=To:Subject:From:Message-Id:Date; b=th03L/fQX6IAfDe5nvQOAGhg6rtNr3tl6torHO7S9ra8ubc46i3BFHwuFxKsNGAHfN3ijzBw9UjEGgbAbX4Rgzu68spfHDCH4C5pFmx5lPAzqvryEIkTBivk4gc7vi4ExJjPErCHnNUzYDwknHWqAym5gpceQj7BoF0cwcMu/PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmEaLwXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmEaLwXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F57C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774202693;
	bh=Yt6AHKO6EaHlsBG5r3PwSp38Z6Qv0SzHXYRuxAMwqek=;
	h=To:Subject:From:Date:From;
	b=XmEaLwXP/NRf+iw3Kxq3GowMeNgYeSyuWHX22P510XjuSq7VekbcthIEaebQ+Vt9H
	 Ylvgym5JAXPM2k4nvJcDLfuw9rKhkMryFs4Djty+G3aRRFnYFeijLp6Qa/GBZVT9Vo
	 4UszQIlTabNs9I+cejG0+208uR4dKxF9SaDN+/JDu8Zif1UhshQkZrcs8dAwzHu5OE
	 Kwp3xpta7al8R3rifneQbrrSZZQqIvktPhgz87Ixt1BtHhoHJl+Lye5KiAfEuzWW/E
	 Q0THphAAsJhcvl+RFjOLlRkfSPAkJ9og3i1eTwn2qc+46Cy7+EFRfJ5ZfIlB2GUOon
	 e3nx4ueR0gc5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2667FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420269363.4400.12976478524533270050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a368dd69fa73a70ed788c46858fb2790d983403fb6079898cf4e4230b61c6ca
Date: Sun, 22 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774202693
