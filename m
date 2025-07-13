Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343321FDA
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752368394; cv=none; b=WHA/oFa44ZIH0Atgb0IKvyHl97iLi+U34ZOfFZ4n5cLWvqa7JVhRQsPopd/p0MmdVMd+Nix7X9UYVbBdQAXnr1juHViC9gXpJhNDdY/InXpueT4Ged39nqZ3mm28Ri+PfeAa9ZKwC8bSDCvArfP8IRaOBEcJ69JR+ZKn0jeMS0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752368394; c=relaxed/simple;
	bh=NYzvL4jtgg4Z3fSpGPBTM/vIRYjlcUS8W6R0yOjfzYk=;
	h=To:Subject:From:Message-Id:Date; b=jxr4inm3/n5/EpLKAl7trTqRlhVMna9UIR9F06H5lUxXb+jA2PdDc0JXLZc0S2Gipv7KXbk8Anqo1bv/Q2EVRQErodQy5FhQz0QXHyHoqOg9H6cb8jw62ouzfjf/qLpBvWuRlOTQHhjgN6w7x52q2R/NyI4DiMYwXuIs+CPVLjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWckXDWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWckXDWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3414C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752368393;
	bh=NYzvL4jtgg4Z3fSpGPBTM/vIRYjlcUS8W6R0yOjfzYk=;
	h=To:Subject:From:Date:From;
	b=nWckXDWGjAyrLELL3NZvg4qvdBZzEX/ochJVkL2inQp6oPXvQDpe4oqe1eUG+W3q1
	 +EYCPMe/IiGZ/zUAABspm+TgUuw7hxr709tz48ZfED0e+aaSTU/YZnBQa5XoVhBWp2
	 x9p9PyHlgc5JKDR2oF1NPh9VItt1FWd5rO7ExqxGIc5mtPydza+Wg93lAD+TKj+pOo
	 zMgcZM8QuSKoLhkWhHOarE1e3kAav3dnjibQzwVaF+a33eVnpcThmmWsm+PF82Ro/d
	 BhasikhMMI1w2IGPClh2ZDt2QARHSYPw/mJzhiFZO64mZGrT8SqPaFlLaf6MkoKGIw
	 zS6E+EWbJhYSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D40C83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236839357.8114.11728099648027608087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59bf1105635021ca3adbaa65b91b87cd68573e43f5679fafc847c9a2ded4b50
Date: Sun, 13 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752368393
