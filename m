Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F2D189F2F
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727427354; cv=none; b=mvpcNEXD/s2S8d5k5CwAHHvfJIFgIX5cc+ZlH1jzh7Iz2ewMXn+TLKWY9WuGvsL6ed7n2NvIY06mQSYWcO6sL34IllSDdHKmk6ltfj/5DHsm3aCjXtHFhUMC4N1UYCrS9c1lH7XHtpZvnAOfHOMbgilDvxuizXacIaKrpi+tTcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727427354; c=relaxed/simple;
	bh=iZHNFty/SoHmw2BbAEw/SASj4vZD6ktOK+TZ3DNX22U=;
	h=To:Subject:From:Message-Id:Date; b=flNQhFxGYL/DlfDkrMF+njc3p9MmcjtgcqD/SJSU5eHcJv3mSbsHQ1CHXJkUL3tI2PfhWsqnZiSogwOYLrALzRRXmL9RGgDvvvdeJ7PHMwXYASCi7D9UMHodTh4D7Eq8mCKRyIVmdR/JltFFl+AZDw9PrZjTWSdFgBh84IgqjU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD6yN0GM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD6yN0GM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BDCC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727427353;
	bh=iZHNFty/SoHmw2BbAEw/SASj4vZD6ktOK+TZ3DNX22U=;
	h=To:Subject:From:Date:From;
	b=oD6yN0GMGnMhSori4QFnDG95xdzaUAlO5nBojVY3EYzSu1/Ko9m6epRSZ7yUHEox/
	 Jx5bRQjSaReXVIvTuB4KFYmlK+o4/0NJuy6Q8m2b3bQMCgtzt4eCJX4tYhNw8L2DrI
	 QBwvNBa3HZ6y1KnOgZSx0B37/eSJZIUvSy+UEoGJNsOGcITe9pB+fqaRkdL4gVeU6M
	 0F6QYg+/pGYU83CPi8e+WLuDtZAgbRasddUygJ30Gs/0K+3vW41kGPlKow57GYUsIn
	 YrGrFG1tryzvsss245ct4GBtmy4kbTIjfju6ftux+Z7SQHCUfiws4q7iUVy4RXikJo
	 j6n5AEXuoNggQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EF5CEBF89
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742735360.7749.14300443935734931200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccaaeff17e6733204ceb983a9ec8d505cac7ec172fca2fe7439b2a7fa4edc5a
Date: Fri, 27 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727427353
