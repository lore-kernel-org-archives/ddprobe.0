Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625DD37B40A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790547034; cv=none; b=TV02IYTLZbKIdfotyhC3Z1PTBz1MFofmIVzq7lg2aKits7JSOd7kZYMLXHiCdNNqjWznTGYCHF9TvCam6e//f+jJGngFmsH7v6pJw6KmV2hl2ZmcICUidedKNNwNoZOUMb+kwakqS3ZouHqU8DSVSajtXDg8IZXS3coLwaDqhsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790547034; c=relaxed/simple;
	bh=DUQKkkgMD85m3KiHzMiBf3V79YzzyVOYVy9qwPV7M1U=;
	h=To:Subject:From:Message-Id:Date; b=sPUUB0w0NoYrrTjcCAjuGGXNCNSMiGsafgFy4dWKiqtZehAIndFhrvQ5ZzxgBcxfnyC7qckZsSU3q9F9sN2Ca42d2ISBZhMTbUCf7fKGJJvM7g3q5hsw59tIhjbdD/wSn9IKsZoLDrX5jX903quzQkybDFVkhAHcJrsClPob6UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpU8fXbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpU8fXbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D400EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790547033;
	bh=DUQKkkgMD85m3KiHzMiBf3V79YzzyVOYVy9qwPV7M1U=;
	h=To:Subject:From:Date:From;
	b=KpU8fXbCmk9LkjPbRIHvPBgrO/tlG32CyHQsMm0wj5qdDqlLOD0rYZIBUNLJnJKHD
	 /8RV017tc1rU0vOIcCxFamM8Ljlz+HLv+FaptB/7Czmb6mompyvpAViB1nKMyLjDBA
	 IPadpfqDgVqraFwI16VTGuJCx2YOY+C0LqRXpJXoaIW3YeHCNtTBjPoPwfyocuoigb
	 VGzVR0KMdKIT3QbbhX4LPkyhVInk90yKP6GwLpvJOwTcwpmvpTKgWg+dKC2F4e/T93
	 5T7Qs9TY5q7RK6fM25gyqb199rYnjLsH3k1j+B6LrYiTeOnyKNG6YJcZE+/ii5JI6N
	 q+8g4y2I1IB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10A8C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054703369.2566.8342547975922692450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3a25e2fb99aa705da1cbdee14dee90d1452f571b36cd49fdbdcbe21f91c003
Date: Sun, 27 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790547033
