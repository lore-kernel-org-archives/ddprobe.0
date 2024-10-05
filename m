Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCFF14884C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728133554; cv=none; b=PaiGMR+Rvo5w1Ojt7yICysxeuf4EZTvN3/TGhC65yqo88eSd7fQv5GKtEH/r5D5jEtLPUFgkoZbvV5WqeVK7JbzztkTpgVrIplsK3xEYN+bM2KH4cAeaTSPvZrcZ5tzX4waUMtN5hkWiZyfjbABCzZ3Ok3Qbdw+IXMn4mxB/Bm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728133554; c=relaxed/simple;
	bh=VCIWbAxJcwHzRsBOH8LYoNURAal56ftlO6aAEAnxIfA=;
	h=To:Subject:From:Message-Id:Date; b=q6tQNfLNUTCRkKhIX77TfSjN+fnJTtlIFZb5vBfrs+25kYEvrDjnVgiRJnyYRvsi/c5Zp8zQpnG1cDd2ocl0r9KoSSUbREFmqeT6cOn/G03peJrN/U4RQdK3nhczrnp4ZOEMbEO9ruh5XqYONaBy2ym/uMkIpy30hV5x5T/1tFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiXabf9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiXabf9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0CFC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728133553;
	bh=VCIWbAxJcwHzRsBOH8LYoNURAal56ftlO6aAEAnxIfA=;
	h=To:Subject:From:Date:From;
	b=RiXabf9b3ocnvNqHYuZJsCgx8t1ITuE3vWJaNqayb21D07/aMl6tbKZH0NRDHAocs
	 L2ThgW48XIYYSnhnmDkBafE+5gYlkV+k+GtyaifPE+H91E/0hI1oOIUP75VzHeo6JV
	 hnuyFcqJ4IJfWVuq9jJVIQ/6UZycuMFl0xek+NRV5WPRzANjlMMyIplOtEuhuD8CPG
	 5Wf1A6x4BKuUd/ByRWGx8WeRIVfDj0stvmFOcJVodCQQMTSNwHsO8GUj595GznQeyN
	 PuCAg+mop1DjAqskae5nYUurV2pWQ3K/4LZABj3KpmGkQWiZYZA/pbOrXShRSJKL0R
	 d1a6yI6bGlSNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8807CF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813355363.1937.16772579255671466959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482d430cb1b7286bb3740d5c98285ab6d47a98199455cfa65820565c098fabd4
Date: Sat, 05 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728133553
