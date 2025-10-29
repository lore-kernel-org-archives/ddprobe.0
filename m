Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2299F310644
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761722394; cv=none; b=JA4FscWiXkynTez8Odvm1EP2bytEjMRcHbdzeys9Dfp2ceBd2B5+4cQ5zYj9nOVMe3O0accF2Vqnup5opDKzr3U6E1+hwMnYrwnHepgLsGqyRZnAHqE1nYnXnbrP6PF87DBPfkGia5dmLekVsyzyHgg8tDAjac5+JQsci8UIvc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761722394; c=relaxed/simple;
	bh=KdaYjNEG8GRqvSSMBt6tg1cNuuoAOVlbakpJon8wLz8=;
	h=To:Subject:From:Message-Id:Date; b=Q1qi2H+4NkmKuugt2REGXWbyA41s8i0n9VtyxPFOxQJxjxEhXQk0qRTZa6XUUCCL/h5WD6OJR0DBcdWl9ntXbNsy7WfeiIgWD6LtVGDNO4dOJAPHgc4yO1t5FYl7yIhofiXNaxqi2KdI6KhLZbjjsHwdb2vQBSnkcn4eV+dngVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju4nwqRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju4nwqRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761722393;
	bh=KdaYjNEG8GRqvSSMBt6tg1cNuuoAOVlbakpJon8wLz8=;
	h=To:Subject:From:Date:From;
	b=ju4nwqRUxMlESq97h2nXu70g9hDRkxs1WvJw5/7qXNEN8/1Uty18+dVjADh7qb9iL
	 fQBQEGMmORF9cN3wO6Hi9Mso3fFy+x5pOXMkZ7OZgohm9RiNnS3cQwkuP5V7/yNAxT
	 Szx6OJhELM7KFErdFgdY3jqFMlGZIAyCKelwdck2Ov9HF/zgp8qFhh2uIqR4l1g/o1
	 EinXyXjYuciJtoTcYT6BMfMIFeCoBEsV54B79O2juvriKzs9n7BjBm7yJ9wNBT33e6
	 YqtItmLgscTSPVDPghATdfU3SGxCtytGe78JT8D0T5EzxZv95V4XO85r23FhLUEPJe
	 ulU+Dr0Ok/GUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91599CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172239358.29980.13878897135964433045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd772829f1db16459f6244c118b5aa919c7944cc8e76c6fb3e49e630e0019fbb
Date: Wed, 29 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761722393
