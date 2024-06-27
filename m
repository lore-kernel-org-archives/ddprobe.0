Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C8E131E41
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719528863; cv=none; b=LdY/ZZXuhGajLtJbJV7MjBrcnrq6X5wJmSHeuAdeyBhsoxoVhwdfNIyWdY2h0eF1f4KSye2J/XB9oCeHjcMH7NYWlOI18OJMRY50sypU4HSCpEJATKQKlslIuCR8QfwmGqyApIDAGkeGUpV8pCh9Ydy8nssfySF/D4ztnqf8zaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719528863; c=relaxed/simple;
	bh=yutoWzIA7LUXlFCKkx8VjSIK2E40gWjzEaoUMzd3BOE=;
	h=To:Subject:From:Message-Id:Date; b=OaUqVeNAkIP/JLKGaSanHTeRb1f0zWoKElYIlpHt+Aei0xB4xjgYESFnlY/iVUkwJKCpPhmfAbbB6l9cfRUCPsG/UU1XFXS0f1mOoHL82/iy87/6j4eaJAG43Nuyict6KyHuNcYpeqw/qEXvoxEUyKJdjzZWJBjfonQPIWE6s8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZNBYEIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZNBYEIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E041BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719528862;
	bh=yutoWzIA7LUXlFCKkx8VjSIK2E40gWjzEaoUMzd3BOE=;
	h=To:Subject:From:Date:From;
	b=qZNBYEIKZIPInCAbxbCCLiE6f+XVhdXsPqr4gqb0zh/Ma3c1BW5ewRXP7A75flid3
	 xx4Xq6iN/x6oH8ffN9H2PglAQ+3usCnagKb2E42rq6ehylg/q6WfWotzvJKLTiEJkm
	 HXPeNGngIO+HXFRkV/YuLE+jlQe/7pmY5eyUyd3yMT9vTagypxLCLB/6yceoHRS0zz
	 oQxBAjduvUa/ZCVnLhvM+kV2P+hjBvpGqbv3gHmmq9kB+yoXeb/YDOw/EiXcf3u2to
	 9EM0IyP5AWXo52MkQzv6DfrAk/Ep5QMop/Ph8iTKOi6ck5hgc9TsheWEXZq+BSpoB6
	 DMYvMixqAybow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34C8C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952886277.26107.10580872524447464187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169076df6e673fad2d04e2aab05ab2d85ee87c9b7e39badb9b850f1a29d70bb7
Date: Thu, 27 Jun 2024 22:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719528862
