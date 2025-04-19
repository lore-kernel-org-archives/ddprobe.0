Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F0C142900
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745089194; cv=none; b=HAc8rqJZz5XlKV+0m2BFdJMBxQ9J7DZIR6wAfE5i0Hmv+G5s5XDg6zoR8R9t6Vl/a4qKyOwoo1jvO/Ah5PiOu3AWF5FEsKXxz8GZh0u9h6ZbQMUM2OHKLGfnkddPiWmfE8lO1/WG5juXARg1BaGuwzefHktcZQu6IhRlKRjomj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745089194; c=relaxed/simple;
	bh=6W0u2kCU7bVZSXg55h9vO5gQgEX8GxqvRfyyVl4wIOQ=;
	h=To:Subject:From:Message-Id:Date; b=Kk4ycwV81ibzOkKvfIwPbUlFGMjWiu7Shq2rfU6ZCJxX1xFZss/59SPidVL27WBkMy36p5BKI0DRuYoiWTIJxOrMFpHt/MTcABuErvK1H6ibIQ7bKvGwzdJWKZc3cecKW06cMQGHQGjTqMPdScc/TQVQ05UWDyLRWBlWUfN34Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hkpo86DE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hkpo86DE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF37C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745089193;
	bh=6W0u2kCU7bVZSXg55h9vO5gQgEX8GxqvRfyyVl4wIOQ=;
	h=To:Subject:From:Date:From;
	b=Hkpo86DEkNTEzLbSZ8zdQnxFxjznZ4haLPraF+BEDQ6w+tb17obJQEC9jIxVP0m9T
	 UuvKDOhNo8q5m7S5kln0frucwUMX5Hva8wv2sGGJq1T8DvJXTKrLHimJto6xVA87EW
	 Vqs6xBRS2rUkOi8JnOZzHNBTZ5QantcaEMMaHJF055o5Ns8jZLB9vpPOrXSjRrYrzF
	 52KwCws+Jdiyk37eMsxOeIQLXJF70hvbf4618Uwp8KOaBow6ai/YX0y1+3rX39t8fk
	 DFTVdCij1O4beIhLvywFXpN0O+HLrQ8R+hS4XwLBlz/9P+9cLtAqq4Gw4vaMJi1htI
	 aogBBd5RS2GMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91267C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508919358.17163.9482114375245315075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1519c3bcea7ca4cfe4e490fa43c0cc8ec00ffc6e0ec4a59e20819c00cd50b48
Date: Sat, 19 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745089193
