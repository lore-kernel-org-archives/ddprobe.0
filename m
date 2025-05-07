Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2760928AAE0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746655194; cv=none; b=tUB3oBrxhxhHeswS4auxTkvAm2mqkPyh2da0qQnYPgK2IzT2xVh2Kli3v/YLWeJIDpj95BAmOMlwdgLEfLhv72+1P6ob8l8SfjfS2aM5vUZgegvdx6+5fvlPlhL6uB2Rujra1MOhGul6WiPl2ibdB7dpEdeLnzqxVTYuQxgrT3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746655194; c=relaxed/simple;
	bh=Vb3OFSgHWsxNPwb72iUYT4B8Bvdu1suDOScuHdNsSZI=;
	h=To:Subject:From:Message-Id:Date; b=TS7XO2vX1H2xrfIyX+JfTiRnhmd8uB03MxM/F9V9XfFiGQ5pxeZ/LPaFz+X82MgsaTtyWTdefkT/8vmJ0hxBOT/fOMkOYcTF/pgTT74TiWPcz1vSln5r6+Wv3az4eNWWI1MqFmKw6pOJ8IhSwhHnx3N6QZ8NADPiO6v4PrmXXx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sv7yAidu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv7yAidu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746655193;
	bh=Vb3OFSgHWsxNPwb72iUYT4B8Bvdu1suDOScuHdNsSZI=;
	h=To:Subject:From:Date:From;
	b=sv7yAidupX5oajxhSKI2xnjUVsvE1ysiU4WCIDI336uQXbeTjn5FDokPPJHPMO32o
	 9tXmIZ3bNePHRPfMNY8F7kPrhxmEHZSxR3TKLN2y3vqyVmWpCRIGgCE/UCVNvb8pCT
	 2gCldFAfHfr83CUKA9ykKsKoe9shIdMLX0jtolZs5rQPgWX9mlo8JNiwy0BTtwjFzd
	 9Ll1vVLHhC4I4ST39ooL6tQV4720phGs/fsDsh8ewwX06roXyiDbqD36TpxHyO5iEw
	 uwNJ32nHNSrqdKlyEMLu6DntiyKhcd3agEbyM8Qg43IBAoyYTVpqFMwCpsvRyGoNh7
	 ViPj3Ad7HoufA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF79C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665519357.2343.13525623652268575912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd6279f14de7f0113511f3aa0708ece1a029f4035b870b6ac644ca4c63315be
Date: Wed, 07 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746655193
