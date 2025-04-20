Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DECEEB2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745136594; cv=none; b=j/DAKjWg+aikseMQugank/UpXLSm7YcsZhFNsjHdfu/8fv03k99wF8luZd2C6xlDkIitQzwJOxnsCycbw8GPjSDQuCU6+Y9Qxtma1fB83GStM+z0QqSujNsMEPfYlbNJhBXBf5lJGpi2PemKgURYeLqm09tWFoKpuJmZc7KSj2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745136594; c=relaxed/simple;
	bh=ouWAGHmYm0NOL02+njT52NVudBCXFelorFxxMHL5M1I=;
	h=To:Subject:From:Message-Id:Date; b=jT/Tcmnfdv5Vs0+Nj99a9g43CX2hRcuYzQ05kY/k+hiBIxaobqqbJjifshJe+660WpEmDyQibaSUG9JRyd7fcQ9WNo97OR4vptO0wnZ8a/ZPFClwQ+ZBqQyGLrJs2r2M7KidMRG2OV6GNuzcB6FN05LMVenMKNMmXeUvhMSbz7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qn/XHXCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qn/XHXCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F26C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745136593;
	bh=ouWAGHmYm0NOL02+njT52NVudBCXFelorFxxMHL5M1I=;
	h=To:Subject:From:Date:From;
	b=Qn/XHXCz+74V18Y4dpIwsrXmMKTDDiFuw2ywJEKgJyAIUjW0ygevuwBtg6Us3nGbh
	 nA61r5P+7OJkZEmwA1PANVXN8OF4s6abvF+sA3rMjCs8gFKKwDNbySuT+o9MpK5mae
	 yCnuw1oLxYL0/lQXH79Zr2Ygz0IeIV04zkqAvuf7/CyqZz89fhKBtBhCxvPeqstL85
	 oZ3mrALME5bg5eMZJC97/2ZemDHRD9d57jsUwwS+oh4nbwqdEeeDJBLxk9odpCuZnf
	 BOaA5sD30KJVHjtgTVnk+SsExprN/k3NwiIIC7GWHT2r+NIbRgKX1Xt9jJXYTHwml/
	 H4QoMAg269aBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A96DC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513659362.1248.11706221749238657386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd18eca56812a1ede9a661f30585b11909e631d85503c36683502f6887777b58
Date: Sun, 20 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745136593
