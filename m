Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3D8442B32
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790118634; cv=none; b=oiBGfIWw41kt7dGBeM7+ENFzqslED0UtAZHziGjqZcCNJhUxsh+wmfGa72baxqXQVuULzhYhLY1LzulYaZRp3AKklCX43EBkyJH/dAYMULMO+ZZj0Lgk7P6Wlwk7jFeeAWHAel6g3EfkGnIQOWjF/cdn80Mj4k4c4lNv0ren4Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790118634; c=relaxed/simple;
	bh=PCb5KL0UMRAAlyK1k4C224YZ0ctXbzb2B0sH5g8NoyE=;
	h=To:Subject:From:Message-Id:Date; b=AZ5wVBQWNh9j3vodYspPcOmQgY+jfNqXeOOY0R1tdUu98zsmH6wXrA00NEZGKkNcqoGlKR/MBUJzJCYQ2LbbYHwvEP/fvXDQmTFVk4qdup/P2HIkRKFVtLzGkJfzrZpQQB1lWwJWZpHMJ+KNqEydOgBQiSnO1/+Jk8ORP2lyHHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rafOBpNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rafOBpNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4963C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790118633;
	bh=PCb5KL0UMRAAlyK1k4C224YZ0ctXbzb2B0sH5g8NoyE=;
	h=To:Subject:From:Date:From;
	b=rafOBpNOaIsO4n6pAAGSI2LpHo3hNEYRe6K7jYwwq1jbPRl/F5HVJeP8eSsxgD5tR
	 nLg1osoJB4nt5ZFKVXNhlZPys/AOnnXY10hC0q2Q44KcaOxFT+SMi2ByJfKdJ+7IpG
	 HFTnoExvohLFDOgiCdglPOnYoGe/qZFvfQ3SQyhWH8P7a67qpt78C6/0yPuXBuzQcj
	 kCTzOacB7QIqicK+hlnOMCgwLIi8NWXGL+Om4MIAtDnWnFgWiWU0lv5uhE0tu7FQqG
	 mbX6vy8fDtyJoYaXjgzKJCrxicC5WKm1DPtH8qu2EQU5pwwscIL0LcJjVBvNy3IgzA
	 Et0GuLnjyRF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C08C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011863368.2790.8809681223161181261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09481df9b40e600b9fc4e722d402df60dbf60d9b735857bffdb99c0e9ceb6b65
Date: Tue, 22 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790118633
