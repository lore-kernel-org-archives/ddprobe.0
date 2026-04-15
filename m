Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285AB3E556B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776272854; cv=none; b=oDRFGcWHC4YVxFyHpTSy/GWYKTZWCqzl4GkSmXzrFUCqtRBaOToIhPoYJsPoErOD1TtOmWvRLHB7ilB68E7ZOeWxYnzbLTgiK+Jb4V5N/awI6NL6oGOmCQtf64d1aDap56WgoBzAjPoTrbCJlO5nOtzqlhGCy1ox4V8iju2IVrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776272854; c=relaxed/simple;
	bh=d11iar6tB2yNmhFTjczOS97kvwXQURNobJQAs7hH6b8=;
	h=To:Subject:From:Message-Id:Date; b=MeG0dzRpXJNQ2+Rfc1h6IdRRyIXOXIr8Oce1E5ru/V3fyaZTJgoAK+4EhHSjxeY5WFU0omDgILJWPk09J4zSwlBFhxWSgvaPXxFi7mE4Il/P2SXvPAcXPq0wX/hKmFlOtnvKXQeBjFDs/bmOQiIbQkgu//W1wtUS01YI+tcr38E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUQJJoYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUQJJoYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB96BC2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776272853;
	bh=d11iar6tB2yNmhFTjczOS97kvwXQURNobJQAs7hH6b8=;
	h=To:Subject:From:Date:From;
	b=fUQJJoYYgDX8TaEPEWIglgCN0ja3s2hQwJbI1nlFhqo7WRigKOW8r9T0F3MrjfKuZ
	 KBwt8YSqt3NZrbps5atbkBs89G+rAheKuUZgUOo2cFX2VIAd9XJ9qTLO7PgDQI2Srv
	 t7JI17ybvkEKbeInuNUis0/gHJlZji7RtJPTJ8rEO4EhFs4TN0w3Q6c+HjC2sNHP9P
	 QjVOTlh+x+2yP4zYhZ8nLyJPwzV0dEdCORtWCdfo6foglSdj8CXczWmOTzkmHrV+nz
	 JUHRWFqZyMl/kfUT8bcJxMX8gAS2aKeaDejjgXugyexLOItay+QJ+t0eOTBPDVUWvs
	 OxZmZqDNLq8VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7DEF43858
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627285368.15289.16938117415156709012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7306b49918f7e7e207368a12093200b000b29ea35f95931b9c65f81bcd962f
Date: Wed, 15 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776272853
