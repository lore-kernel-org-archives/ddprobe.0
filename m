Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BF827815D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762375194; cv=none; b=GFC1TW6uRAXd0RwV8zzYTp61m53L2/0CrbnERAQWGX6BfR2a1Jkxc5rG8SYM1WeGByd7mFq18Moj5+lft962fa3nuep3lEp0rtih9+Z3ycQYcA7fcjnXDXENrlJMazqoYd9SqE2WZTnSFmYoA5ETG1aGJQcmkE/E14Cilk5s6AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762375194; c=relaxed/simple;
	bh=dv7j/hj4WPmfk84c5DTh6fYsFddPlSPYpfkqT3BViiQ=;
	h=To:Subject:From:Message-Id:Date; b=cUhAlpXtvdTF8YUz4rR7vx8XCS+A83jll86f4kEHK60BUHiO7l4/Gbxor7na1kQxvTXeVELQe1JIEbcfnxbtN3qCNDzCWwVNuJEqzRV4hRIZ5yfOy/cpBJ8g5/vOGG1o6lGIQJvAuSZo8zvP9+LEEQ2iWU5dbhqDPtZkZRbGJDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIxNUFpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIxNUFpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5BDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762375193;
	bh=dv7j/hj4WPmfk84c5DTh6fYsFddPlSPYpfkqT3BViiQ=;
	h=To:Subject:From:Date:From;
	b=JIxNUFpaoYuHRBtXXqevQL5ssqRU9o0tt7Dtmts0AfkI+6xOaw82Av1FBLsFbe1EF
	 gk9gnm1sFX/NvfFzqEjGxFe/fI6YfG3+wS9EP7yL28siLar1ms6A0QaHBkltjSRhrN
	 7U0VmMw0NXNxj8bczDkT7S1dmb9BtyQ6FBoVVj2IR5bETMEO3gxIn6t89BSG3x8JVE
	 rWgspWBmmAX0PYPQWL84Hy7wPA21TxcjNlB8Ay2mqbuYFfEf0SitrEqfYz5k5Fmwy9
	 QNAnMZQ7Jy2ILEj9rjYL3nfWsrbz0h40vsFfokaFIWoJEIUKQJAnUQgwEGqSgYlmM9
	 5ap3y1gqCyo+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC75CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237519357.7353.10144583879852212240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6779e8dc8539fd8fa2f69814d0f925adfdc555ea6bc5155e126d0dc4a58b0156
Date: Wed, 05 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762375193
