Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FD919F137
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790496034; cv=none; b=nXCkJgE0Wp2JQ+FiqOgjbTknLapvglTw7tCgb0m+HPzKWE/nK5hgThCPHplQUrrpkN/45pWELvrpq/Dd4V7Emjhy/sDziOYMOro2g3vUty9V5+jR7h78sRkDE0CdWrMkv8AclC5FixHWNgBFCjh1btuItfwFXaytx7DGBvhk51k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790496034; c=relaxed/simple;
	bh=4eRvjen0Y042t6DYvsEyUVJYSqPPnJxMKkYtz6UJp58=;
	h=To:Subject:From:Message-Id:Date; b=FbYDP9nM6LbOuPq3UYKcEYgQyV/NMWqTsKMBTtUyv5FtQnKQxF+jbQrQ6lWdPhInaG2h0C8ztnlsSzRpYhmAXIGC97c9gerY4mpHt07A7//mR/OwHqK/XQrosMr/GYrBTzdH/VZAPfxCU0eIbMfv5LyaSlcK5PJOUBkAafx9cjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwCjAq3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwCjAq3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE792C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790496033;
	bh=4eRvjen0Y042t6DYvsEyUVJYSqPPnJxMKkYtz6UJp58=;
	h=To:Subject:From:Date:From;
	b=QwCjAq3qYXMJxG5oISHlPILLgipKQBsX4iZjOWZHmVTvBSoT0Q7CYQaAsh0iRMHJ2
	 OKqXtMQd8iwsOo4mDMEONOBY0vaxtO7nr/wEP5du4MXs9e+CPHHo05gfRKUa12+SWZ
	 vylWuela+Kp6ImNQ8+FPQICezl1mc7bfHLZbDo62rmKYU3pwYN3F/bDwkDn8McINTk
	 rfDEO/X4aIHUnuitoCLcJDz9BnA/jjrbpeQlQs8GfVmGzrc7ed8+aRU0dYwPjnndma
	 7wNZ8O3kzyOCnvZZjG/PtM9m4+WKgDREZiAzCshd5TmeafoSvvRlypjFglhYrIfO+o
	 EZQtl9TeTLMRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65F7C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049603372.4815.1559011682467843401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26768ec18d9e4e927a23b2b8449c291811b90de20e7f0b8c743447751bd24eb7
Date: Sun, 27 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790496033
