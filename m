Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4046928FFD0
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745337595; cv=none; b=NdA6tPFnKHy8mZcgRdWRSwe3Non70n0n3w4T9yZJY0oSp0yBka7UzDgPnuzTps04D4zHmfK6Cp6hmRnrha+rVyargLjIZs1pR2H6WnvFUDWwUGqTWZVh55JONPO+KnUkrvqRI087PLDfe/A8nFf/ZBfKCNnH6p2NqVDEsu+F45U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745337595; c=relaxed/simple;
	bh=v2rG3T2YQn9FCGIs+nj8a76PyYbHpxXcSW7brB4xstw=;
	h=To:Subject:From:Message-Id:Date; b=L0ETmuJdMqAruJ5FZ9pqv6YDLp+Nzg7Tdz7UsSIf6Y0U71eolvOKYBjaiUn2WdXncczmKMRezhazhC0G5xqO1igrFyAXv4rjqyaqUH7fjHzsE+KaGgmGzvcvRwibtnWAWRV6YtUO2bQ8K7Ow95Y4nzy5KO8cHu/B584Zijgyido=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpvDPi9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpvDPi9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97DAC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745337593;
	bh=v2rG3T2YQn9FCGIs+nj8a76PyYbHpxXcSW7brB4xstw=;
	h=To:Subject:From:Date:From;
	b=hpvDPi9ZwjV1o8kEohkexYlSJhuxRrTeaVOfqgi6cZzhs8FBN+bIEgiXATgIYJDUi
	 SXmsisN7n/DHSZStVrO8m6SSLfFaa3nQS/JnkbA9cn3IF/73Pjr44+CX2/X8yis8DR
	 QksxAsV5fyfvSXtM4v8movA8zLIL6AurkZvejg6O0xmphRMPOybEKBAQRximcBaBy6
	 Ec2fbTFoF6KPS96Q1zRsNFvhPlA1yOOx9XNyfdW6RffENxnZiQ9n5c6YE1xFKiVpvU
	 hd5gGINdea0hAe9PDyp+u1b0bPAUt0a+rK0s6YWXAs+f32MVOg7IRpm4nLXI535J7E
	 /1Qp7Vr76apDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C0FC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533759366.3471.15147701215355960823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3584bb2dc9c691e76e3a953455c6f7df5438f862a830a9dfa4ad5d9098008ec3
Date: Tue, 22 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745337593
