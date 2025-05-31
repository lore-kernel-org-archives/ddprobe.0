Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3270C239E87
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748692194; cv=none; b=AH+ZbCFsisODpH9wAJvfEaIU4FNK3nACKZ4X6XXmlj4eeeulMAjplHGYw1VCZYDAbntKAweB/D7GOc3+uqv6G7jPMRXoDQPlxkDiSLuNV+hvlbzV2ckcNk2kBUTL4VPVseoXi8UhNk65dYZawHLt/+e/iiuOdXZpJp1tYf/+uss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748692194; c=relaxed/simple;
	bh=6OTzwSee3UL8SPLvibmAtOg9q3QJMMsD+1/c/onVEy4=;
	h=To:Subject:From:Message-Id:Date; b=kY3h+NoDRBSlccqdVfJejRjm/eiiTWDUf+xtwitKfa+1AfRPb4cujI6R71LcH3xHEE8COrQQmowXFMDDOHNX74niR1V1Gw+W3YlfPSpm8pOlphZMW+IYcT2Mq+JCI5MugHRe2M0ee9kFCiHp6eAzJo+hVTjRvObOxQdETOGz8fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EP2YIyf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EP2YIyf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4427C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748692193;
	bh=6OTzwSee3UL8SPLvibmAtOg9q3QJMMsD+1/c/onVEy4=;
	h=To:Subject:From:Date:From;
	b=EP2YIyf1R7Htp2BIeMa0lDS06RFhK8KVo3DRpPpljNkMfMuLpE8Od/l1ggShBx5B4
	 67Sz3S10QGf1S79bsr4J1VExZApaN7HY6zDsw9u67V+PTFZz8jd0ZGg9j9Xzqtd5ga
	 WNXUp96IJR8zQAL9Deu0e9pOmoV2LHHrQoBS0NxnO1E2aKBRAF4OuZAvsn0W5PlRpx
	 yutsjbhitYRwUlsGk79ALN0VqBA+As7BMhmSAfKGefJ6XuKaWW2v4Qlo/9Bfj+jWyR
	 CUJ1/7g5SheoOluDJv0GxC5jc6ob7yVObMuHN6for6BZwlCRsptERyDaWYtGrXx1gK
	 N+EJ5D0d8ZATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517DC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869219357.27838.7535517760895235653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52832b82e45b4d87428459c8f5db07deaf987a19bba8699c12d5891577aa18c
Date: Sat, 31 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748692193
