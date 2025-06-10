Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A9F2EB11
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749538794; cv=none; b=cSth2LGzPd9iv9EWc4UoMEJJhTaCokcm/hgA/H7CwO8VNi6JB2lM5YzcOtDJHXp1VqQ/JwIORP4G090Sg8HZ3Cbwk//TOUgHBfqocEiyg5fg2rwpcBa7nOfa3O1Ai4pl9LXueBiKzV4R4vmHZC0Jz30K1Iw0htldEV5Yxgdk2p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749538794; c=relaxed/simple;
	bh=DAsX4qpS27GZpZQg4j9IPnKg6NKctiDif70F8xjUJ/0=;
	h=To:Subject:From:Message-Id:Date; b=RZ8rLoEXntd9D4Rym4X/+NuPcRG6K8Y5WKm9kBVBhhYg+BtEHM0nqrMOW0bVIfSGwgFmWanbnaWHITyl81BK2z944ia2Yc4iG2xr2vhQg7764HWkmhF1gbCzD6dvEhV1W2ANf01PE504vNCcgRhBOd1N1Q1jUjnX1hkOkDjIkzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4wqOr3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4wqOr3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC85C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749538793;
	bh=DAsX4qpS27GZpZQg4j9IPnKg6NKctiDif70F8xjUJ/0=;
	h=To:Subject:From:Date:From;
	b=T4wqOr3NB36QjbzQKcyplMJXRX7YufGJPzFiZxHyYbcmPfaZb19Q60MujDmX1M/vZ
	 dIkm2JYEolYEEDs7FDikJF2DXDoRRMWFH9PyzupZEKIYLojk+NrQpAl3m2zMusfbRp
	 SxMWFSBZDaMLbXNMOEZ3Mh+gmf9DQ7AKQCJrOkEiW/oX/VO60R5uyBoUL1nIGx6xv3
	 nDofnXW3zQwIQUS5aN+JjR7UajKEmC/t6I3UVBENBkdaVJNisONgmZRTYZ1F6gJ1f8
	 6O3n64T3/JnGxGxZdS+rDgUD1gPANc7IZPVFCkYXvFCbG/h8Cw3UniAl1vjNQx1H3v
	 Ll7eG++B2hntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2FC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953879357.29297.14677875569814111565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cb1dfd188e4446611717825277e6e4f5414342b3c2f648174604306ca54b25
Date: Tue, 10 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749538793
