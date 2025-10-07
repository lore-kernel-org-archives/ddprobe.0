Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DB4F9C1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759799394; cv=none; b=g3MlfXRJSBQga/KMp4hMLOQZL8WAVVRZkMIfbiS5xI0MEB5k+z90k4zo5Uus8KfXBIuPwOXDGj7aukZdtZX39gXZlc4B7U9yvJ1g8nqjWMYLL/OsUR8We9OMdmJxxT1QSJFBxZLRNLzReppyKdcGr4XrC1YOOHmBv7I+llJKrjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759799394; c=relaxed/simple;
	bh=zeHn6KA6p/t9Zc62a60EMo5848sy4pTEjjkWAHu7jO8=;
	h=To:Subject:From:Message-Id:Date; b=aeELnU5/rYYp8Mu2M5VVUEFR9BaYtXT8ebEyV1OipUleLUcZ/o2TDs/l91A66Dhj2eZUXCTbrldc1EW5ZfLSX0CuzqO/XfonoUSfM0LMPmYEbLcgVlWqlnjpNR1r554md67wUquc287ZWHIZzmJN7mn55G2/RDrDCUMSMY6mKgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9JSFDHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9JSFDHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E45FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759799393;
	bh=zeHn6KA6p/t9Zc62a60EMo5848sy4pTEjjkWAHu7jO8=;
	h=To:Subject:From:Date:From;
	b=L9JSFDHL1fFCoTFiUH6AbhT6Iwnc8BTvOEgIUhEOfNH7CriqOINVtPpd7aLwQ0peL
	 3adEqC+p3FnlRkYhL4z0Pc1Vou3hL+IbmYgry5N5mtTiqfWoIvtGqZDgbCgGb3a8ZP
	 eMMdb7LgZG37WVEblEcHo1tzRAnlk9w8kArb7pu5XjZocZfcsT9nr5vSlCws+Zcka0
	 zXcdpt50vyVpY6l/I3hizqgpTl3XOjIV4vZaxkIa8myWJZy+oe1XbA9zz4BdF73E15
	 oxrxM48FbAc5ZRFeMYQpru2svnTJEK/3C/apxcWk+cHbOliIqqxgXnqLiSz7Fbqe1U
	 IugL9of6BwMPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED30CCA471
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979939357.8045.11050330521318562009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0fc5fcc569ab6f6c5d2e63f0003dfbc25615dc025d152d36b6da3a0709ebae
Date: Tue, 07 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759799393
