Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D70E1531C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752362394; cv=none; b=BerW4F3KFDULdEfLZAkM5YOYMAdskkGhbiClD0kPMS6qGtEc4OeSJi4anNmQ9cWvCiIJj4pR1okIYSnNlDDYiLrHe1y1qkDo8Bqx3TE9vL5S1cy8EPTiN6c2Sc8NR61KgU1JWgdMrQW8HLlbCcrm6Raq9axqYd5LDEwcjgLg4Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752362394; c=relaxed/simple;
	bh=0l1BCrzx9h5/hxYRDF8aAWF6X7ypv8u87b1jIav2pps=;
	h=To:Subject:From:Message-Id:Date; b=KdB9fxblehzgSRbpr2hPVSqMwhm1HxwLrvBEWYSAmq0BznawNImUL1eIBJ44QKctYb+m1c9CK7o9Go4v8tZ9FqdkP/sWdLHhAXT3XyuOAoWLIa7cM0axzQn6efifZlVHHua9ZcBmQdzjiiGzaQLpuqAP4B3hzgLIy4lsTG8DFIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FooRdQTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FooRdQTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D31FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752362393;
	bh=0l1BCrzx9h5/hxYRDF8aAWF6X7ypv8u87b1jIav2pps=;
	h=To:Subject:From:Date:From;
	b=FooRdQTkMvGOmDbbrSlvsoIcmK2Y1cmDysBmEsjN8VfrZAkBbpn/Us9Q1f5DyY7jK
	 hLzqj3MAiKTcI14xTNBxXvkt0sGGhtWD5x+43FCogAplNMTOXaE/tiJoqDdyqt/Kir
	 LdclOpxJJ38el8AwIul3zowVpnoMDTFF15prMuholLJLzOcSjo3BXgqprxmKH9iM5O
	 7CTX2zUWCF0FsM2ypbSzrJ4fmiKZuEN+rcsAWkxLLwkonOpsa+1a9/0kJiLXS7w6BG
	 FAYhUY7xhcKZ4jnXLY7OuDZgY9oLt8kZEL2jdpLw4cc45c0NV+izG5OSFn9BXPtBk0
	 eliIKza1ZPgbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E31FC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236239357.27988.14223221705393288128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0aced8c03f7db2c949bffe5714be2ae582bf8c1a904f2300af6060536ff9c7c
Date: Sat, 12 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752362393
