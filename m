Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4AA1EFF8B
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758955794; cv=none; b=ijjY4pcQmWkngvsokn8xh5flS1fp8YVGDULEH9VGO7ftBinMrCgDQkGZL22ObVhdSKAkMwC9Qz0EpteAfAUfXrC71yCSRE22BjSy4ZTjph2tKkNF6v8Re7iuljITNZlWi06Qmr62jxLxoBEAVFYxxFTdCfU+Dg7IDGjeEVo37Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758955794; c=relaxed/simple;
	bh=LSLu7DEbHetHhFWfTT2uJGqeM7viCyVMssdg33s9Mtw=;
	h=To:Subject:From:Message-Id:Date; b=WLsZudC358dDVSxTrRZIS52NUDuNd+k4nC6JkjBbY1xqdM1pvJr9YOHHjpGHNebP+XQo3ylcoanrMspiP7CEfEk6y+0J32qRnjMxCVzc9kr1jGNjpjjh6enhrG76+qJktiaaT9a7cAodvGuJ/OAAYDyQyk0QM/784DonIXivkf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/YhkxYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/YhkxYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3795C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758955793;
	bh=LSLu7DEbHetHhFWfTT2uJGqeM7viCyVMssdg33s9Mtw=;
	h=To:Subject:From:Date:From;
	b=X/YhkxYb9jMmWoX6DRdxIo/wQe312QMjjKNAHolY0rxpFo7Wr8kizplrSC3bcWQjs
	 sGgi526lI56TVuhZPUBL6XQPAFOl4YfWCsgr/NvacD7mz/bcvT00HjJSk06hNoVks/
	 fHGPLUygTl0nj9PZg2WpcrKllGvm0UuZu8Ypo3qikqeChrzjKt1+Rh8P3ABnoHtqby
	 fv21/iVd+Ng4TaNotLGB4bHBOs57nBbHIddeM+ht3GLTXBUuCZ228Y21Vc4RMKSf4F
	 rvS94qgkaRuag3Mro51cjsjzl2MW0DPwcWNJ/zjNzImacEn2qbwsWw/TNr4xSWvLF+
	 O1Y0V77XYonbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208BCAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895579359.25265.11003821223582534539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec1bdac5a83e3e91365ef2d174364af7972e957737fd9b6627b82f5543bad74
Date: Sat, 27 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758955793
