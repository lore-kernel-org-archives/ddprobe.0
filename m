Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098DF45940
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712530697; cv=none; b=bw9TkS86EksAqjMZRadO0W6g0ASIdNjbEML9gh2A3EkVpnAdFkUQeSNL+P+svx9/8aj6mhRoqX/Bo01KeR/i4VydVSohgwTcSNHPzoz6Tp1xVjih0j5grLGp8zMA4Ezp3Fa1itQlsIOWKzr0Q9ItS+qQzqCqukWNm/6b+Vy3UU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712530697; c=relaxed/simple;
	bh=PByUvaL/RmeMHIojYfZvduP5dN/puEYfFZm6msvz4bU=;
	h=To:Subject:From:Message-Id:Date; b=o8Qswiyd6YyVeKQ7qYOrkCRrov1qd6SJwQEeyyKmDuJUs7HjfcPiPQIZWcLD455N+S19QnIDBEUWZ7mx/coOiGGjr7Mm9Ga8IgBhKjMFdkUyVbY4ZSZHkMSeEVz4sQvHwxSuOijVHy7jtk9O1xc7yiIJHqE6QzDy8eau+gsUEqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7L5wsvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7L5wsvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F20C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712530696;
	bh=PByUvaL/RmeMHIojYfZvduP5dN/puEYfFZm6msvz4bU=;
	h=To:Subject:From:Date:From;
	b=S7L5wsvZe2HKD2fSW4zmKC8jXwIjZBAPB4xRfYUFfm5gU+KLXjzw4xt5/BC5sEjHG
	 PGptBn26gLrRSc63TAbdMp6LtN1jMC1XHk75T5E9lUj4t8wT2Y9Br7CeBDUl0m3SDi
	 T1R8quCk54DP9VI7X/EgCQQEXQvdTVyPX6VuZHddFygdLHMbqXznEpbvianU65WfL1
	 xokM3hDE9g022SjjIA9Pu3vrBCJuvlbKkLZYUZg8dhwIfX/KEcu43BJHLDkg+Favwf
	 DaRuroeGqaZrDAx5w568pJccw5MYqD41UUyCMNaVh5xH6XrhCNtvLw65799G6gg4za
	 kDbtc3WECNN4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65112CD1292
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171253069638.946.17673882707949520798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d427be542d19c7b0474836c38a695a0a192c8e572b181f9fff317090001cdd96
Date: Sun, 07 Apr 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712530696
