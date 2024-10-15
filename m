Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25427442F
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728968154; cv=none; b=tKXjK2eP9kr+LYWQQajN4HHKmZSYinK4LZRrFbo71jVDSv43hmuMtJjoQBwMuQbAaHMIl8xKb62SyP4J67v5dnz+Igmu8z52FFUtaZmjv21X9WvYSqnRmnf1ADqat47qw+B0SxsyR7rkD8Fu/ypBQM3Hp9/pz1sNKiYCk65k1g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728968154; c=relaxed/simple;
	bh=7Xo8z3jJYiaZ7QXe1sdmDi/fALmr/KBQ3bjvUC80A+k=;
	h=To:Subject:From:Message-Id:Date; b=pJLf1RVjJJfCnb4QFw3uqhPGeoU8cwUonXlUY//xLNXYAYkS90jXR1ZAV/Nm/YhQcqQSjtQss6jxk/EnskNmnnWc0sSZZYOcW+sjRY9Xo/Zos5avJydlHhZuleiRG5+2uj16IErmPJy1kaO9DoT1qCW/a1YvI87V5BG4i9GX/t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYTgb9Fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYTgb9Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7757C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728968153;
	bh=7Xo8z3jJYiaZ7QXe1sdmDi/fALmr/KBQ3bjvUC80A+k=;
	h=To:Subject:From:Date:From;
	b=NYTgb9FlGOvX7BIJaTFWFjQu4NT85Ex7WYz7egfZEzazTCHqh03e2E26B4Pq3b+oA
	 dgiiKCGyr8lLO6kATLuce5MpfcS/QwKv0BvywUgwsbvNqqGdao3RG0KF0q1nt9DvP1
	 GrT8a8rV6ulRRW4qUykXZYTS2J4r3w/SHbvKOeRoC+WUyQ/bRlFT49fZrFIfek4eTk
	 XaQ6fGMletrm9WVA/R0qPc2aHzd7eL3mgUl+Fx5V9Hmy+OKO/Q7uRsu9cF83CNzFEk
	 VglxMGGJRdhwINpKY9AQw/BVxgAhsa7eiOEw0dsUPTG9bIYwokVfNSr51IHgTv2pzX
	 vt46UHmVYvmpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E04CFC266
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896815358.28942.7711647299692354314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249f9c3905389c8706515d145074d18416b17173be5160aff7d423478ff859ca
Date: Tue, 15 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728968153
