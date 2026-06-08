Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B263AE190
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780908274; cv=none; b=S64HvmVjMzF64cBD4MF9FgIYzvC3VyQOOZv7nlYkCxVSUIqYUug1Id6M6JAn6QotnPfwzuRAj/xA5coGD0mGW+6Q6862qWuK3YaoGLI4OjqWVZXATUWc1uzEOh+upbwjD0ASM0tCgnJx01FnE1l6WMBAHGiqLIByyUGS9zH3bfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780908274; c=relaxed/simple;
	bh=G8QnwOiCoAXndeSPdJx1s1xx2/eTo0p8nYMjOWr8xVQ=;
	h=To:Subject:From:Message-Id:Date; b=hRJ85nM2v5dREKJg94fIUkmoSc0YsqZi8gGMYOSARqlFu649q7NeHQNt8pdyY5K4yxeXmOYSIkefwXMIvqC/VK4T9BQq49d0yIFAuFUHylLzP0zodYzaPdiuI24Q2pHC3sAnrqsL/EN+7NNQSx+ch2D8Xbl7pxXnXZ7WAPB2p9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcRVWAxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcRVWAxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AF5C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780908273;
	bh=G8QnwOiCoAXndeSPdJx1s1xx2/eTo0p8nYMjOWr8xVQ=;
	h=To:Subject:From:Date:From;
	b=jcRVWAxe+xthTWQtp6S3rlwNDTIVEKvhS+YxCL9xyRaxLSOBTT+5+vIGfEjqEy9Xj
	 4kf6YTc5NPIYAdgAQ/LQSNhAYw7Q5iSSEhvuKu4dvVFFoE+J/F6U7pWAY2Yl2CfLDw
	 Lgdc54xQRNBEnGWiNFGJtv7c7Q3oWRgBG3ACOzZGR0KQ7xfO24kE89o8OlJBh/lxia
	 P2M+trLBTGfU2BTeRnpkR5a/gT8d01InUw9wgioAJYz5XVeWk0pjj/7QbkLpK6wKwP
	 Hp1ULIJ6JhhT+vAJLuHPRoXDUh3HRdXoh03GsjtelwJxH7dmWmzan9EJsUxcByohrw
	 9FxCKbXg5RsQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF3CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090827368.1880.12551468519963087155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606ed73d91e298f003f4d8240f724b0fac8e670dae9bb380be7631702866b502
Date: Mon, 08 Jun 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780908273
