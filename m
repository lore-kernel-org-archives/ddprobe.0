Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D51713DB88
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720203323; cv=none; b=FcsKD/6PIUf9ns2PRl3Qyr1ckQ92Ixemk9De4emF18nsqJcEKd6nW2od9EJ3uHLZwmo8AXO83/HLjwefG8N7GC8C4L3w/rSq15709GA/yZL4IHyPIvXo3XgatZr5ib9d+vXmwRLj78jzEJkD92A8rQ2rvYgWuI+WuXArB/XLx2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720203323; c=relaxed/simple;
	bh=vCb5bv1SWjaHNUBLd9nXoLwlM72HwLjXTqtkWpE7NaU=;
	h=To:Subject:From:Message-Id:Date; b=gtIqwAUrh5MxUZNfphQdhQgk30KBnmwK4kVfCgWtpC24iWJZTSiMBemDLAfY6puY2UITFByrnQkaFd9/ywGzzma2eVxZ/UTNYhiGeMvNN5Ko4J5BwDlHxDr9+XS5uV7py+XKdQ1o2tHt8Gd+X+yl0wviNV88+GmqDTwOaL6gBB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7MxXr1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7MxXr1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E9AC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720203322;
	bh=vCb5bv1SWjaHNUBLd9nXoLwlM72HwLjXTqtkWpE7NaU=;
	h=To:Subject:From:Date:From;
	b=s7MxXr1G/imH+Y0841pxsmakatf9OpcNZj4QOymCLJ0k7OdfxfG39+8IJHO1pBOS4
	 0jCzAUonibC7xw26xrOAcSC/ewGohYZh3E/bGuJxaaREZXeYZbs8Sla5OIcENsfwy7
	 Ei9BUO9AOStjyozZm3WSmedmESETreBEJbU61ea0gAe2Siuquv1mwkVHqDQXJ9jSn1
	 s6vhQvByCOyK32334km9WM5F3os3ZZAo0z7CJnkKyvQV3i7RFe8nevpHfWLx5KPj33
	 sCEc+QrfIGtuzMmIkTBwX34ZramCKn1N2hD+sct6NjNFEaHUzCl4MB0Xth95g+biUG
	 RCQkexmGd4d5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE272C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020332276.6608.17875615259804519911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31bcac8f2ce98994250bc1b6ad17d84f0c5a44f5b7e577f5d19d21a151057f34
Date: Fri, 05 Jul 2024 18:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720203322
