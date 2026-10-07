Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B62740680F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791355234; cv=none; b=jQCXA+HwUAPDnLZFbTwonwvV9SOngz/9JOd6pQMUu8QpCyFrW8TPg8sfhXrH9NaMouXZXggg0Fo/1ofCASYBTk+MYjOlduTuajLhD002zbpg014JP4qS+yI6r5esgMYiatOWp3UUgbEZUEb3WRItJp5uDF6MY7TOjQ3P6MpmzaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791355234; c=relaxed/simple;
	bh=PMAAiVlcdSDVor+4F2rIKvZbTVd7hru8Wln6aAy+r44=;
	h=To:Subject:From:Message-Id:Date; b=BAkljoG4qRhi+NOEsD+wxtflJr5JQF2TSepxTDv51cBdvgmAF5yEwClmDlbpIMygV63l1oXBDi/EJYuhXolXTlvFcVXx26kXWcZqBmnpW0sKndBB/8a9zPd4y3d6iW5vjGghZRxpCJQycl/rIZh5LMwcrPhhGnSl6ids9aetZlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxaNQi+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxaNQi+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC078C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791355233;
	bh=PMAAiVlcdSDVor+4F2rIKvZbTVd7hru8Wln6aAy+r44=;
	h=To:Subject:From:Date:From;
	b=IxaNQi+MUCqOcE8HAI7Tr9CSmdlONr6IhKCjyiozvZZ6rgX+2/kn1qrKTux+uNGqC
	 6VMtB0VCXkTO7YurzYbXe83qfRZoqmQH3NCm63uTLTuYDvEkO25sjqQxH1JbBEHlFY
	 xKACHFCgSGA7gDx7nCNz288jGiCC4CKh9BvD/f29OCihYUPv5aTE8mPFsmNi1pZfnt
	 zqUXRdosPG+GEq+ebbEGWpAQ93A4mrjxiRQHyvBk1JHgfc1bU0YI/J+1savZlbYx+l
	 4Hlh2565OVIjTYncIf6knG197dJPz+UwHYT1ISaaaEqhivpIXHLuRlK3c0qvTtQyI7
	 IhoFU8u8tMgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B13CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135523368.27347.11865469090707959756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b677e80fc7d13f5724ef4defbd01fb0afbdf3e9bb4395b841ebc35f17a4776a3
Date: Wed, 07 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791355233
