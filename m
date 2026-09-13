Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA4B223DCE
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789305034; cv=none; b=ljaTXJ0xGCgSEGOjziazftYSOAt0KB2fivzkDNZsHCdQJOJBum+uCVgPjI3hSLyv+LgbKyFufoCRkuDB6thcgzPJn/vdb1Q302IaX8u0VBzevLcOg/4svvHMkuCSgMp7knarMnp5k5sT6+qkAw39055X+FVYAE3yxeMqkCcRHAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789305034; c=relaxed/simple;
	bh=N3cPLHfvwfufansRwlAIUZ4JCXWq0Kbx6GlYsU5eUVc=;
	h=To:Subject:From:Message-Id:Date; b=tirjAUtLbvsCgG+DDcWEgTcK1525JoWQI35KaaziAwRdD/gZKSboWJuj7Zku1p73+cXWSHWo7eTPi9gFzM0HJawRFOocKCMRyKwqT3aCnasTyp0v1t77zjtkdmqh5mN9rA3SnQFG1ourmMD42at8X+vmw8Cz5h0DG9f/1XLNo6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fevb5g9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fevb5g9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3267C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789305033;
	bh=N3cPLHfvwfufansRwlAIUZ4JCXWq0Kbx6GlYsU5eUVc=;
	h=To:Subject:From:Date:From;
	b=Fevb5g9cg3yeB6eWqfoP0AKmRkZDRzWLgfJJgdZlZs0gdGHKPQ5mtA+Dd3CrNypRB
	 5aW+4GCnLmH9O2upjuzQfcSujuaqxecJ/hiRJHExjB7R9o87AgOom5BEHVZHVUT4xC
	 yGCeA8nzckS13vWEZeadGoTzoSz5XKU4MqyYaHj2WZwgF1amddakd400lZup1wB9Cm
	 i7z68fV/0d/qDFhDLs4YKDbiHfePuG9JXrwxwlpAgnOTSAzq4K97cylSy+4V2CJOwI
	 S6zjp67qcWoCx2MygQ11HPNKIOGbVtySed1QiYRsFLDiK/z0FOw02CrHAWOlDuHvXQ
	 xvMItdO/pa8Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA3FC88E66
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930503368.16889.2010324600717402752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cacd70b8d57bccc79c9035633866c4314e19b0964be62d66f62787f3d77a741
Date: Sun, 13 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789305033
