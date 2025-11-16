Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4D017A316
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763259054; cv=none; b=kMRorh2ZdIogWPPi0RapUsZT3izFZulq92SvXG51tcA8jjDPnZEBL81F2TAGPiXk8aq2N/XqsIXZMDztWdTOT2d3tmn0nVU/tCZa/2egHOsJdOVIPUdbX8P3QH5AALOCVHOwTrVeTuxetp72ln1YLbQRw1EpG67nSn5N6NCN0m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763259054; c=relaxed/simple;
	bh=q1wDAQ5HxNER07bTUJA0ypB7flL0d33Wg68IPG8qFrM=;
	h=To:Subject:From:Message-Id:Date; b=BL6cdpoOb/4of8TP4Pth4+vNPlUsgQRrIWxg7f/jMpKVDZFz7oO0RICxw9aeAPOF/ZwQrWU8RFNfdAbfKIUMUemctEyedcAWaBpcY/i+P3xriiWdkT/hS2T/YIdOEqundmXzR/iz+5XuqHUuTvto//QwKVJ2yxEv4V+yxf57wUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GI1EzNzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GI1EzNzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCF0C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763259053;
	bh=q1wDAQ5HxNER07bTUJA0ypB7flL0d33Wg68IPG8qFrM=;
	h=To:Subject:From:Date:From;
	b=GI1EzNzEdDWMr9nDsQQ3qSVYEaiK8lJEN4Pt7IupEqS49xR7AHQmKC9EYXXsqf3yr
	 v6SdbdAJTHkkk8uiZVrXD11rdRQA3qUJJW6UQ2PA1Hy86kaihMR9owmR2A21WDTrHD
	 5JCqDFRvk/sy3KeJx7f8r9T1qb7quBe4fGBRq3Ajp+KGrAU4zWSzxO4uU1QjJK/3F9
	 m+g+uO7Kt74rr8XXTS8Optqguq+hNwF2lBXEaoSTZzhC7B6UPEzcFk2+zX9GZQKMON
	 VcSacz9YhTXKqJiNCxqE2ovTOEF6bTaa6ypa5g4CyOAytxmrNM6MrB9VM1uQQI0zep
	 S1h/LFzF+n1KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F802CEBF88
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325905357.26361.10951361440753262523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0796795038fe94b5d0a1d831771c2da5dba00a637abc0ad043c472df59160a
Date: Sun, 16 Nov 2025 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763259053
