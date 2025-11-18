Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99B79361DD1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763484714; cv=none; b=OkjgoS1n7QVU+3OAei5BBCn0f3TCkVXwJxhAlyf9wMQlEEhILs3Ly5TWA/fgzz+eFMlnc+otJXKytfWeH5Gd8j1AyjZ6lIzMUhXRdoJa1u0dx8/t5ANDErNNBKSPRjne2ZQoF4rclmlrGEabEV6Legyl2aKent0gdDHlpTlcSeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763484714; c=relaxed/simple;
	bh=Xi39kAAMxwPrExk8aapdn1KlNhJinodeJJhf8F4b/qg=;
	h=To:Subject:From:Message-Id:Date; b=HMCzwEgfqqDFtHZEuKeJh0g9oXdIBeG5YUx1IMuy+lBsXVBRVm1A6QviYLH7zII4EL3YPbqWU/XjHHXb04X52QUV6ocIUF1Y3eYhpdsk7/XaQqzfVml/ygFXuJBZsh0KzO7qD/cWYqf4Sc9Fg9cUpe/uk6ZOBQv1ZLK8LQNmwlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUli5M5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUli5M5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDCC8C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763484714;
	bh=Xi39kAAMxwPrExk8aapdn1KlNhJinodeJJhf8F4b/qg=;
	h=To:Subject:From:Date:From;
	b=QUli5M5LcgkIPm0Xp4gAWBBJgDybppYvZkytr1C4gnUeDwyRPVGZ7oGm01cy2274n
	 JGhG/ljAu/2QjgAc1OpRiLVeAL9cB9gIxgjFzZ5tSS8lga8Rx25MOKAMFRiGrK1+wC
	 irUIdxMerbRAID2VsS5GtqBcXxYpH3XUhyStA1BzKfxdxPDpE9++bWdQmiS4fFDAFO
	 CQl2BQOkQIbviwVAtOgg95KJGprH+/lchmlz0MrQlAWkd9/44pYV9qaeq+3LxnX2Rf
	 y+0UOldKjWnBHDbeAfSCtR4bmniuJ33X1jUZ7pDUEnxoO//U4/uzlxx5dRHqrqhunz
	 wArGrciOlLwyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D77CEE33A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348471358.32133.12744410707109511530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb7e077ef22741f57d5c3ea8012101954c23741063b5506a7e18e9f9d189fb4
Date: Tue, 18 Nov 2025 16:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763484713
