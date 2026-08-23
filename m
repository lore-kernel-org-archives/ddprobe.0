Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD463B14D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787456434; cv=none; b=FDbulCMAin7lorJzRLESaXsAeYmizHOn+AiabYIegPV1YCHBOU90Y3/d4AKuOvK3obV1o6aCWhW2JJ5tH769cUOxKfobp6xoqudpsuoaBVR7WqTbUdwv2F8PuCa92u7t7XLx0enloCR8M+9XPkbXerXrd3LxuZv3OEBakmmU4N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787456434; c=relaxed/simple;
	bh=2E73H4VRvlWy/2QSyKpShZ8pbCdtdBM2NzkvSDSJG3Y=;
	h=To:Subject:From:Message-Id:Date; b=TtGYdyvZlpEeGMbk9HrLh5pU0++ojyaST10DlnILl0VhDR5C4Wx0gagllBhl9X+ZmqUtQ4fZVKzW34qNTiF4ISe0VvFGo8QTessuMhR9DtC5ARJfmpF0HFoiAUdOZMd/l4Qg3BwN+Udo9aCb9rcTtO+RH7Xpbe6gNkHU4fDvb3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0E7SRlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0E7SRlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97A8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787456433;
	bh=2E73H4VRvlWy/2QSyKpShZ8pbCdtdBM2NzkvSDSJG3Y=;
	h=To:Subject:From:Date:From;
	b=s0E7SRlj8ctZm6NvHmMPAQwzc60KnxoyjJnof+M+QA5xjHzQ48bg+eVBPTQ7796mh
	 8hnY1LZBFXGF8HTz9jMDdSjoFsqhtBaywNBGyJCyu+pY5ZV26yK+v1vDrAGeYKgdFy
	 ioGZ5hUHF56mFUTmtppkG+cNUk6SKU9ycYc17gHpvCJTWAnGpBoIelppo29PfbjqlG
	 reEv2vdYNQhh1M0OA4lWqo0SxpjtZvL983yu3DEuDbL/fOLE3HUZ/8zLWJ3ZAvoaY3
	 sAvql0krgH3zbbSF2kEO/hBaj+SQtCZTaD6nYJxMMDW3j4KUimFGul9oWVZ22LcxA5
	 lxj01qxQLpPEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B137BC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745643369.19519.15467224245036803279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc1184142a49477af768dbfedb0e90ed26e27553583740d6228bf39efb88a69
Date: Sun, 23 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787456433
