Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D95A2FF659
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763067594; cv=none; b=m5DCMyjuBhjM09ucqmJFXkl9OUg8MMuUYyHcn6Ar0OjL3/Lpuqy5H16bKMxS6y0fnPrryvBH7FCZoG+SVP/FSLT8/8/j1Sh9v1C2stiF95x9lKWN+PGzoYh/0KCCEvTK4cz9rebZbdUTw9ZzsNgxdpCO5lv3js0ocEp0BeOXhuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763067594; c=relaxed/simple;
	bh=zN4mZ39bdyUWtCV0Hbp31V1katbGhpVIWKfAk9nnshk=;
	h=To:Subject:From:Message-Id:Date; b=N0ALAofs32ewFSVSVsW87d1oNnQOevXtKKrRZ4kJCR5pKxnII7YOEFcxRT+3nXpARbp4RY6dcjrtY4UR8ZhISHFplD5VAH+q1nvNkDdTBDnpXnc5sZ9PbLxC0bliYOCECAO1I9y68Oy10jMUeoJ6kcJyqEeP6MNAQfKMnRioen0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+nwCaC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+nwCaC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BCAC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763067593;
	bh=zN4mZ39bdyUWtCV0Hbp31V1katbGhpVIWKfAk9nnshk=;
	h=To:Subject:From:Date:From;
	b=u+nwCaC7y9DG1p3ICgUUvdSudgyzf5/Fu2Yobt0KD/4icuabTZqkxFPW8IHdem5eG
	 JCfxesQOIR2xq8l4aGjTK1FP/5vP3uHAKqlzTDNJNjYFENO7u2mF1MXHTcX4fI0TLa
	 a7p/Jd4kHqmSvEdJMPve6WcWads6i3X/71BGvbaUcweEY+Nx4QzbgeTTvUUAtqYCEp
	 nYosr30/AWX3+UHQjRDuDUacub0NITtR20x+sO9n6A55FlR+kXhWsfTgAELhZQpRsS
	 1WzuMAvnJFSViVPpYVkT87occQ5FRUSyAA5YwRWzupVe+IIzwmks2JheDUB91ZFCOD
	 5fDaQA36VhkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F850CD98DC
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306759357.5215.14736602452643009518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a40ee757114a371e20c71bcbce1a99cba81b650b0b6f84458adcaf59ef5b1d2
Date: Thu, 13 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763067593
