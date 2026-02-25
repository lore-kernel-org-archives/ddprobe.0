Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACA538F946
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772016294; cv=none; b=CxZ8ALyCaDoP01jYIefk0VCnKsQYmkpUOsLF29JZv5MhYVzHV5+S/wvi4RQ/UGEYx4Z1CXmz/W3iRO6pxq3AYa39oGwB2RJAXANs7qw/6bAUZcS4NkITesnRzZYgvYS7GInMtP6cPv1iTDlqFhgpiMNoHlfeoeFUJfRre2K5DJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772016294; c=relaxed/simple;
	bh=GMVJcIAYAlLo2ST15eckkAieFTmVPXdnXsOgn5gJMI0=;
	h=To:Subject:From:Message-Id:Date; b=DUuOYij6CXBjkxjk/Wgb1VzvAGWdZ650IKi+7tWce7yXmZ7nA7vdeY+RdTUMG5JALbIWjARQAMDSxfZcejwcnIikmzvvHH8N5nS38XVCtJkYJTb5F9wEHhkgr6ELAx7edqdhnqH1UKJ7brpGXk2YXytKcG7pBKo3kSK/ws4eJfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivcVW32+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivcVW32+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC78C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772016293;
	bh=GMVJcIAYAlLo2ST15eckkAieFTmVPXdnXsOgn5gJMI0=;
	h=To:Subject:From:Date:From;
	b=ivcVW32+XBFzJ5+Yr4QeEdNGIZYDmxlza81A8fQlYJCDjVvLU8dL0k6AIZ6x7PGrp
	 Fd3+YzLxuxxdth4cw4aus8GvT58om4o4UBQIUGAPz5fbgkjqr/YSTRe5ke1mQFoRMT
	 yRFClP3wr6VKy0lIIZkl214ipFY5ioFGS8tP1+7L6LwWkHLAkaFgrtzXT52d1y23Gd
	 UR93VtoYVTSyrtANpQhIMwOqTrse7WzkJYZ3e8ciF0zJqvIW7tmhF31rPFXOAi7y6B
	 VaX7BFGMulqO9MeXKos3f7DK5n2cH9nkCaAy8hRPX5vk+U56cd0blqLQSUxaACnqE2
	 r3lGrTOIKa5kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90911F4BB99
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201629358.16299.4131106421680619232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0f7606e1b42f8501d0610074d588d3781a87a61815f9da295d5f5640a7b2fe
Date: Wed, 25 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772016293
