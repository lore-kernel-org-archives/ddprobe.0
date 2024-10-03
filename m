Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331BA12EBDB
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727965554; cv=none; b=WMO1jy4qD79CGhYqPZGhqWddcGrA8j1n5b56wnK/jbP2jj5TMqc65Hahsb8I4MtVlQu7Er8eBodm6VLQgdNEnwlVHcx/S76Av7vNIcO5TuFtbYtagFfFrdpvOjVLlbPTcDjxfPx9WrB9hl1n5WPg9JOFjWUuoIV3bKbfggzo7qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727965554; c=relaxed/simple;
	bh=LR7aW7GnWQCvltaJ2mWgRFtm9A/tcc+X2kMDv+3xRoA=;
	h=To:Subject:From:Message-Id:Date; b=kIiqxT0goSkGxewZS2V+m872IjmQt3BLZbA2MKD8ql0mY7p31VXbiwXonkGv568pMKOAqdJPhkw19T6EZsSWygKPbNsOm4Ewty42xbHFaStqme3f/RQ8CULvH4JfCMt93bwlPN4EgMeC/me1lyGn1t53diPyr7P1AnJfAgWbQOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgIi5jeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgIi5jeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC41FC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727965553;
	bh=LR7aW7GnWQCvltaJ2mWgRFtm9A/tcc+X2kMDv+3xRoA=;
	h=To:Subject:From:Date:From;
	b=dgIi5jeSiVHgusS1ElzrWMCV1EkGqCulZtrIjjzO0M+jKkYvQ/sAGXb+qXw0eZh3W
	 +iYvIecECnw+w1Smgz3NyrBQJOucWG/dlz7FOPWcWy3C5xHe+86yVXNYDz6MZ86hb4
	 E7gbzqoEIj6F4qJxxs7h4ftamZq3oh1dqn3CEirbhPX4PrW58N6fcuozhw4nUzkpJR
	 3ZL9gF63rMnJIrX7CEJ7jTfrpcYVTRVrDo9FNLe0MJZLgKQ7oUoARcTwCbW9lof387
	 Y+jh//8QADDhHjEHroED0pa8Ray59IiSrg7sLj5sv0/Qs7s3e4kejg6Yr4A6+5BR3A
	 dj5X2xfBI6kfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A99CF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796555369.15130.6093437962849146597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc1e97ba29fefc69d357e030c394246765876e4ae5a7f31650a93a2b42fa709
Date: Thu, 03 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727965553
