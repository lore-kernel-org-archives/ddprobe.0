Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085C7225408
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770520434; cv=none; b=uH6DBvjnIyU5htFUboIHvhdib8/v9a0vTNr00n0Qyf1f0i7P4+MmBw8J8+X6/jk0rhIHb0cPX3KhbRfm6idYSSL0zmIewW74vetCmlnBYBsv3J/50ljca9d+vt1L98kcEhrdwQxx5QmbbYaEPSXdbkCBUeWj3tTiAfVOX0L6BDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770520434; c=relaxed/simple;
	bh=SraahIO+ebfo3k7musuXF9A7ZNa0KB2tmtczVHHr4qI=;
	h=To:Subject:From:Message-Id:Date; b=m9mYIsiLpM2yU9ChhooSBXf+galL6o3cwPiWi+BhLBmX5Azx72TOuLNL2fSyN8BLgfN82mD9Ssrda8mCUMhxihgiZEHgiW216ip029Wo+JkfUPq3PKJUZyQK3s4ANoBDSp2VwabEn1Bgyop0rsE4EZWbz9WIM0pF+GLcXNu0M8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvqT3oL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvqT3oL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6A6C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770520433;
	bh=SraahIO+ebfo3k7musuXF9A7ZNa0KB2tmtczVHHr4qI=;
	h=To:Subject:From:Date:From;
	b=BvqT3oL4Rv6YA/5X1qtTtEcUeOW/W3peXLC2JHXpsKHFZJftvt0yI5LSHlAFHd5Mn
	 mlv6V6irRhd+5AMKATmaAXPeLszDC+76Y3QMNaTabczB2/mRwC/md7ZyZmzQYKMSJR
	 6CQRadggOf6v5C7+sdyE52WeanvE/tQ7YyTLnZm4+PyEFPdn1gRioh8SSE6OGOuKDn
	 vljnVQj3KCsphE4QHYjmZ1OcoAbFJ9LXS8IDys46fHRkXorh5gtDYtyWdHfA4rIn3e
	 hlLHPXZQ9HZ5jmplV/l9SbTXOJl2mvtEYUMo4G0FdhMUHQDweqCZiuqdjtXhRX+GCg
	 VK7hTAU1SAC4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE5EEF06E7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052043359.4281.17614564449401786110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907180501b0d145f04c0a26a31ee9e069a3daeac83eff6b9a1c370e75c204bc4
Date: Sun, 08 Feb 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770520433
