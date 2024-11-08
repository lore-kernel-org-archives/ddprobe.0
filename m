Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2010F233D96
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731091554; cv=none; b=uyKdY1QW9OZpq+/fO+aaj6+BS5IkJoBDMRAAvv7FJFXcFddm0JglysL65aLw9ZqNMo7ke5zUt4q2ZhLs/rRxe49/LY/150W2arxOqUkWv0cE7NYWVJENIUGHbYjxqfmveQlNfBTEGI7yy/W80S82x6GbOPnZf37gVtqrcK2pKZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731091554; c=relaxed/simple;
	bh=eNu3gffsaKWghl/b6pJLykGwg+92M7isqpejbDcjSv4=;
	h=To:Subject:From:Message-Id:Date; b=rMM78CiafkMU5HZcMAE3FqvL07uy2OYLwUmR/+7xrBb4Q4aiULmb0pGeH9QjvHZUkxPY6DPdsOj97pwIJPOJmDRFT6mY1JKno8YiibEZD62ks+llbRvxikanUjFJJOWnCxyy8ZIuKC0nWijPYiQhh+wUN/YvuAFSxN1Vy/Khh0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKLbXfc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKLbXfc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5B6C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731091553;
	bh=eNu3gffsaKWghl/b6pJLykGwg+92M7isqpejbDcjSv4=;
	h=To:Subject:From:Date:From;
	b=SKLbXfc+Hq35ClkRs/EoTVRWmxZRYpj4ZWMCE13xUiUj04Z+OjgU4NkAx4EJ54hk0
	 f/yi0MzOJF8kRfbcVC9GoUz23eEXf9p8nLhE3Hbdx5EyPpAQVBu0OWUwdfV6jECaX6
	 imOO0Akr3Fu2I8exqqtzw/kbAfWu7X7rilUbnjPjTocc9xCywEj93C5g/n1BmghnaN
	 K9xHIxehGtsK7AqdQeqdYdIMV3SlEVWFCUk2FDGDoXU/BuBItfhcQZp9S73Naj3zUA
	 /8NA8j4oX0toM9FPola0zqB+8s1cQIchZz4vjLI61XT1kkhWYEV7wnimRKTdUMpSi8
	 D3mf9LuZDj/Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D92D64077
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173109155361.31640.8257336665819168117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c262a367e9efcb6689c08f62410e048bfa605338c43ade470939b29d7be4d21
Date: Fri, 08 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731091553
