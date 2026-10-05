Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3811C4248B2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791190834; cv=none; b=CWrjrCWaAZAmAnVEltM9QayZfDq7jlN8A38mVG2nheaAivdlUcREFPu2FDoZR/lwtgKQOHGLxdVe3iMbB1x2zTS5dvpcYD8u9luGvAm69KqjHrPmh4oL75/o0D33HiVZba3j0b6lm2Ei/AqDrcAlnMUQ2vw/hDpP5N6LMOCwxeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791190834; c=relaxed/simple;
	bh=Bwb34Ek9S2H2SvEPvHCqWBqQH8x3FKTgvoAMRKmUlsA=;
	h=To:Subject:From:Message-Id:Date; b=dO4FWS9rnHNppS6MAa20qIk5aPK6LycLDmnhRKS/xc+nOJSHaWykRaf7cbCsskB6+FVF3SLarBQdnHI6yiORSUaShxICBRMr8WBmx9bG2Trore1GeyF1TvHCr1lcB6pQlhst60YE+44K6As3Zxbhnlby8PRsxBG+NmRnRFQklz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e96gm440; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e96gm440"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68EDC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791190833;
	bh=Bwb34Ek9S2H2SvEPvHCqWBqQH8x3FKTgvoAMRKmUlsA=;
	h=To:Subject:From:Date:From;
	b=e96gm4407bMI+aJtcDqeQZ2VbQxb041tQK2uNvMrJRRmyEkkxznv8YOBf6+7kaCs3
	 Kl/r1EqKX4+4nFib5OUIhDSEJHdH+nXii7mw5IY8puM5r1OzYYZYmrt7BfYn0a3gR7
	 uznVnqJ6jd3jepJTCgeIyrd4FxjXhxKqlfnl/REYaaZTXZppBhgyXWxH/QcaB4t0w0
	 4baNgHx/R44abIN9TXRhwgu/y04XYM/MiHCWbUOk3XnvrNabfcdABa802QSEmK9Sj9
	 iM645SjajRIAfB8/K1i5pxabHezP7bvN6PUBwVswaOpmyUB2blF4Npuqhjj1O0h5ol
	 JKAQoCwlYHo7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACACBCA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119083369.11499.6224705927050724849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d53a28047e6b288b2e00d369de47ed7563ed111df37bba39b893463e7ef3399
Date: Mon, 05 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791190833
