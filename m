Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA2A14A8B
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753578595; cv=none; b=JmDVc6fM1wjjQ6OJEaYs9qYyqlTewiWNDK1r/sifctaDaz96fL6sSTErYhlxbEDXR2M0RvFFcb9FPTNw0Fm0xWhyHqGG+UwYWLIKy+UpLV4VpGuLmlhN1Q8bZeBvGJ+QZLYK/UzWVc7kDuTC17D4jURXPmOP7LTkFqzxyuO2Blg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753578595; c=relaxed/simple;
	bh=cErJU+/sasVjbAVIx/JcJJ9TDM591mMiJ6abIl5I9Ck=;
	h=To:Subject:From:Message-Id:Date; b=q4PgOZ61dhF5HiuqkdrfGPlEiTh6cA7cYOApX1nKU5quedaZPRntNIq8w7/byD4HA1O7XEkv9iSE84m89mcaRCYxLpEOFVodVrtMFwULbY/eROT2Kgvp54MBPUVWuCmiOZOSWTEYrKELWQybq/JVsGo0A1mHc6Xt31kv9Yg0ZIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc5mdvkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc5mdvkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A106AC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753578593;
	bh=cErJU+/sasVjbAVIx/JcJJ9TDM591mMiJ6abIl5I9Ck=;
	h=To:Subject:From:Date:From;
	b=Dc5mdvkDe6dFC/zXE+9iO3lL5S8mIS5+BW/0a34fdSizNt1N5jyklN28xKoODjbyJ
	 e2XjOrxjkFrw/5WuCw8JbKjFVh3gDi3vtKeyjxRNcPJyCGW2+NHtq714WS6daW2sVu
	 LLYng9OtXk/ebv/XnmlUK23mQt8Jxt1h+AicDaApIkAiiSpL86Hoq2xCE2umkoTYT2
	 jbhSj6lalUYBTDwLp5wIVFOPk1WlJqex0L7dStfua51Y4/8pA5dkm8vQsKg+sdNyiq
	 gC04bkE81gKByBGlVk8o23OEc+PZ9g9CvNJg7UtBmi4C5CBfK3Yeoh3DcW01HrJHPy
	 QutEDhhjpgsvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE58C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357859357.6486.10575879573780873251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c368c2bd260fa771014cbcdfd2dc8788550df0e8913c6e89b5e14dbac4cc24f8
Date: Sun, 27 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753578593
