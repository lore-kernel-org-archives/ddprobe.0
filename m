Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF3F219E93
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752904194; cv=none; b=dSdQjOZro8FcHvIE5liMobs8fA4SFOYT6ZKsgF+K7NNShW25xSxM2ch9p2y2GrvrRpYXY0L2lnjVWua/+YHpgt9Gnprx0TfIxVAIjMSkqjuGd4cfu8O9WtNMzK5myD1UD3631VuNjFDFJHI3URApr6TywQbd94ufi2LpBI56D00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752904194; c=relaxed/simple;
	bh=ZJfbE8SW9WbCNJT2Z2w/JWktCdKZFaf1Y0w+G7JmPJk=;
	h=To:Subject:From:Message-Id:Date; b=rBE6hUlX33s/iQxQHzFUGL3kuCyTttdzpKSaOr+cO8VRpTge4vMQw8Dd/gUV9sdBVg1rVeiqehs5hoHKJpVhXogXyv4b6IsxPcudkGjEAg9y1UKfZ4qtwGSDc1FqoYYyZ4ZpkJR+pW0+XgJD/syh4OZGOJQdhE/enDmGHjsiKfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRKecpPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRKecpPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A780BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752904193;
	bh=ZJfbE8SW9WbCNJT2Z2w/JWktCdKZFaf1Y0w+G7JmPJk=;
	h=To:Subject:From:Date:From;
	b=RRKecpPaZHort+Bk9zz/YqD4ehQj7sHtHaKU41wZ3vJ7jih6aR19zyvTTryFioLxc
	 ZuBDFgEtobKKWocXbreCMvlGHBISvhCW4oscFmyinUpPQkPFuhVfuXvRW3SNOyAl1Q
	 fciCqYbYbQNgv1kBwaQSG1WX5dOOSCvieBQkFIbn/UUACqpFGaEejtG/Q3gflWT29u
	 +0GSHv0w9SxWmLrJ8jL9LUSg861TqcUKIfe2N0q06o/zdDFQvT6R2f/p1QNWos7V0Z
	 Qe7DI/emY2TyMXe4rJYuQRFgyQevoHVboy7PLXpWp+Vskja5SMQgflqaWAHwwH4cAo
	 feURFYJlAD4VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93838C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290419359.14440.3686051740858095317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c81420597e786929bc197ef28b243e8e248f5b484bfa044aad77bd3b8294f3
Date: Sat, 19 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752904193
