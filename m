Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686D98C0B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720754243; cv=none; b=theiSO8YzjUJHZyiHBkf36YUglroerIZP+xh2CAlT7CtevuURk7e2s/aLvAXfxXeydJWSQ1sChbAewjdJTp6Z2WLv+1FrS++uv3DoQeA2B5dgikyxA/8nboeX8FZ1oBZgZrQGn65HNmwrm4B9zhXjyFVpBdkmZtQKgWzFWwU2eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720754243; c=relaxed/simple;
	bh=kCcbocYMbvKdNkpxxSzocjy9hENfKg333fAt4AELL1s=;
	h=To:Subject:From:Message-Id:Date; b=OTVu3L/H/0kfEz9vrcmOo9pLKfP+DJLnOKXS222sR+bisXiLCIajZXJanjQWvEihdj/zW5hNSSD3bnN+Njh2OX6Fp+oeG4gLalL1zoNpfc1UWpppIqfoK9RuFisADa4z0M+s9OIaavwEkKDjPxBFeGCXNDaaC4JsIEc4mcj0SkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6caDuPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6caDuPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CF7C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720754242;
	bh=kCcbocYMbvKdNkpxxSzocjy9hENfKg333fAt4AELL1s=;
	h=To:Subject:From:Date:From;
	b=g6caDuPCqhTN8B7UwhLTtO6/XIkr2M3vWdMOBalGIEnK4WdlmOqYQ/Z9jCANZ1Fma
	 d5s628qFRtH62LOB4GaZX0hncc8ki+YTmR9rEpCtyJ2mvOLsU6+e3PY+tfhoJScuoO
	 TRSxiw3F+On5MwNQCdcJLFjX1QgtpLCkr//A6lCAwGgVqZ6utRv58VZlYqQvTT+tdT
	 L2ehekKAF+/vFijpzUo56pE2Qwjq0sywjZ6H0BZxSXfuvc7lGSHW8zVwVYYqeoA3Pp
	 eKOMTqjNbvPcAC/hQJPmA78ktfIdL52hFpBLnBNVv38eouQuzY7wf3p0xq3bDyeZEF
	 kT0urzzuYVigg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A14C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075424278.4032.15785830744744503395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc42fffb6d854d9b8225a26f2e5e8d22ff52f2f898ad11b776c80952320ba47
Date: Fri, 12 Jul 2024 03:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720754242
