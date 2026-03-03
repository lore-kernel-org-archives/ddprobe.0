Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136E939B97F
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772552694; cv=none; b=WikKKJshpzjzszs/yZ0ElkpPk4BExRHri4rY3rGvgPNi61ENKRkqLu0aKNzFwNTfIdxl1GGEkaxzQ9f/+EkWUYQgu9rYy/qfJ2i+WI2QAeWH0zKcp6yucWwr3qemmY10zyPp5S7l+JuEOnDNrF4kx3YUVfKvXihjk2yR23KbrgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772552694; c=relaxed/simple;
	bh=koDb0WoX6ogRssb21EkNp7nJiM+GIUf7nUQr8aj+ez8=;
	h=To:Subject:From:Message-Id:Date; b=DOjyzeA/hb/NzC9NKx8zxKteo16lEVLsozqHuUYS7MgrM8REjs6FDOM1BLRHgPY3RnIxrvmyQGsf69U4je6F/S5cZXNw+KJFuaKcwYPEdAeet6HCVu8DRPs38Or7Ay8R4KHGvdVmHQGXyazzjSH4MPGSec4izclKjZJrbubQ118=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iattUn45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iattUn45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB03DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772552693;
	bh=koDb0WoX6ogRssb21EkNp7nJiM+GIUf7nUQr8aj+ez8=;
	h=To:Subject:From:Date:From;
	b=iattUn458yialIHVpx94zmgzjhREBGCcgBv1r9h8RKEcMiltxIJKzESn8YggHt6Pi
	 kSQ4IWH2EvymkZJX7N2q1zMxXE7Mp9b0iBlokBoIppq2oyXQNIIyAl8coGFyuU9EJd
	 tz0dcny3Rp0L9UuodJMcz1IjJbY45hvxBayRDXXxhrkPILL5AyfZ6pj/ef2yNVZRpE
	 RmRGFnYnMunQ3uByw/w1NLF2ewGo6CQvJzkM231n8pdNwH1tb8h1bMb2O3ZWwwU8JH
	 YlQO9gTSJFF7N9r6BQsEe3FaAtafxnAtCydBuq0qtQDv4EH36MVPoJSnM/HhL0C65Z
	 T54/NYzhtb5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94311EDA68E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255269359.2301.4689226056074708736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944aae99317b2f01a6a4829fb110b56624f6c4ce0bf3ff56fd20581e0195e041
Date: Tue, 03 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772552693
