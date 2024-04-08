Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E4C171B0
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712617097; cv=none; b=q7kXZPpDWrrpA+fJwWWpgIMVwEHA+BYGdqy1gHobT8Kq/T96Keii+DilmCBDOXk+HnwrzstJPO4bgTuvAjBMP2XveoB4BIZozSvqSVTJOgDW9gmagAoZljAMu/9JOOQPzrg/PTmGHjCS8wW2L+EYWnLwEm6wOVSgDpplcqZhWDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712617097; c=relaxed/simple;
	bh=qWOQjjCZzKk+goCd5goMj791MDhljthO6nm0/sOvnOA=;
	h=To:Subject:From:Message-Id:Date; b=LBH5y0Ke/S4enldtuia+9I0zwxAKq72PnHQIZQ2W/9t6PSRQ7CqRNKyXGpP17OS5CbjV9r3CKKd9x/G309K/9AujMydTunwHcGHDZSMy/GoHwISH/PepYbTPw7g3JW9QQS+36YSWxr2TZs7l4yHcBGeWUabztNiuyqjEDfBG4/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tabXPU+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tabXPU+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB55C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712617096;
	bh=qWOQjjCZzKk+goCd5goMj791MDhljthO6nm0/sOvnOA=;
	h=To:Subject:From:Date:From;
	b=tabXPU+GRL9Jh0x6M/NCCAz0qW5pgKQc4HcNUfcJmA/UOO66EZnZHYMXEowz2TTxs
	 7c9cNJrZGjGsxcWzryyot1VuUfTZwhAP4GVYxGeu8ASKy+NuqwQb1ZSHnttmP39xo6
	 4GcGYfJklRlPKv2/m4Qv7RfNvhOnGWY51l7R9VCYQljgJIv1KFDII/ht4yNqU9kr/v
	 PwlhKAd7pQS6KJIukeBg2pNQdRpIcKTUbD4/53osK30ND8VBqSvP0bDRQb7Zxc0deq
	 AZT1L9/AOouAXE2Dyi5FrgqY5dkoC0xoIiFO3YH0asLByE4DcHXibFN1tf/KSRjeNp
	 EvZ+hcnWjQCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77AEAC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171261709647.22324.13359671626188573369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc996102287a694ad1acb52e5b1b9eccb46875d70e308cfc5d628d9b469bdb9
Date: Mon, 08 Apr 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712617096
