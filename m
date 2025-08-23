Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFD423B0
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755913194; cv=none; b=AQEPqLGcxZm/FtSvumKUEpWg2XJcl6uuiBFMNxKHOU27IVvYCkX7Bs424X8gePt07O1iF441RcBvfUvfJ9sScKiFlxCHmxWCQ+E6xejTkWdiqsHOZA4sQsC7Wx7JdeDvXdoHqv4re+HjlfPXvwPMQ9YQzmz/J6r174ToHJ/x5mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755913194; c=relaxed/simple;
	bh=qbPnbJSPjsmFWhqjsMT5TdBCEkZlLDEkS2bz8GyqRuQ=;
	h=To:Subject:From:Message-Id:Date; b=BQSF4qK1r+U3b8joSd9n6C9RT9Cb7WW2BMsNKMOGCl0mVNcUaYOZQyAJKolOXdRMF+xWJbSTqrBh/2A6k9Kx2VpgZjni0s60mNgDBKgSTwYaBXel1IJgnQM6oqqtJBwmWmd3TyouwlPgmJlZz/+VZTjbjg2+QXTPzvy8sjLO2cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OacDr9TU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OacDr9TU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2FC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755913193;
	bh=qbPnbJSPjsmFWhqjsMT5TdBCEkZlLDEkS2bz8GyqRuQ=;
	h=To:Subject:From:Date:From;
	b=OacDr9TUE5+4uotJ9s8dstTl57zawHJUAdzM8Y6lJFmuEy06V2hZ844nHonnvKZck
	 ltANdCdcBLs5L+fUpEGLkjQXcxSYe/2C9fwPeq7aCFPGlOi8JcT/fhmYuNes7eflGQ
	 dc3IWygckK4xbeMRhCnSG8A5v7Cobyna5Mw7hsw39BqWiFMu9ublzKxl9pKWCUC03I
	 +DfyJ/DR2y6TgnKRxkI7CtbCc7bBEbkmo/ZuoAcUi+HY4I1Z+K9Ic1ZKIMNiYKR1IQ
	 YG3Mb+Uiytbqz3PqETkDCddd5/VNeiMo1rlBvgNAzksOAPPfY9yrJTVG3tJuYJQE7I
	 x0kYxVrOVoajA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92604CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591319358.3382.2676800178594406672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c986f83ffcd5f9e1424a68bfb4659e397f2929e5c81b3e88fb4ba751dc69709
Date: Sat, 23 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755913193
