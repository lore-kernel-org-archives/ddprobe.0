Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51842312814
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790402434; cv=none; b=oFHGsMS6h4S53edm6Q2zsSIQWfMmOsOzp0uv0Aw0za6f3x/tcxCzKeLkg1iuhj8Pt1jOMPasR6aQLrsyNQYZHGMybQJCi85cofv0r/48/Qmuu2PX9RIOH9NQ+F2R/GyJrY9uf+CfOxFUwReA9asPvpRZ0jLqSxt8hd20DpXgwXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790402434; c=relaxed/simple;
	bh=twEDzI9Doh3cNbGdWWMFMEAJpVBufsAidg7wjXcN34Q=;
	h=To:Subject:From:Message-Id:Date; b=eWdnM6vUQqFaG+xH8R/OycPHM1Sy7+3fOOTPwFFBmuNKQVmYK14S69WNRjYtCpN24eFiyL9MCbAYaA8/Vwwg9LsMEuqWSKZbjs4hTu1/rcpcEpazZVly782jHVHEX1Y7ctWheVjcJdtSU7u2Lo6bkHzXy9E0KcS6NGO95IdQ+BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhezOK6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhezOK6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF09C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790402433;
	bh=twEDzI9Doh3cNbGdWWMFMEAJpVBufsAidg7wjXcN34Q=;
	h=To:Subject:From:Date:From;
	b=qhezOK6Jc25v7yi+oM09MhjDBB146ZI5TXdcdmhaMYPWCsz0vbw4SM3bqr450KiCT
	 ULk2XOECz1cxsFhJHSrIQerOZojGBie18JFn5F9w4t0FTVKq28pzDdAGFda9SC5HWG
	 qbh9UI1hCvLYf3mM100xaBUCehNvz+rbw4+pviVNiH7OSn22tX6E/OJzFHJuLxqu8/
	 huFGJ0VzikPYYTw5KzWf06Q1RGBZ1nTvsgZ6GSbRDRSZCfAdsPokHuwssOG1VEMxlV
	 RBNP7Hm8FDL1qX8RVT9gr5v0c1tXRobJmdS3I7PInONbDzIQ1Bj5N3Yy9yxiNShdTQ
	 ZzcdVlym0hXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBAC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040243368.14548.2003192834811360113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3041113dc374418ffd7d0ab756d1673cd0a85dd3f8d07e9a82f160c2aa4a221
Date: Sat, 26 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790402433
