Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0129928F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740814734; cv=none; b=eb1K2Cp14palCj+v1wBQxr9ms9irUF2yeItyeSyDlODj8brm9pU2e99umhtOkZNlL1v0Riu9fI8hGwka0HMUdCRwqq8S+yoFU8PP7x6bGUueCwxpS/DptEFsdkt9eiOOO8mMikCkUc6k1kirVG69P4e5J1P1MnRZ9nivWKxscNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740814734; c=relaxed/simple;
	bh=o7EMv/BrrPR4mW0oPqntGFGdpd8lJvFx6J8SleQ2MM8=;
	h=To:Subject:From:Message-Id:Date; b=OCTgq/s3csqpMzGWxSQaszMJOMy2t8N4NHIyPuJ7hKNX9/QU1K0a3qjKNDYnJ8rx9UzYG7GUbVqPiLKAG/d9nX8RTKazkLLcdyH/dkmxuGlbL5mU4NA++096NG0/6fWEZJwJwmmGlo/Q4xXm7iPoLyhXLynjsnfkL/63AtdTh70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOEs8ClC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOEs8ClC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B044CC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740814733;
	bh=o7EMv/BrrPR4mW0oPqntGFGdpd8lJvFx6J8SleQ2MM8=;
	h=To:Subject:From:Date:From;
	b=EOEs8ClC/uqfc61DmbbxLSUQKPGbJA1wTga0pyS932v+4yHn9Eh6Qg0e41vob07pi
	 k6odPXQF6Ee1cClpbykgCRSHEuk5EqTh93tSUqJytQ0GFN68EDEP4XuA/HzeltAsSN
	 EguzKfacZg89dAHb1fp0OMIehRwMVFlvxDw1nhRY2qCjGnIOLOpYAAU8HylSLeShUF
	 ooSlUuF/06a4rMqV37gHDECdV390EM3UM1NszJpIHtkYuxYrx8Sk118jTtaeIuV6cg
	 MyftlMRw2lEQ+9ExejuoO3Bcz0cPF1skhydQl28nUVzIcfWKs9S3BuCHQVX/Rp0QhG
	 HpAQZbS85olYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A59BC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174081473361.18497.11847737804416400401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f519b68225699f4709005c38198c1765f3b6fe7e994cd106a91dffbe8c9657d
Date: Sat, 01 Mar 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740814733
