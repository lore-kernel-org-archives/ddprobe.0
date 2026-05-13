Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC523DFC65
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778661636; cv=none; b=TpdcXAZhr8FlXyr0ryONTALGfVrEbw8d89VUaj94acBYFkZjpILx7HREoWQVDxk6c096/DUkAwtHh/k6YTY3k4RnU1acB8ijTeckbFydiHOP6/sqa46La8w8qu+xQbPVjkE3Btdtp3yJzgkIYTsXU0xWFUihpNjZS7rFZ+Px4B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778661636; c=relaxed/simple;
	bh=kj+NvmEnJ/ZYY92W1LVNW53/dOAz/rK55KqA0zDUTiA=;
	h=To:Subject:From:Message-Id:Date; b=WUe3gs9xvTfGSWSPzFYKxjGQ9GlRZ7SnMOZIggNOgfvJRWUeqQaw8/qwIFuMSnGr5OkWa4UHa/AENM1eqBx45uYSkLn3IUA5weNEL7hfe8FzfoxBFDilrJZF3R3mwCtz2KI6/LntccYLPYaTKzqARP/NvGNbcOzKkH5l9NSwGS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISFLS35Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISFLS35Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F55C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778661633;
	bh=kj+NvmEnJ/ZYY92W1LVNW53/dOAz/rK55KqA0zDUTiA=;
	h=To:Subject:From:Date:From;
	b=ISFLS35Y9Flbxz2wcZFSIogFml9riZkhFmyu2yH3wD5fI1sSaL54J/Xj9QExyJbyY
	 M0wMKHmC4tT9GmDneVzNbufQthAsvA7TwDKP0YQtF/qtDxdesXqeNxEaFVJXMjBLW6
	 e8ouKEWPftd1hrXe4MOlyzOzg2HpjYJ1I7uEwyUbxBlpkcFcuruMABhUHZWUN7lnS5
	 Pk/26HxnHOr2OP7W3sMB62V9owYs5Ip7o8vjI8JODevNLPZkwIASV/cD53BW1JtNxW
	 MIlICLDba30P/WLDxXq19T/Ugmt3R6oA+7D+KZtPia6xB4XdbJzd8yvulRvoTTnWxq
	 912wTvac6oiqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B578ACD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866163373.28220.7549458489193664598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1d8ccf670e7fb308e0bdeb27755bf10313a0361f625ca326e02a7b5da1f583
Date: Wed, 13 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778661633
