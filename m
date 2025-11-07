Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A1C2F7ACD
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762486794; cv=none; b=HeXey9bJ40P16l/54zx7qsEh94h51r09QuzY+ECq4zcmrcZJa6O9H81yrhv5vIsT3VMdRxKQjO1BAlQHGggpi0uv/I5GJh9pu0BoevHxkmBwxtdFsPU+XLOpOzb5UlgJDRyttEKjgMAwLOYrm67EcoNGrRje36N3Qh1kxZU0gwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762486794; c=relaxed/simple;
	bh=wQIBTHOX6PxWIL7l3mtyw8qdbfBLJavHfgMJFqkKTy4=;
	h=To:Subject:From:Message-Id:Date; b=VNYOg4Ft/OYM9SLArGyWqVTTrgohw5tYfAzkT1UKj3xkXVnsLwkTmvxMjpKlDrB24ImxRc89gZnP4FzbZvX8R8s5hWEZ2XeHlrc5GbF27r/Hutc338w0HwczZSTutZcXZf9tQJk8yVDgudzETVoeDSEFiG/P8+binFsysGV8af0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeeK6BQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeeK6BQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D5C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762486793;
	bh=wQIBTHOX6PxWIL7l3mtyw8qdbfBLJavHfgMJFqkKTy4=;
	h=To:Subject:From:Date:From;
	b=QeeK6BQ439LpymoEw5qNaWSKAV4UijJf2WIbzccnBbtJDf6zTzGLH9BwtIVw8XO39
	 wLJFmCZVefVqxi63acTQSstCXU6gZiBw1go4QbmY3hC7LELnn3cNyodjvbuUzaSZSI
	 I+Xh0Fh5tcDLfkb7IfBoJRjXAdiX6TqlO0bi51grbV6Ndcn98DRXI2Q3pvIK5us9e+
	 lkV36sdHHvdhjBIi8gvJDqakcM9NYXyzt6TJz7LladI93NhgD9P1/sDyAVggH57/wn
	 Ir73FX1n9luGc4MsYuq+6jCdyy9hsZoWkoadLzZGt4KvgZ5FrQEIR/94YYxyyObB42
	 l0g+liQwUJ7wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992EBCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248679361.12385.12224768545109586081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae97b545047788fe7b7f69c938823f255597f385d3ba20ae7e4e3cf54ecd265b
Date: Fri, 07 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762486793
