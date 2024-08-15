Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F9A26AE4
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723739754; cv=none; b=buxu+uGR3SLEDueLLgC4aF9nHOqminmNqQiIGfmUT/T8DA4Hqhv2rK5yaCIJ29x2Dwfu8Jk+bZ9S2oFILI+QQwO9ykPPvIt6IEvVltUYTsmDgs4bL4YxVdpOAyrANdKOC2zzuEZjcXBDQqCZp+JhzRDeRR8OQPqHH5Iu5U4TjPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723739754; c=relaxed/simple;
	bh=5cF9ZolWQczZDzPT7fQq/Stlb5icrQdMXGPJEY0Cehg=;
	h=To:Subject:From:Message-Id:Date; b=DMPeYf2dRUFMIDULovpdqD+0R+QqkGisx45hbW1AdQze99wWvTus6542lrml6Wkw+Vet7q89QWgJrlwtgCjxaPsDKbH7zGLEtpFNNvithJiMMqqVGnNzptWrwvj8bNCo3Ojkrq8UjodPcUoghtI8kwEmc6YO8jr03wMS7RwC3GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Axhn0+//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Axhn0+//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC176C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723739753;
	bh=5cF9ZolWQczZDzPT7fQq/Stlb5icrQdMXGPJEY0Cehg=;
	h=To:Subject:From:Date:From;
	b=Axhn0+//YZdyO7rETE8jUdohpyPohvh1pl5+kLpE08BfMRetmjDksPwg0ixr+rFR6
	 nMplQiFKWMycMe27ViqV8RfWev76JePdQ8DueJzJalDWKUe2hE8StCp5enhb/jig07
	 OUpEidegN4wa8rDcnTZpTSnlalTiE74z+6FD2lPn8/8oGTA2MMh9xY5YJUwoJIr36g
	 ZgHKE2oN47ud9RF//S2V7nVtaXhlmbyGkfSOjRQzJwtKI0cC8UwDzpllzb03CZwOTw
	 y8wwsJ4DEhhEBdeHgNOfZV+DlluLPAnBT3u8q4I2JHwd6CvdRjMt0GUOyI+Jw1wEQM
	 0CLWQkByeHK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A089BC3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172373975364.28792.14853033135115656395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2e74e053b074ac19059f08d5eb5b115a8831286aaa9ee2c6b2e25efde041d1
Date: Thu, 15 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723739753
