Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B6C20458A
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760312394; cv=none; b=CvXZcu58GJCSsPo5kpeil0FeMAKblBJ3i0ZOiUMWKW5wiCuT8Lfd4d9rsShA6sIyxGTHMNTYZwvLC7wLpqji53zvaONz4r44JFD3A6fS/P+PC7EbfblL+5tjp3/1OqfK0XkZ4ItQO9d2WTv910Xga3FA/GZMFdqWFRx4EefRogw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760312394; c=relaxed/simple;
	bh=RRffTn50r++VgtjUIIAdspKJ5dN7wFc0a/I5IuRevV0=;
	h=To:Subject:From:Message-Id:Date; b=kGKp0lb/UUbIOMM5b+ONF1Rcr6M5qxqpCrjLm8KIi+ZBojKo9mWb5siS5xj0oYK3S5qT7c1awbh1o7R6yLX6jhyi6gPsGJSyG2Kpb1EHI7PFqdweZprKymKRzPlMoboLALAyHMN33ReEArjbYOVa/Ry+dkEM1Qf5yyoQdUIXfH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4rUhkYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4rUhkYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA51DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760312393;
	bh=RRffTn50r++VgtjUIIAdspKJ5dN7wFc0a/I5IuRevV0=;
	h=To:Subject:From:Date:From;
	b=F4rUhkYW86f7y8znH5zy7yoDi1baSGTuE4AXUN0uHdxuD+NHcjC7JzGXyt773Yu3u
	 GZB5/wcI/RjYT2GqUnyHZQ4T9egOkOBaj7WPdshaHV4zGr14HY9NC92UVb+XcVOwmI
	 J5yNU3WpMEC+J3gz87FtplH4x5ANh10Tr/S0JOwrxREQSCkhB2JTQPTtsOo+cKbR5x
	 epZecmUb1KdNi6WiAVReHmliSY364wapO98K75a0/QHPBK7NZfTLvpuHSN4pzAC9NQ
	 xlkxeQOjtoQtBj1J3bNzgWXLPSVUl3o1Qhzuj2hvvFmag3bV6EyqeeKbjV8AH+Rmop
	 wy8hQFl+YaMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96093CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031239358.20494.10554732613942084561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3babe04ec39c2d180d4304c5ec333f1e42541d011857a0d899974fa3f2721137
Date: Sun, 12 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760312393
