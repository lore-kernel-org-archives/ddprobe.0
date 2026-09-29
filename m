Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3FF38A71F
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790706034; cv=none; b=gdvIIitCBjV6zts1SmniwfM6LzcE+HHBx89K7knFFKvvCqVgw2XX5WCVp5UQK2dEmkkJfF/TqyClLHp/JvLo7pQPkbYmI0gcdEiGF4E8V6XADVq1ZGe0zdLI/8Gan0Oo3db/NAq8b94LkEbdlgLPUnCpocnBtCJsBSZelIHM2UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790706034; c=relaxed/simple;
	bh=nmrNp+Ua1CsXPFhZyxz8fKT99hsnqjBe3AdOZIDBPuw=;
	h=To:Subject:From:Message-Id:Date; b=hhVvbI5TrqwYIYzRUFLL/Hxltipef/pcRysY2VpTmc3TI3tMwjWdk/bgULTK2b4t00u7XwVezwtWX2ez4cgEYHdns90n1qM1OTqYUDUAPWt8wH/gjKqURPkwMoLX7A3kHL4PMsBYsh/+nb/3vvjq/d1/aaBPeuh/OeOTBIzTaaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqktK76D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqktK76D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE72AC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790706033;
	bh=nmrNp+Ua1CsXPFhZyxz8fKT99hsnqjBe3AdOZIDBPuw=;
	h=To:Subject:From:Date:From;
	b=JqktK76DNRT8/R6aCzQqxJZkW8ErR5ErzeO781XimGHr/vVvOfqPCyAJCjOQnsiNA
	 BJWqx6CcFQpP35s7P5etB5l/qg2YLdQP5fIjEo7W2EdT4nvuZB7l1Bqn8pj2nUmD/i
	 CEuYOINnM30AXfc4UO2ERkcWgBERjfpvyIDJwOavMZyHWuL8pea5pee7HURZUO4CRa
	 E1qqPVB6FAszZWe2jjg6k1b5WIzxSML9G8dO7D9Y3+qhXLhku+3VupDwfgNwafqWjH
	 +3SUXqBLmW6UQPcvCgPct16L66TRqQwr/R0TdGjn8CKwztE+4E97Gx6O4Uam5xdBhI
	 3xfincIr6z3Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA453CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070603368.487.3865681235038511504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c121641ec01b615ee331e70714ef069ddd18fda9ae22bab484e6c63908f4a8
Date: Tue, 29 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790706033
