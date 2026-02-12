Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194C7318EF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770899094; cv=none; b=gSja18JLl74aVPO+Vsg5ZbrckAsTht6jyclBBtR2a2paXUQIlkj2aY241Nlw/RMtfOtkxLk3vads7X1SPjKAB/wX9egJivMxlxC2bruGtgR/0CyPbQXS8YPnXqsoBdYFn0rt9MJglXvoJYxhV8DKx1YSGMvtmL4Ar9PoAWCMMzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770899094; c=relaxed/simple;
	bh=bx2v2e8vyQJ0oDRzGnp8wZ89myXM4U+4og0DmtfsqmU=;
	h=To:Subject:From:Message-Id:Date; b=HtpGU5Wq2rNg+B4DQhQ7MZ3q73RMTnKlrsjey2i58OLtqK5Fmwa47MIiRYlL2nZ7rve8tsGd2RjXZ2Yp3N0ii8AUI7kACiw1uSFJyDpmSKUoMkctoIKmKaSRulZDSN7kmVVibZ5exGp8EJFtjz44btuag1vuymHgMJrIMgtpPFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8OT8StX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8OT8StX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B458DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770899093;
	bh=bx2v2e8vyQJ0oDRzGnp8wZ89myXM4U+4og0DmtfsqmU=;
	h=To:Subject:From:Date:From;
	b=E8OT8StXzdN7+q8gqOeAdAAzgf/D4gbYsyvJXx6B8hznkmufxG+Gla2fYUvYwxQjr
	 wbm1PBEqwKt2Zn8tzE6zdOcDF7SoG5oaK1xKh9YzxGaHt787z7izQPgGKnLgAgMxXg
	 +y4ZqE3PvTWF6CN7es8xoc78hNPfUwZ8KDYRGW56Tr6Vk/WAzvBPpnsq8Su2e3pO3C
	 BIn79I04EYk68tkFAmdDrqhDDAXTdL/lFykbmtDCHvWPomvZ4msxn4sh2BXkH6krtd
	 kNkoSP3hHHvuOoLi/VDuC3GwuqisYWC5fYjHuaYu9VD4gnN4rBVxBgeQ2IR0KpQjTv
	 tGv3jamr6eRAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF51EB4913
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089909362.27998.15731288674572917623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059c3124214e0216adc5a56080308c2fe51a79a28cc710c07421dba6699536b4
Date: Thu, 12 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770899093
