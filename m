Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0391A587
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707304697; cv=none; b=ZoFvaZ1SkNDn0vsAfz7PyruBr2b4UuRwL03jod2iDSbBuUPmnKJ6biQHjIfJEY4PRKDZn9MMU/ZT0eW+WEfB7Be6ZhnL/AuAkr81nW+zE7TcY9U2VNQG3kwRruZKe+wuhjl15fRwQ0bvQufMDyFhOb+3Is0SBNU5PRwHrSSc88I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707304697; c=relaxed/simple;
	bh=qSGiC87UVbfdyS1GbpPEdoHxMyHPXSSv1pH9MdnBIJw=;
	h=To:Subject:From:Message-Id:Date; b=GFWJZT+2Mi7XktIHlxsGh9Y+0Zfgo2BB0p5RmbQAcBYVY0Md8vVmzXIzEvWytGOjJ8vFQ0mVl+iWWkaZ31XIvt334h+NxYk3/mcAHybOxKHU5vzyGE/MMSb1JtH5rOBgyEwTTyOKhhj99ENYeIOHIU4TaHCPlHiTr/xhU8c5d/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNKjrYtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNKjrYtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C301C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707304696;
	bh=qSGiC87UVbfdyS1GbpPEdoHxMyHPXSSv1pH9MdnBIJw=;
	h=To:Subject:From:Date:From;
	b=rNKjrYtG0Y8dUXnJ1lM9X41aI7aff1bJyhQ6OOVVgiNcr+baGsRGlyF8KXYgR7pY0
	 620i45Qa/smGVsB5tRZyeQ6cLu1cvYHpjcTX10EA02dXhJbcdA3TgQJUgqphjmFrxI
	 4H4dk97D/jJRtnl001v12qGbtcMv3VF8+hCQ3j9yyTq4CkLSzFGiRmAuMsq4gHWc9S
	 x6T1Fd6h21bU/QZi52yTMnghxpVdNhxJG82gmK9iYNPvVMUZ38DagB/SDvll23NhtI
	 tT6t+M9TSO8t6Hc4pb+MHWGUcWNjWaOWHk9mHaoK5w204CjvFnsWj13tcSZ9cXXG95
	 MybRhSYiBUV/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F73C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170730469640.30393.7915089378732241780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7599c69ab049fb2b9ff057c0a52f1179326e5b853a48c9d987caf1c89a55e9ee
Date: Wed, 07 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707304696
