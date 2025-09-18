Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2B113B2A4
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758231594; cv=none; b=Gvu5JcAiswBOIze2hkUOnAecJpwEAP1LZy2zjJDr4Y+h0EW/dBHjTAaqa0643WJafYCk4LhKsj2KiAtou6rujJchEoJQep+dIBI1hI1ji4BAbOk5aIpBNVGCb7iM3CS0ihHUKwerzMSTqtx26M8Hk6cMZ2k/VafAEVxltQ5LBZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758231594; c=relaxed/simple;
	bh=l/nLjq1Zmv5DgYZ6tWhISPvgDYgxeNC76oNvNfx4W2U=;
	h=To:Subject:From:Message-Id:Date; b=ag9j5+5xdQ+QuzS4KD4KyV4p/LOUWB7vUarwYXNzEMZhTWn6FSF1NRa9muScrzqIezEt9B8qiagtf7NcBe8bwZnNPv8DSIFRwj1XaCyu80lH21I9wfbt2S/aAGrlT1ZyIFbO3vRaxoa3OToQKFXsR5jCT4u9ekzljBghb8uMVvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSCExpy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSCExpy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758231593;
	bh=l/nLjq1Zmv5DgYZ6tWhISPvgDYgxeNC76oNvNfx4W2U=;
	h=To:Subject:From:Date:From;
	b=HSCExpy0seYQZ6zg4EqcDXDkqZAu83iJs9k+GC+EMPjC2okO2FCR8QLgDfgbbL0j9
	 KLqJTL+BmrL3j5GnsLh40S7Zdx6s8gA731YtYc7KjANVvQOpi1FteoqkxXTG50Yt12
	 3u+WXCRrqJvFxK8g7s3a1H+SFoeGYzuGUqlOxqY3cvr1uu5/J8CE7elKm8zQwe98b9
	 yXAVRcKKH7vlpiB7XqyK6te6MecYO8yQc31eUr87U8ls57AxTKhKTw4tEJpSsSTnqF
	 495V/HmuJzk/y1561d8If/68xKW5dNeaCAE8mv2+mfD7Z+LZ70tQSJsvKThBXoue4t
	 oIKXwC0c2T0iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BAECA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823159358.26369.13433964719159434730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db79142219156a59637b5a7b3816e1996213bc68147fca73f2e1c2f25debb5c9
Date: Thu, 18 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758231593
