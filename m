Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AABC33A9D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768579434; cv=none; b=ECyMk6roU903aNxFaITMLhxy5i3fQSkDlBvzZCKhSTqi22FO+RxQc2SaaoGi1k4XAe9bzM5aR/bf3NvMbF940GCKLAvuVJ/U8XmBTT61g32ZPR2m5IputsRIjVzhIcQgMCfm5Q0+xFKMgm/SpQWIIiji/zvGhVzUojzV7WqaZEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768579434; c=relaxed/simple;
	bh=lTajWnn5Qtt/kHEjz9BVBTpiCH4WmIflZ0McFD2n/j8=;
	h=To:Subject:From:Message-Id:Date; b=OR+16bYbq3ROUrEuB+/sv1VuG/rNAIwvYTxln/8///G6YUlWqKPJ+owpF1loW/4fPAI0QgSPZkhR4geI7Ib3bo5SE/Vp0MCmy+T99gI/olvIZc8D1QC8iQimB2OYzXmA7OhLC/IJQt8V5iCXPC9p6W+7XX5zBN7pbU6AdXeCnGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oS7gej+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oS7gej+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E227C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768579433;
	bh=lTajWnn5Qtt/kHEjz9BVBTpiCH4WmIflZ0McFD2n/j8=;
	h=To:Subject:From:Date:From;
	b=oS7gej+ZhplZPBIz/BQqquX48YL7aNJjuyzrvhPlPYQAM/iO6vLeHyrBmjDK+GSjF
	 jyYDCAqYtRVjZEjQjbZ+DBbFZGAOrnXJeSEOQibF102UyraakZn+3k3UHxMElVzKcG
	 SiY0GMUoYsb6nQAFwPj6EThRUZh5n+zCHw0CFtvd63VgKVb0puWR7i11J+4SC/hBJ+
	 toweqkeLpGNWXtdpuNW5+nRh1JAPLiivcxugcuqiBFCP2+4NaVBsZLs1SgDaYVkk2Y
	 uljQVODSmvvoyiGTN70kA6oBNcLiT9/BLJEwdSviWB82To7yGxqEOVJ8ajqgNh9lM2
	 RjL5dTxzk3hDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A52C982D1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857943358.12893.8123754708641030782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc6c96fefcbdd90153338bb0403182c80c72a1972269f2f598c8152097f59a3
Date: Fri, 16 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768579433
