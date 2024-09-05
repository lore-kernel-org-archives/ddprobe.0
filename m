Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9FD188017
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725569754; cv=none; b=WaEs9ZgZW7vJVN7C/eWcox4ye34PNZdrFcGCCUHEp8UpInGBiG9PDPP8Ucu30+IQeGbsVQ7K32Dl6GOOsAbYl+OO5y/zbRh/6MYPhNlwM8RzN6wVt4rg1DhRyJ20SSP2FqBGSSpvlz8ASH6jOXOcsT9vck5U7CDiWRUxwc1h/p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725569754; c=relaxed/simple;
	bh=2MygzDtwNQOX1GW2zSb7Ao8l3gTNpjTsNzF6/I3qeds=;
	h=To:Subject:From:Message-Id:Date; b=Ygm1dOquLoWh49Lc9SbXa4/K6rVtkW5vcy0F1hGEyGsEGGrddvC9szJjlnAdcjC7oUmjY8NIn3ACJwbsEmkILEhQ1ZCd3cR1VGeY1FLRZCk0qFGB/P50YV8SzmUzR5O34lDX+UUElORHa7131zov3g/wkuyOVdgjSEQdaQbMusI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnYIa6Pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnYIa6Pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A61C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725569753;
	bh=2MygzDtwNQOX1GW2zSb7Ao8l3gTNpjTsNzF6/I3qeds=;
	h=To:Subject:From:Date:From;
	b=UnYIa6PnDoaL28qXjnWD/9w6l4LobNVWD8DECZpM9JC1d+/hOrd9riPq+l3qBGuff
	 HUdybs6Eqz2cy+VY8Tw1WNf3aR8rqZO+rRWSHrNjGnjK6BZ2A5dj8WTzYOM/skWktX
	 q68my9N+GXkwqPJGfjy75v76BfDddhYV9KW1M7cROm1NLCDTqsQoNjLqBWzG7dGjkX
	 QgavVmXC9YbI4YRDTOXyx4lqIPlqDYvAUQz0FCK3r14I9nS6wlYHPwsYcm8pYUSWp1
	 2DIrN5BAxc7dULX9blDuPBOoyZwuZOh0Mmk57xq01nqykIO03Zb6gj+eU/Gcv6TbDz
	 zg7J1oZ6+Qb0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2775CE7A9D
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172556975365.20052.15576174323662449511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c40cbc5a41997978b4001b8818878081e056b080af5213d32f803055cb0646
Date: Thu, 05 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725569753
