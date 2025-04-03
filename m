Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB6724B29
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743648595; cv=none; b=ABInr8iF5xpINTQRHn6wray3FhTR3k+ON8cC+xEgrLorP+QNLuLU7dcJ1irqeCUuWnxGs282sYsEJ/LagsitngNAR05eq8wqkkAcP8zGHBMVLmMf+lAlHFJDd1wJvS3W6Ks2sdACf+PmCYW9SLKwG5bvyGnAUVV1UOwxsJ9mayw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743648595; c=relaxed/simple;
	bh=EE3U9q9PVcM5sUQ2WRnThu3ywZX46zAGFnq7FzMxNps=;
	h=To:Subject:From:Message-Id:Date; b=QjojG9rEJ/d/ya1YaD//XqcCP7Z1ttsQCG6YmneRT0ZUYeq8ie+u5a+iD2AmR2y+ikC8OXMhGOGLJaD/ZakPSIfuCbsUjIl0/6IL+TuaAWtsZa5WzHy9R7WezX2b3EaSTFjCMOGkoSzrmakwHB+1+iysqIgUhRSAtjD0/H/+VXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENsdPsW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENsdPsW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C2C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743648593;
	bh=EE3U9q9PVcM5sUQ2WRnThu3ywZX46zAGFnq7FzMxNps=;
	h=To:Subject:From:Date:From;
	b=ENsdPsW3eEd+lb8SxCQIs1nr+kUn4l0UI0J46HWxpJcHHzM8l/s3H3hgitMjfPAlM
	 AJzrMS4S7fW2VqNWN3bZLrSDKWAG/VPgfPUuEnL18VjMuiDrllZhIbJkJ37SV8IdwB
	 jfD62pKYSpPiAA4B5jdv0kDXMoeLytg07K+0+OZ1ppZt4E0HJxkU+cWc45JvON0VjL
	 AjECFCiPYyp0ntzlDljPfJtJZ+vZny4SkLzPg6F2HeUdeiSq8icPRHrKeGd38KoqSz
	 9OOc46NPi+w2LayCnCtMk1lpoNatF81VwUcuAxQXAykIJHYv5U0Oz2eTBu9DSA89ZW
	 FBfbFd2ZFVkxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96655C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364859360.7853.2965763168808227334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df694cff344bc58ebfaffc0ea6b22f34fb6b2e1fd39810baff0317c81ed73438
Date: Thu, 03 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743648593
