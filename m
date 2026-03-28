Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2387740DFD2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774660494; cv=none; b=oyCISEW98qf9JqjIm32yz5wd6pP5yMlvWrOr935ld5ZtkSdIdjUb4ta13v0h1m1rc1rFiaJjv3iZ91S+mFZCnJEQEgnyle2T2bgWW65uiP46lWv0frxtoJ6d4Q8DFjoOLXLUfM44HHTN2p64WNz0nH4vGTsDMrArkGejJHq+7eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774660494; c=relaxed/simple;
	bh=iQCr/ABvqaFi685IdVa7sl8eelYDPxC0d4M7pQUSkX4=;
	h=To:Subject:From:Message-Id:Date; b=o++cYib5Qurz4uuj5zvt7ruLT/h9WTJYJ5u+fXkrK90wjnptWgQU3Mb/edzZ+hPseGULLCnorX5rliNi3PiA4XAZlMEe6K7OcT90p2lFu7L/kEhytl0vx30dsopMI4iZwKPcYv00sxWaBKKWZkh9FpghYtE06aOvy1uArhm7r08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/F5CDh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/F5CDh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9699C2BC87
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774660493;
	bh=iQCr/ABvqaFi685IdVa7sl8eelYDPxC0d4M7pQUSkX4=;
	h=To:Subject:From:Date:From;
	b=l/F5CDh3Croh61uFns8Y9W+ZWnCfo7PQFhjEjbUeFieLg7Yk+arIUzTlxmOWZl3WF
	 x1A8T7VPVW+AszikiG0OYjT9MR5TQqjJjz7i4zzFjmCwG9awirRAA6Q9IoDSN7GaPV
	 AfVowQ4VGdHCrCDeqpt0+nOmNimlWODOVliznjiflxxGjDhiehojpGarE3Sjjz5xNw
	 +kXX8bEM91et99JL+v/RiW8k2yoznzTgtxz5CT/ZAbt9KmzfG+l/s1sc6kH6pTYb9Z
	 ZuEGWgMRtyvvkazBRkVWBoQ3/i9/yEWGNyec/blfn8TkedNiU6VFmEiN67OA1fok9a
	 VSdhBifmYt0JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074F10F3DC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466049358.16771.14908625557664571146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5810006af8d3a9638fcc0db61b23785d0e174209357ebf5923ffcbb4a8368567
Date: Sat, 28 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774660493
