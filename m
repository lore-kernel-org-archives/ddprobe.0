Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA68131BDF
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718255303; cv=none; b=oxUiAdkFLICl7KQPEMz6BlrHc5IjZCxozYIIs5R3hUtXO8tQz60avnr2o7+1Q7SDIgRyvFaAC4sCMLVuqcffONRCHBazVw6PYfFyPKsZI9k5tAivQ//nl/P/kDDjzJEFVz/gb4h+RqA6/ERB+UQ8MRunTWYzhjZgjXit8llBnqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718255303; c=relaxed/simple;
	bh=7Kj0inoLpJGEQPe8rvHGaAo7UdxeVwvyQPQQNbrWqx4=;
	h=To:Subject:From:Message-Id:Date; b=Mi7+2tfcfwiF3pJQgEDje8AtJ6PyIvGKua9bskZ4pHev9cQF3XkdDyRVnAnOPlBctfmoKo4GcSUawGy6RwhvmZZdfQOsXBF+gRRnu/yLLg2LKmxTJ0HXB+1KjKyJG+ZlL2MDlu6h6cEW26wmN2HDv2na8DCwTcEZ14d4xMzghI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lozU/6A7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lozU/6A7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8960C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718255302;
	bh=7Kj0inoLpJGEQPe8rvHGaAo7UdxeVwvyQPQQNbrWqx4=;
	h=To:Subject:From:Date:From;
	b=lozU/6A7xFMMrLTbn+4rCal+O+0zOniBOq3lJRrucZ7tK4V9Q8DcCaJbQniDpk+yg
	 4u5qJ0iRxk943Yccktq0tdJDEhqe0KW9q4vtN/J9ooGUVaFj6ULoT7BrUqckNUg7Jn
	 vbJzyt2tcKom25mSZQlZTCdO+or1tcy2xocLZ3J9RUCa2hfEoCKdF/M/WnFz5QyubV
	 me+QkO+XqJHZnabVbY9zmEVKC/G8m1GXG15abA+BMCNYxYgSYZY/D3t5zFv7DY7kB5
	 a6+/mjQq3SyAky6GUtTcGf3nlnMD94yv/V0wnd0sUbhnIywd7/QmBiukrypKK0sXVH
	 R5D6GaWVygpPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF912C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825530279.7713.9747969336222914883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efc001be866c6ad4dd4ae3dc03e4822e12f77e9cec79a3e11749a98cc83f088
Date: Thu, 13 Jun 2024 05:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718255302
