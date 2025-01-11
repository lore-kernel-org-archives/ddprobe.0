Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CBD18FC7E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736638554; cv=none; b=MotUdrshAT2XZYadQ5tyw1znaJcLlWo9KjIpaomoH1boTMHfdOdJdncoLLkqwzgTp5fFETEi3mvR8tl1RNRniryMV1arB9WW5HP+hFm163OWgKa4t9YKmouvwg1apW8P4hcrIFFhJlCPEsLkb3WV2ARa8u/lk9MFnqD/XWbjnRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736638554; c=relaxed/simple;
	bh=uPTXrIT6eX0XlntaeWqyKAbYVKydOt6NpJsPytA+23Q=;
	h=To:Subject:From:Message-Id:Date; b=aF1aBtwaQzt/rfk6O81PVBvikfDMrXz0Bf2CC0XXJ7UaPommdJpIUqsfh9w4Clp1o/XIzu/3K8GUr2KWCnb+f/O0Vbhy/PCLW3+Wo62vm2jm7b6XihV2uwqna9alEcHJNJUbiHkx30XMm87AQ62sqU5ZH3bM/ssn5tXXOgyxl2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IldB+CYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IldB+CYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E984C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736638553;
	bh=uPTXrIT6eX0XlntaeWqyKAbYVKydOt6NpJsPytA+23Q=;
	h=To:Subject:From:Date:From;
	b=IldB+CYFkboqKZdUebchkB/qH0ZCrplW8xXkrRqYO84AcdVfd9FG0w35uNU2F9p85
	 W1jvFZI82HQAGwuSaGoQyAkp8IGviy1d+abL8eQ5qq4KTiQWac/+5OCGYWyr6Hn2ho
	 syRdKL1jF22sJZkqdmbKkSo1Tz2hKRmmv/VKdqOzjqwhg+haGIz1uM0wHOQD9yWM/2
	 DTA2dy/KnUjxzRvajIOig2WmQ4Ty4BNSNLOlcOg4tpFL0CTnwT716JUIGAgfNrAsSI
	 wKUlh+KsXrXGTbKVc70d7NeVZlMY2g0abU1IZaHvSj9ubOKFSOSLJez1AqkP2PDXvZ
	 yZ5rIbMtegtuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A9E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663855361.10318.8645093961244950090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9fa5acdc974d5d6c6c21bcea205863261178b70cddb4f21b4f85c314defcc6
Date: Sat, 11 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736638553
