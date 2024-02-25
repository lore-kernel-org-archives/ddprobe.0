Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD9F17BA3
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708877897; cv=none; b=ni61uGitREYVih10YFmChwlD+gJEl8ert/Jx11KCtGom2hEb44sYhm+7cFBUjzPgRwO78CEah1LZb2rccOFGelZc4JzuFs8T0OyB05/Fso6zu4O4QS/sth8U6LEkXf0lxRkYhXQ3pejNtpSTvndmbTJAtacrGOdtILQY1M0S6ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708877897; c=relaxed/simple;
	bh=6Nml1UJowNLyp8Ns5AhT0uJCJ++1uqIqQHNxAJBQYiA=;
	h=To:Subject:From:Message-Id:Date; b=A0j0ZhM51yJv6wxBUCFNnYr2HPqsf1cvkhfJ6YYy1SUaze+HipC4BqOyhH1VKyJaIuXMflyAGhCeYpSQ+EdmdeW5K3jCjxRFTYLvIRfCXoSoGUzTmd1XM8s4EABkDGfLK0QFbFusAxfhDJRbTUZk2URToRkgSlE8ugXvmISwU4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpiNq2IH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpiNq2IH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8346FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708877896;
	bh=6Nml1UJowNLyp8Ns5AhT0uJCJ++1uqIqQHNxAJBQYiA=;
	h=To:Subject:From:Date:From;
	b=GpiNq2IHgo3Yv1A2Dj8WGeubQXm6kai418Hu8wgIt2ln9AJc58dr84RG38jc7cuaC
	 k/pSg7zLnvPKZEfV9QtaiquyFvrnRJjorScExp2bNqfMpg4GZap2w22BpZt2Bfadt3
	 T07Nx4vr8Rba8wvcwvo8RIjRJf572fODBsqHMn/6O5ylrrqcM76pejaRcnHxmdfrFS
	 JZsBgo3VJ82gkMQnXWEze/FBCc5epcWyhFkczVqo/g0N1DiH/gB72cc5DMs9sQSroA
	 7sUDhXN0emv6Gj6HHGmqCp8D0Gy1c/duflZ/O+fLXWLfZ2aTIvkTGWG4flcvV4qCn2
	 hVNRgyY0pAjuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D4DC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170887789638.22793.11810417339863513077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5582f72e1e295883b24f2702bc069f706a85175d371eafc5e0cbddc42a8155
Date: Sun, 25 Feb 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708877896
