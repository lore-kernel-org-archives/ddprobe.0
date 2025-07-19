Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213AD29CEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752938994; cv=none; b=t1T/vhb1ZpFhpSm50uI++XJ5efP++h7NK/aa5dS8VvCh/YZEQ/stLbn61yE9mPObRSQK+qdJqypBJIgM5Q78uMwMrZrrJI01RO26SLYnO5uLdXBlZohm5+iPAzdsTly2GbI7ZQRWX5N58lv5CZANwHmvnQKYPpUxbFg/Jn0gN9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752938994; c=relaxed/simple;
	bh=9itCcsCmmmoFAP2H93a2d8VxaUN1G9lE2+ymbq0qPCs=;
	h=To:Subject:From:Message-Id:Date; b=d5HJiU1rHoF8IX2wvr8Hl5XotKDADIYjlKl9UcBgWPBYeCdpjKu1WGIwvwZlxeV5jH2oyf74qjSw+yrYTF9u6H8ue0BXjWBK8S/GrB9fbr9yrm7nDsJr5ddwR6Af+in7+hh9WzlEpV8E30jW9pKYlrWCmTXZvk6VU6fnl5Kjw9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eG/E+GrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eG/E+GrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BA2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752938993;
	bh=9itCcsCmmmoFAP2H93a2d8VxaUN1G9lE2+ymbq0qPCs=;
	h=To:Subject:From:Date:From;
	b=eG/E+GrYpTBbfwY7+1N9YbNhLrcn80hycT7FNE0M2l19WX9v+tK34rdsqyJs3/YV3
	 pwOS7RbQUzxSqeGLeaa81RutWcEys65NkF/8dQDO3r7gZBMe6FVqFetza1KLLAl/jZ
	 SSQUu7yxTuP1UzpHgVKdJdQHDS6iMM97EEYnhnDo7XkoF1pZsDbNvYco1HhNGJCVOs
	 Ax+Fqyf5ystTH+5xYIqwJ7ytA+3J0ilXZAlbEt+MxHGmge3m+5qXQgMzyhr5lGfhbG
	 61eqADFwvPx70BwNDUvPnlbxbizw7AI2ZuRp0bSeS/zqq5K+/ZgyTLUzX+Vs6SEtx6
	 ITdo6L9ii/rXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AD4C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293899358.11442.10858049888968987233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d33c4d5bd8a8b640f340f27aa3c286de9c4023b25f2b0d95a95997fc75bd7f0
Date: Sat, 19 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752938993
