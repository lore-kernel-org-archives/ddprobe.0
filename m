Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26706242D87
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765209774; cv=none; b=SB2TlxlJlf9U79cQQf5I+IFYbgRf9ajylFMxqpigUG4MFrHhrOaJ6Rs/Vvdc02RR6TOd8BTq8vz8RPe1JRZENCq0ILcwo/Vev/ZD/30J9eOYAolXeCjlVHybs/tBkTNNqyADwgmSlQtccufKzSyiAHOmzEyRWrLYAkHCBCMksR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765209774; c=relaxed/simple;
	bh=0wHUUEghcZjf9wrLTWrZGaro0LO8toIZ2EU8TQn5GD4=;
	h=To:Subject:From:Message-Id:Date; b=Ti6aYGFP5FShEj80asS5qyTkLeF5IZenZoHWZqwsYGPM1YvRaqlDe7eN1c+8K+SYURSEGZyk2bd3fZy1HMCsBFza9iC4j53CLEwbCp/d5iEEnSj4G2f5TRgq/tjzMdCgEFTunSshDAqKcEeMF9Re5PfgtenUqQmvIv3SG+w3hpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeWJWqOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeWJWqOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC42DC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765209773;
	bh=0wHUUEghcZjf9wrLTWrZGaro0LO8toIZ2EU8TQn5GD4=;
	h=To:Subject:From:Date:From;
	b=NeWJWqOTCT4Vgl4nVJd2qQL4Il0DByBzF6NaZWZxtH/8Ropz/dedQx/FDF1Fn8Sb/
	 opAXF0Ed8UWpHrgNkpkoK+ht9NqJdrw2rIznaUmyLElB2Tfaj9YUQrSahSrixPEjQY
	 4L8t2mG9Vja9kcZZW5o3ui7KSCKF1Lmw5PEMlXl2Gl2R6GdRTJCpcKSvqXw9Z/ZeRQ
	 Vp8Da0iqmite3hs+/iY5ERF7FsgjQZ+EebcuMhaM2jAYdZH+9/rTR4rbvBQ1Jquq1T
	 6wSPSFCaGe1Y2Jh38dE8oB9fq27qiCeULmA7VoUZkDVTzPKzgAtzmNSQXR+GCiqFW5
	 +JD5HFNRphwkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BD4D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520977359.18475.15461865100432454486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c95b3a90d56218d01c5a09a157fa266ef571308f915b0671c71a0cb52a4db3
Date: Mon, 08 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765209773
