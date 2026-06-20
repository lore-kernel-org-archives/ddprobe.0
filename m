Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED72223323
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781922993; cv=none; b=aNgRRds4RmMCvhj0dfGFAliLfbdwYx73wi2i3qwwWtsAuStmznLAldDmMLn9zF0GXP/XoZy36WoNNe/wY2EVYZZ8WkBAzXGJSs88m+kfFZ0nlh7t8BJhPrtQj/5DiWPgwU31tinbqmSEowyRyCA2ByzWd6XG6HPHMBPrUSyvNeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781922993; c=relaxed/simple;
	bh=K0FuOPqF9CGRZVY8gwMwoWfKszBScrk2vNmOjZ+CZyE=;
	h=To:Subject:From:Message-Id:Date; b=HfsQUb4UxkEEer0EzZLxuNpX9O8N9KUh+BXXympkQH3xxdFjkOZLyT2+PWTOKHNjUYP88rw/5AVF/+30KCC6mFSjtB9pUH4cTA7jNtJu3L/1vydShM1ZX8XFgpktvRT++6b0Dh+FB10T54VqnvwY7qO28RJBHKAW+ACFbiM5dnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N46InXFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N46InXFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B232AC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781922993;
	bh=K0FuOPqF9CGRZVY8gwMwoWfKszBScrk2vNmOjZ+CZyE=;
	h=To:Subject:From:Date:From;
	b=N46InXFRb+Oa1KR571mojEZAC7JFOcjaDbu3Eq5MhKzUgevZpZCCaIeiA0eJJk0if
	 eidM+UJlNtV0J3YOGNE1lML2pmPvRKo5TCEUc7bSXBANeHZo1XaM81oqylm25Um5sd
	 ZmuJfoXhaViAUnri+ntAt2zLJ61R2hGzAgNq4WGTVdWUmXhrYI5ScyfLmVuaR47PHA
	 mqbEKUlvgCFxoyoM73harsshNPEGdGgysxButrT8gkOSA9a/MxffHqmqoe/0BgfxMe
	 qZ7HpnPwU/6HsjWajfEY/IoNEp8xb4Kr7ezVnt/du3O35GCwOJgmYM1cV6MGJbIi3W
	 1L3PZzbb5lhnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE29CD98F6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192299369.16949.16158613906824949871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea79d16ed92b571b28844e783fd759ede1a6182a0dc2dc9244eb0d4f6ee72f7
Date: Sat, 20 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781922993
