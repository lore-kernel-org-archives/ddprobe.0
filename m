Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56427394EBD
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787609434; cv=none; b=ce72Bk4QWAGrBbRzNcMWudTOV6Wuy0PzinknITnXb/8dEE4nMilBF3T52XxYERM3RdZOU5T868a/LQgt9uoN+zVSIINq1JcCevkvw6+/8tYE7JFT3rclKoaUub+X3yvTVpMa7LkqtGpwBW9rrVcTBmBm//K0nmJzvzlQLZu6fqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787609434; c=relaxed/simple;
	bh=xqbK6o+V/6uKT1rYrYjVZ4jriGxkxsEqt99UMNbbPk8=;
	h=To:Subject:From:Message-Id:Date; b=JS5ly9jRGWrIh8HB6JQF4hq1r55gC0HcShcnk0jchddmewwnMKEQiNiezOltTrdp7On4v7BmRQxW5u0g/qIEbQWDic18Yz7eF7824FYUGZoXwskjLUirUjC4W6GRVg0+fILgZB7GdLdGxqW8iXvlFVUxkBtQBaNvJLwefLmSjXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irG4Ff8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irG4Ff8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1CBC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787609433;
	bh=xqbK6o+V/6uKT1rYrYjVZ4jriGxkxsEqt99UMNbbPk8=;
	h=To:Subject:From:Date:From;
	b=irG4Ff8m5ijGGWwh+5PiYIHRIajHgVB6jhLcYI61khs6qfB4U8DBTYPJUTNglIvGf
	 GCykThiohs2ayn8YtsXDN8xGmgL21sTUHRDWJTUyNCEI7qt+KKjQlfhDBB/G1vkO82
	 NpL5rxixrUViV0SSaKQ1H7txs1iS/lf7ogPvD5detWmJN+RvfWD5a+XlooKqkwI9xi
	 eDBoxNKgCxJxLn5w+wEw1RMk/u+pP8aejJhQX4HSf/Mj3QKjCrT+IGljq5sFzM4INX
	 ek/USPu9u4JiLSREHQAyCM8LUEN9+bMecObHlbszjmmWNuid1J5PdL9ZfxQJx7bE2l
	 KiaPofmd+anDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB03CC5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760943368.6459.12009639389518605867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c42bc856c2590d2626da698faaf6e279f55442e2231620a623c1a707194250
Date: Mon, 24 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787609433
