Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DCA21C173
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790209234; cv=none; b=JubclMcNphVseamwbc8FPLG+EoXN36uKW1+r9e6mkzyyUJMBXrDjxNLwaUo8pbUGh3lDam2rUVNZ/SUptW+rbY9pvswLEItNZXZ4/o+++7tBWUp4Tk2h7uv988w9fzly2jmXljEojxxMfHa2tJbkVfhqpWRmedgH5GDq+W/wKfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790209234; c=relaxed/simple;
	bh=xwQ5P0bEyj0qUNWekzs05O5WXD+yMxNKFBercFWXjzs=;
	h=To:Subject:From:Message-Id:Date; b=AZHqZ1LB6XTnboQk75qwhDZKii1oftMgQq0/hKG6Z/01voPsNJcYTrGZTP5YsfWr9vY4UZ/nrYr27tKPOkKEpK2RwEEYic9weh7yfTwXhmqjJR0ng4R233AZZXF2BREf9cFnjJOMQK7udZle2FSZSscM8wysd962VLV6jMpdmEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQH5FkBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQH5FkBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3310C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790209233;
	bh=xwQ5P0bEyj0qUNWekzs05O5WXD+yMxNKFBercFWXjzs=;
	h=To:Subject:From:Date:From;
	b=WQH5FkBSqqB2GQfygw2tq5ns1aCRCAfvJQLqyJ08/04hT/9urXgOL6p1SQgnTRU+P
	 twvO1Ff1RI2UPS40oz/+X+pJxQR0/bsVTfLhStNsqewYtuyOWG5X1BvMRQBAIndMoP
	 0Zq/u1c+FhCgaDm8xj6CvAle9bNiRWJLzXkeeK4Kl1CbldzqCl+7GCgNve9Yv/HktY
	 /EW8EEh1WJautOGRuHlZg7EWEzL2bZ4T3X78OMF+gX6qDLYpOLAJfLb4U3hBGCybnw
	 pzC8oWfdWIM1TqxuqlyF6RhTqvtXoytbpxCyqwPK2bvJvSeETy35LZB/qQvhkbnjWB
	 9RO1p6VOk7CSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF501C98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020923370.3223.8247155864468528320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f086126c84b3736929d2045474a626cae02e6054e42d291fe048df7db18ab20f
Date: Thu, 24 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790209233
