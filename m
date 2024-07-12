Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0C81373
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720757843; cv=none; b=q/CcwOViJfPGg2ccakYEhA6n+pfR0M/G7FtCTfsJmdxjL2cMa959h6xQeEBYEqAxtLF4soW5VTFqSlNCmrk5eGHbNf7wPVyNKxneB7TPV/KuO5NkdwEewZE+/ujpkpakSwMIz3FwqlZo9zIQBpvgu02HUzGLYtiRY6G3RTBHReY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720757843; c=relaxed/simple;
	bh=1mkdk9biXtygBmeoRbpByc81+fI4nuc7Tw7xKErN7Ds=;
	h=To:Subject:From:Message-Id:Date; b=gFiANcLyvms7olr9XE+UiZeik7knspAcqnKv9FffLvb1m8O9Oj6KNXITDFvMMUw3tSOYW4/e56SfdaWa196HWqUZFuss7IFu6niaFDGJP5j8EFgNDEYcm3LXoK9n3f1bJWVuoHHXuG6PZCsL4DzWW+/9rOW28HC5qdY9zAkWvgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quURgQ5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quURgQ5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04E1C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720757842;
	bh=1mkdk9biXtygBmeoRbpByc81+fI4nuc7Tw7xKErN7Ds=;
	h=To:Subject:From:Date:From;
	b=quURgQ5n6VNKeWhh077CT3Empq1EJ4tOR1xiyHAWnlc3JIfKcK1s+8SzBk+nG9+qh
	 gV/tIbEoZUhhRkVJNWs7JwTyrSN6s2Bqslpl1ctFQX3FQcszZ0ME513fq1m9ZL90a4
	 hfNIAZxXjAI4wllzoDJT/rAl572xRezK4kKy/XRo77EPuGT4IM2iMTvIX1yontcqSh
	 raCje9y+vrS8pwXPaKVy7TiFp42u1NFotkt3N36YjV+ZTPakTWrq7O/7z8KMl4Tz75
	 VRN3qgKFJ9PgbTQfbTmgj3rOHvSuKAgSTReVJf68wXyVjKBljNHPAargyFw4NHt84O
	 5jdIrU7pWqisg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD97CC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075784279.16154.10668751751829374460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42ba0e23efc7c5aa6993db48725ac90c8f039118551da172add017d7215000b
Date: Fri, 12 Jul 2024 04:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720757842
