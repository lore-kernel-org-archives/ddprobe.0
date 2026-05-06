Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CCC22AE65
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778075254; cv=none; b=m6gXitIa0d/lFJrKpjD8RZ7g+9zdtlGYGSTQIvZWtrPcx99G+7L5PKO+/bI//Cazr/Aoti37ozFuOyjUOnobcRS7vsm4aEkuQdEI1lphP+8889OBGVvZhV1o1Q2hwHv8xuLE0ZO0Z0WK43T4IZ4Z0fe0eFHioLe5hzg3jw8dk/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778075254; c=relaxed/simple;
	bh=PuOnzVgoGC4bN0Uk78GubCb0YSwvexUS7VgwRWrgDiw=;
	h=To:Subject:From:Message-Id:Date; b=LnjRsmjQTLDTlynRlARB34TcZsMO0nx0nt2E+bvq7S1vtOUMfORTzRFfPfREX5SGSiHDaGD0FpcYR0bob/i2Gqsv4WdgLUdnnLJRs0qVfSSrBZJMoqHLI07qWMuIX8VXK4J4m8dc4Muo5bEzecH97uAKPbfY/YRZIjAYDeck3TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A39hxppm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A39hxppm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAE2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778075253;
	bh=PuOnzVgoGC4bN0Uk78GubCb0YSwvexUS7VgwRWrgDiw=;
	h=To:Subject:From:Date:From;
	b=A39hxppmQiz4iE0RmH3obNxqtMZLvE/z6PM5eMap12RsiR0hU2to7LSso2kkrvIjI
	 ZGpzTAAjZor5Bx/Tk37DmKON2bGR+NMiOn5JLSoQ2KIxqXxRgSdyUOCy+UhjKKs5js
	 8xJOXwSsikyx7BxZUzuoZ9JCREJnggDLKpQ7/sDXDZbj2r8VQP3p6wW1hkDaDRWczG
	 VyakQpcVYaf//eZbZQIEgfpNmbC8RYJ7E55J3PfXpGZ0OsfKOa+3KV5nLtvzZf0qKQ
	 tJTgiUVvaT2cFPtNVldbtMFlbdwx6E7yUWsa6AdZmAlZhSPblx0SaB4tz2kpwF/3XU
	 GoftoBd1UVYrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DD4CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807525368.12252.9443505323536797026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9269da1977a1e2f052a9bc9bb0d908ffb4597f09c3556b26fb2e7eed0ad8d2
Date: Wed, 06 May 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778075253
