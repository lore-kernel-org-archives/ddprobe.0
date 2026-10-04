Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CA235DA47
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791134434; cv=none; b=GVY6o3A8fIANHjc1Fi6ZfjVQO6ByqigF3fAwe+GNx6xC2G0b1BHAA41ahGrL8CoEWhKeRogCdn5Fnu08LKARIwvalS0OiEIZGt805EcyDZvz426sf4MrNul9Z222lwsebHhetKz0HWR0rMBLDWjUy7GLt/S7vv/Zed4BYbwLX4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791134434; c=relaxed/simple;
	bh=4S11q02ky77hZ4nGFK9I9SdWo9encaYSlfumUxZHc6I=;
	h=To:Subject:From:Message-Id:Date; b=gljnka47+nO0eSrP+8LgPzkmOCi1qG0MJQzx0iHYwKiwyKIk4m2i4ETFfjh4OeQucxiCIZWWU/9rQIhTG0Ah+Wwfj5lOseqkz2Sz2W1A5MtUbhRrkCrWnkzCAFhx5bpO1m01rLqynro7GWYQoIX170ENmOMat9s+5kqPns6EPrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnwPByq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnwPByq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC5AC4AF13
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791134433;
	bh=4S11q02ky77hZ4nGFK9I9SdWo9encaYSlfumUxZHc6I=;
	h=To:Subject:From:Date:From;
	b=cnwPByq5isLCCeG4fz7+RdEpCGo/JtKdhsTyoIz2mCuHqhf4Il8S3Z1ZonZzArCUC
	 4kib6JdnC8xfIN8V3x9Md2odAXX/kFWNAf7QemHnXTsealy8YZMROfOUCJYqLBbxvg
	 xLabNqc6tvkpr+lIz0YsGO5l1L7D65oVZXndMJtuJaGbEPNwQfcY4BdvGacPx3H99/
	 4Mo4YGo8FvGNxnn0Bbl3AwBPvrj2KKt9eCN/SYD5tgVaLjMa6KbGnTWr4Bi8U9KUvG
	 86hD7XtDuIf0tseVKcEb/7lLj+CqcNO8pHeQ9bL7Z8alLj7QqQCf6U0rtW2re5T1d+
	 9tojx/6Zd1Tnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC34CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113443369.20152.8205709266058964402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c0f121fd46437f485818067d6df2952c0ff44e29518ee287e50d247c5e89c8
Date: Sun, 04 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791134433
