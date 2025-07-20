Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D751E50B
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752980394; cv=none; b=NVwSXKbJOhnBXrsW8NLGXKA1i2myKs6osyzq/jYF+HA3OV1X5qF+pWlkEX/nB8NaI1dwJ4GfL397zcBIb38p5ni1DwHtPgmxfG+qmbaoXskZs4Ma8i+m02ercpH3eBNa4PQH4HaFfFOYirDGZ22xe1fCkHZAzbbf2dUoP4iSI5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752980394; c=relaxed/simple;
	bh=spy/d8MKe5ydqbpPZyC4WKtY96ml4jzsXzrbcz0Q/Mo=;
	h=To:Subject:From:Message-Id:Date; b=gEk8fn1vvnVHpLMOO2XxLevpRT7NlVzQlbFn/jE16qMJF1qRPW8lS6cceyoP4V4skFT+ndg8UxqesPHfUic+cuspuNx3odcIqZzfmlBgNN4XZby+6GN9NyEJEweW/ObKvligt3cKatqrhDox2PK0iDRms7eTTRGOuUAEe5rU054=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWJPcuL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWJPcuL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752980393;
	bh=spy/d8MKe5ydqbpPZyC4WKtY96ml4jzsXzrbcz0Q/Mo=;
	h=To:Subject:From:Date:From;
	b=hWJPcuL2wji9L2Kvt+E6jeS8QXFBKTDtrnWa7th0rQN3aauvRaH77xCSMYjFkST1n
	 mTcHbfOHBr6bRis09JikBKL6PJpjJYeReus+/yeKxcJPjHBaS+a7sfcgUezSPrVNm7
	 Ou3NL+E+eDMK5sUeWEXXzjKdglOEzNeKMprrPNTy/hGXT6jrKSq55+AvlDDXFHsyvu
	 B+ZknGqczcB19OJSSXj8KMHOMmWHbYVbXQuhuav4lJnqh2jj593b34kqFhYqI+fPvl
	 zqH/gxiUAEFoWCgGI9ySKyGQPMps7ejCXOkZHAnMDzNXvSeRqjFuEVripXiqMls6au
	 FnkCrihjyoNyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95014C83F34
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298039357.7884.8773629738984015217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8f3af80da5797d47b8b3a0484f288f2aba0f65f14598c9eb4c6807d29c83bc
Date: Sun, 20 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752980393
