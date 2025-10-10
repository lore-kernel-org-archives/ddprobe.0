Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C00B269CF0
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760086794; cv=none; b=bwORRs8hm21pka9l+bqgXmC8NLLzmfGVcINEXHLFkty3MN0eGuHsat29kG8wEiYzCUsqgS3GLULhNbyPAEJZcz4LH/ALXmdwyniWjoy5/dFnS3yrT3tf/A2LUVz/zG6VZw9VJJhLa+3gNUYDYCpYw45yXgjPU5Pw8LUlW8zbBSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760086794; c=relaxed/simple;
	bh=9KDUtNOVdJUIld5u57sYqkRiPVjYKExz7TBVh+pNum4=;
	h=To:Subject:From:Message-Id:Date; b=Nf/xckuSc+a3hvz066zv0usKS4EeNgEhouhkr9k34RS1az4wfgXzTfTTviOYc3ong2z/hG4BHJvF0Ym7wOvWMxvQcPE7Vd/uIa8/lEH8c5EF029lSFpBvmc6gIH7siv93i7/GooAg1IO62nc7xi+WopSVK2GY6R4Ey3nrWKLpuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYF73B7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYF73B7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1518C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760086793;
	bh=9KDUtNOVdJUIld5u57sYqkRiPVjYKExz7TBVh+pNum4=;
	h=To:Subject:From:Date:From;
	b=FYF73B7GK0mligWYIm0CDKN7R0SSmHs798hXpwHZ50UP4w8RkCcjdS7JS68YU4L9k
	 VxXPGdpulZzV1IEBnY8C6DNwhb+y9uYYE4JIMTL2IqhqHvwifKtxTgBzH89xQ1JEN2
	 NEVc3o2gyOuTVZToxL1hsDAOArVvKs0fThrD+Av1BpBGo4A1nFJiUffQDQJYhc6ocP
	 TNvuuqlCfST0ibdnO488NBMsZ3i/wskipn5quX5ZRVJaYr1cdMBCHMFU96o3knJZhO
	 kkNwk8VWKfQVfo7wq9xWuu5qvZklNXBkJwzOOhS2VrLYKxG0XKXPMWVqjfEAQtoCTg
	 RihKi6HA6+Zig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F959CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008679357.24706.13415153539452848573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f14df248fe51f3427a932353d74265b385c24355d4aa3b4f8551735a6fefde3
Date: Fri, 10 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760086793
