Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C435381E84
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789461634; cv=none; b=boFeJ06rGdISo2sUu5OZqNJBGz2xqdM7PWnO1P6DtLZS0b+OgV24PcmYwhzzLa7l92ZgEUP8EjLRmibHk7DW6fXWYVWPepexHNpphbv4Y7LX8AFGG/RUmFz2yGJN+r5XALOa8HANw8FDGpVuY1W27J7guOpzC3RhZWhKkjTUBTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789461634; c=relaxed/simple;
	bh=OFHsYlUFxLmr88FYGjyXisFYPtUid2uaesVtWRXGldg=;
	h=To:Subject:From:Message-Id:Date; b=BxNOCZWWZ5/j1i4jozur1Bua2h2pfo4AN4DV79auxcKg7TEMBJ+y873wKFGaMnfpH5c/stfNO9e2s131voKJJTcepMggKhKd4Ju0yLlt1d0jB2ddAtpS+gH2KwB/96fUC4Egi28GdXuTldg5ii/xml8khA99rgq6Vtiwq9ooaoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uod+EBsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uod+EBsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F33C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789461633;
	bh=OFHsYlUFxLmr88FYGjyXisFYPtUid2uaesVtWRXGldg=;
	h=To:Subject:From:Date:From;
	b=uod+EBsgp4GGmPa0yp432qK02zb8/jHnp04qpbRpwWA2KBr4egZ9rWsQl2+AmVz+p
	 Ag6rfaBW8BVBbVIKRNfIp7eYXMfH89AGBn1WgAPNpHiaLK/TvxSScHklSkYoCbp8Im
	 00yuS6WzeeK275TA9iLyAfFjdWe07ef5mnthVn/y+hmM/MH8kygywq2oa8vJpqT0ud
	 JGSGI8Ueiiv+4ZCfuDJFLmUM9H6WoBbu4coxkd0wFAot3jVour2/LcKFsw5Q5jBftN
	 /MWGA+hioR8/UpqIU7YD+n5H1xZ7h395mRQj9kYhPfCuKNI2ZVKuFeO1UNx0Zm5Pn+
	 xX6kUgvV6hXyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABACCC88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946163369.21327.16598793037158482034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163d554a5079632bf1f89f0c54c20e475da25f08ed1a37071685a534308da31c
Date: Tue, 15 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789461633
