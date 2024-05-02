Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FAA57C92
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 22:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714689743; cv=none; b=gbAjDpC8LRqSLY/vOVGAoypxkfBiQaERNzLqcRcxmRvnFyXEoXtnGEawVUou6bAioHHfCSzm7aDf47fvbkiIyN8FHcijIKkxWcCh7MQ6WeS7wQhfop7MTnm9Xfo2faKvOjNxX5RMH9vmN4sdESH1MHeG09TFptJvKN4+XMXOZno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714689743; c=relaxed/simple;
	bh=FGS3Mc/i1cm7JGTz2LDr8mpGw+ZRG+0x5Qe0PpO3OyY=;
	h=To:Subject:From:Message-Id:Date; b=rIL0prwpYh0ABYLOwzfGRbVnsnT4FRj8UcxxDhDqZ3kcuAZfWPa0PeQdGhYAblpr7TlDwXOqaoTcwBZ9KGXOKuUs364BWBQGVNZv7WS29Tuh7kdTop6j/FAmh/dT6844O1/UCZ4oVLsWrtsLvP9AhXAvF00MzW3yBiXvOBRJ5Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyU1tEAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyU1tEAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7167C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714689742;
	bh=FGS3Mc/i1cm7JGTz2LDr8mpGw+ZRG+0x5Qe0PpO3OyY=;
	h=To:Subject:From:Date:From;
	b=kyU1tEAfMUOycVkCzFGVQoo0zF+pHUJJqzSu7uKG+qmadM9Ta+bwW3e6UsGtK+4SS
	 RA1oLvwBhP7PHKV8/YpLWUnBwC4gQZsB++DRhv7ZZdsSoo51OzyM0u96AYXjSWOJoU
	 q3i2A9IcHp4QzW5uxkklLcM24ylyhXxdnSIC4Ihxobj5HIcNONy8xhyPE59XstL9pF
	 uIDxmq1quplaIGWWFK0BAjv8nv7Uzb9HjcTf+XBIoWXt8qVdbjjiKxzsfLLkOLGASV
	 2Rqp8LULgeGA8XU9tunNxASsFzzl3s+wjQh76oJ0ggJyEKeVOn8QNvoyzv4HuW0iFF
	 Qbx7PD+K2IVHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE86C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468974279.19426.11957513002750899745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0b78c84313395f939bd8a8e5b4859af76fe56e1281bc380192f58592eca050
Date: Thu, 02 May 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714689742
