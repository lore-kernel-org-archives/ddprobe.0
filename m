Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9F01448D5
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756006194; cv=none; b=l/72DjTipf0hOZ5dZARw7k+qhZaiDx4+V5/GP/nXZ+4OgkbE0QA4E7gsOmpEogBbV+fxz2Dc26gQ/8a49wnHvc5kufnPs9DYQ14rk8PASuxV7lxkRI1tXARZahLUo6fR60VW2CcxZfW7k1/UHkINeKf4xMneLXn5dskWkSnjA8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756006194; c=relaxed/simple;
	bh=6FGIb1SOHmdIvt9x4A3dokZuFxW1mS+qanHawh1aAYg=;
	h=To:Subject:From:Message-Id:Date; b=EFfrjDSsqoDTlYUdwcayBaop5yDvsZq2KKqu8mBkRRj+xBkatvMPjWYScTWh9BNWmRhheCONszVcXuRuBvIkTdxnwurhpfHsPGkwvGSiaFyLnYKGPJgMS9Q7MLGsEoqx7c1IwoOUSK6p8R36U7svWn35sFJADLqA8qwX9fcR6Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6VmeyQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6VmeyQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52E8C113CF
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756006193;
	bh=6FGIb1SOHmdIvt9x4A3dokZuFxW1mS+qanHawh1aAYg=;
	h=To:Subject:From:Date:From;
	b=d6VmeyQLouzWjKZnPqqX0alsdJa0IL/nHa3OGg9sMY+YbiqvqKjiHoNxYCary/kLC
	 QqSk4JtApwkSKWtz3OmxHKFaY8M7IgL/ka+3p8MPAhWQeN6Tf4ot1euUl07Yx33NQ7
	 7Q1gVa8qVgQ8AJnVBM2A0HAtzqovfjSwuF3O4rbZnKJYTuL7Qy8Hh89ahHPlSnLqmY
	 bn6U5H2cZdXN2NvK6PS4X6+YKnxWLmCBi55eZB/5OB0MEF49eEFoPRILssjB932E0a
	 820y0VDCmsJlX6bZYACH7WH2jmWTebkDjmpeQC/fCvDNR+SxZyRHAhEj2e80Y4v/t2
	 TA0j9djjAGXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B31CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600619357.9579.1427036709452002025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19980a571bd10ff6d08134fa5390d69067d2ee761cb5f4f7d760f89f2eadbd82
Date: Sun, 24 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756006193
