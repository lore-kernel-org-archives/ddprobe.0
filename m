Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2887C2DC790
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758708595; cv=none; b=Xomjm7MC/D1Mwv5jkaqfDUW+ux1ejV13YqRY/X1g5M6KgTkmD4CMX6TRea9gH9soeRSCMSoEX4HHejJJr3rKKpvX7RxBqpIpA8+Nsw6rLjNqnV//VPbMUvMJS4DfZN49vy7s/ydwhPCdGCGvQgm9QQdMBM7L35LCpvj+jqbMBYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758708595; c=relaxed/simple;
	bh=rUXqbUyCGwg4dK/LkzTZzxwa80huqonQxL5s+rFgo8k=;
	h=To:Subject:From:Message-Id:Date; b=ElFmAlf8tk28QXBQBNH8vmD+wZSLp2h1ONPuyQUIfWMzfGC13M2DTihqKXpejoQMYGQWbtRAmMPcmmLBXQ9SEA1mPKCR9RZQa6Ot4WY8beRG+aCnORuf0vS0IvMwO/v3ZRxwzQOs7wH/8pceRHyTNU3bD5SSxUj1m/1R3e9PpY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQQgAIxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQQgAIxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC85C116C6
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758708593;
	bh=rUXqbUyCGwg4dK/LkzTZzxwa80huqonQxL5s+rFgo8k=;
	h=To:Subject:From:Date:From;
	b=JQQgAIxBWauaLW/KcQ8CvkQNpRtQ1QE9ceuYd2bZLnEi/qQV721JDay0jXMKioax7
	 nSsZo3E79ih/KUrqAR4UP5NK9c/C0ump4HaVw29tyXgmK+unkOGw6lT0IvYgLYhkM3
	 viZLO9nDiRG25yIGBLXYPkE3TMnTcTj99DJF4RTO4+mN20d8UMj/P4ipTDV8lfdgQ5
	 dghIeOfFB2u/9JdGG6Abc41nAeS+8UrjUwcN6G27GlpWob4q+WtJCP8G0cnIxY8v1n
	 a50cM7J2DIxHFOUwpk3ha916FYzDY2gXlZZjwLumq8KBG90JY58cNs4lMBrO8tTGov
	 xksET1Ah6QB2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE6CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870859358.7371.8317853979283961314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b493ba51ce00adb3806e32361e0121cd0b370797c1369c1f0e430f6ed4c261
Date: Wed, 24 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758708593
