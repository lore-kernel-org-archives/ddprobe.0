Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B12F510
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759714194; cv=none; b=RzO02tT1WVSRdiLqnFbFZdKIveRecgzoeMwlsoYhk5JnEzQhNNvMdNbwdbHPchHMljbWPKdqwS7P8uMGfXokm2DhXeSpD870ZAdS23gPkmJyf0sHA/1OLoemg44muDJiwGsWnT1hkSeDEqeWWrTbnN73DWX43usE1FordCWIyCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759714194; c=relaxed/simple;
	bh=KvowvrugQjSlvcv6SgezHkzJmr/hBtNBrDzTl4Dgf84=;
	h=To:Subject:From:Message-Id:Date; b=LQy5pgBaXWatxCu5xlAE0irfyV7BY2UUvWY9fxcCdA2gNlOth2dWxqHv3Cj/VfbXsmc2qvkqyrNI25gPErNczNG30ynltt8uJEpOMW1xC5Urh3xQCFG4si6XchjUTqY75If0pZt5a+zv8AYz2jvgrqynphoqdmgm6vvZPBi7aqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxGRnNCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxGRnNCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44FBC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759714193;
	bh=KvowvrugQjSlvcv6SgezHkzJmr/hBtNBrDzTl4Dgf84=;
	h=To:Subject:From:Date:From;
	b=jxGRnNCc80JiOmTvPU8bjA4pmMCSqCNHHNy+koaoqPmEdzoaMXH5s2uxU4k9KePRv
	 +z/8fcNJAZARQJg9XuCj00JJoAvnJDCwvzaElHh8QCS50bKTSLo4/R6zeRNl7d1y6r
	 jHVs/LYzzfQXZzn3QvfVy4CQS9k542F4nkecoDw9grkGyacutytWoQnlzc6NgkgXBV
	 vzLgP9SXod1MNU6PtFqxUCz1wapfOTooDlvLmsZXcefA10LuVZE8Qt2LWIb45yp4n4
	 W38SWfXY0GIupmb7K5oczHcDag/JV8ESZS5aWyal128rm50GTszaNR/9Htrxub1UYo
	 ejvZ8x2tNWEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950DECAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971419357.27448.2400479218926035574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a86a2833328151a56779605edd5be118e8b148b092278c3984410c8141792a
Date: Mon, 06 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759714193
