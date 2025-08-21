Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A47F1D799D
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755785394; cv=none; b=gYQV1ZwXUw6s1kiDtxnfMoYqpYLEBrFxkWz92m1tTM3+18Ly4/nUNz/9YOTQSLIQV0pWuF4U+wpzzX90Zt5EZau3xyAV2UWXULBhqIC0ujq7rMKiPHQKfAffNt0lfHIBXsqSw5qc18q57uuXW3eEy3eYG3bU/rk+P2cJ6AuCCEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755785394; c=relaxed/simple;
	bh=yFYyiyIB0JGklaNFBdNxn6zRKomnA+SPb8ufX4r1NFc=;
	h=To:Subject:From:Message-Id:Date; b=uVXMOxrMxuPljXAJltImP99QFRgeEjno4ZDzAhozDMyvZC3Q1fqxdUdcCCfnvgubIc+7NU70SUyaC+Df+upz1rJoHJmsQn+GLrTF/f9CYShHlJdL2OXMxfhT6QlxsT3pP3MpWHwkZ8pSRBJNqO+wKkmUcqHFvJc4ChIXLiecu/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTLFwWjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTLFwWjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2792C113CF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755785393;
	bh=yFYyiyIB0JGklaNFBdNxn6zRKomnA+SPb8ufX4r1NFc=;
	h=To:Subject:From:Date:From;
	b=KTLFwWjrlC6XySwryO4RsJw3IRAq686bh+ITkScW5sCTIzMdyaY10G5DgsYUMy9Nu
	 JQg0EjVc7GRtfcnWpnoNoQt0YfWnuwC1EKqONbeq8SuHilN7fwbRBhb28crc6Ir87X
	 hzxRzG6LlrV+jwgayM6aYQp/Bv5pFZyr6gNnP2SyCQVv43+kGeadI5SV2t9beyV0Lr
	 H5LQdhRrARK1n8bNyH8Q2fPvbnjZ0Q/1H/QQ6PSov8ovxmBosalozxqu1x8hsHs64v
	 urgvzyBPLSU31gM/JAhKQf+gaPv49bfH2wrJ28nzzzqJpDRoY4bWf0kS65xx9BhGvq
	 dC+nABLehIKGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A0CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578539357.15912.16355191603731726189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da38a37d1b7122cb86461ad3cf279afbb656e8458b8f75f9114d5c3bffe2970c
Date: Thu, 21 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755785393
