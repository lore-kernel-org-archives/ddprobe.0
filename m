Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DFB27056D
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757912394; cv=none; b=otqv4DVvAbeDg5Z0JqTFFZlqOC6p7LsQAgLHTwO4aEKR8WobRaB0gAmq3Nl1FcdSyAMRKnlDN8h2WezuVzmr0SXVhYTfvqE+84Dy2dtyFGr4pibnwucOiN7geHHAhqSSPxQ6Ie2vRS9MNxy5qgXb8BAKYvHxxKzsn4ZBkUtqDHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757912394; c=relaxed/simple;
	bh=lI//TRjI2p9ovHhQkJldf+tjv/z/RHpEcZb6OGOk0xY=;
	h=To:Subject:From:Message-Id:Date; b=iQMtTd8s6FvLY7DdpG/WDTkNFlxFopwBBxlw3/Q3BiFYGqFddZQiJzrLtft2LQO52XZ4MdCPNaNIwnt8vAWkYRNz2oC3yO2L8vfT7U8J7qfbGBNxDQh866PAGtt3vXZm890whSC+JEkkgT4OoUcd1K0FbOjZblf1mHwOL3tx7go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfTRyczp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfTRyczp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757912393;
	bh=lI//TRjI2p9ovHhQkJldf+tjv/z/RHpEcZb6OGOk0xY=;
	h=To:Subject:From:Date:From;
	b=QfTRyczpVBwArGJupKcafPfe2r/4Zddw8hdlLjArmiBOaSHhkR3BMV7PsTvFbBfgg
	 QwxdyuEpEkv2cjGkDoNFb3unwaXw0jOOJwdKn5X7X+Phu/6tLLzxtaUyURXnLJ+U3I
	 5ncm+NGZUWauwv0Stq5zf0NEywz0IJXKNaj1PGJSyiS4nz/uZYUR6wNuBgwgav/lGy
	 nN8e4HIc5mglNhGOtVBibH++EcCzmjSSUKRHwaHey23GZfNm4RKPtLHgX5mA8CXmMD
	 B2Od0tQavtr1recjzYB3Pg8NK115udhHfl5I4LIMxJBfKuWBZ33SbPmN8u1PnPhbjL
	 AKuynnpXxFtZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB2CA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791239357.4639.11797580050982349187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67985ca9ae568e99ad7a32ca6e339cb9756d4682686e958e002e6fd2ffbd2548
Date: Mon, 15 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757912393
