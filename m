Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B2A2D5951
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763499714; cv=none; b=Fic5ci7XIhzo6bOdtSxrpB2GrjCxNAhqH4YHYa/HjHtHl2E4IFFkzjpDtBVouBBmB6MYN83KnPsLhXXzYHf/KCxzEH7IiAai+ra7QTwG5xqr5VmCwS8MgLVx5GTGxFgLjlHf8pGJv7fF41TimuFQ7sUS1DF9lUl+tLM5Rrfg5U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763499714; c=relaxed/simple;
	bh=0gFYRAVZ/GgqcVt+s9m9hwCoZc5tUMC6mq7EWKa9+pU=;
	h=To:Subject:From:Message-Id:Date; b=YNkQHDeD49aZiYEBZwHEBS7sGOXt3XfqSYe4XsM9IlBtImiC3rMiNffpeAuvhywA55IoIfMROfhDYHabgSb9YOa3Dok39No2gsYcnd2YQEDPbY4UdBmohPB1EWfQ2XxJx2LV303bD/O8P9Df6dUUGk92CLB0RZz3c2DDD6GTJKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NO9tAvyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NO9tAvyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03B4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763499713;
	bh=0gFYRAVZ/GgqcVt+s9m9hwCoZc5tUMC6mq7EWKa9+pU=;
	h=To:Subject:From:Date:From;
	b=NO9tAvyYwhodKNfl7DY+5oLCgk7ux8jYGIHnQTli+Ja9jEDoUSZHhZ9XMwrUh91nT
	 MdZrKtK2Ja3vA+lACtdgogxQ//zJfTf+asbPmESlp85jbg7SqbqZrve87TKNJmghAQ
	 QiFvmWy5/DKx1ICoryJz9IvKvD9sgZfEkjfg+a4h+Z2LhyJ7FQw5y1fd+bzV9Iobo5
	 6oJwuaCVEtSoNjIAUsccGEHJYe7IRYMqd+lf8zQJJuGAS5agOpefdX4uBp/0dDK9uc
	 OsDgsApyFzOOVMUSoBVp9qWrAvw6RMTQKHagCfPMwAsnkla+j2SW6uToJs0Md0b2Ps
	 x9uOY9zaYHIOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93225CEE34D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 21:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349971359.31840.16616494287923358560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a2674c72104d6a14792dfd0fa1a6cba86018148a707fe3d46f49baa32f90a5
Date: Tue, 18 Nov 2025 21:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763499713
