Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5604E345ED3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792120834; cv=none; b=ePOcR9Gq76wK91rQYy+/LTQkVWiUq3gHApwVdnaZHzGi1PuDlXzeWYCVCfs10fexNgYHPQwrXT23pa1wm55bF/ZCg5uXF8r35oT/Dx+rQo5+J3COBvfFZIopinl1ponoEaIg+aKFqt1RAA1ItWJj9dQTjEro4vmPjpiB6dU8Ofw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792120834; c=relaxed/simple;
	bh=6gj2Gxbo8GGbOIxCh1GDaVkORFyB/pjNqTkM0n6tG+A=;
	h=To:Subject:From:Message-Id:Date; b=sbkEfFLJEOtYcmwsKraOABN9VJmUw9culwXxD1kijq1Kw4kjXBUht7nD2BqDIyLWnAqlByBDD8lW+gXsA+SfpLLvnZr4SEGhrPnm/zgvdQFMfbEqNVr0VMvSSwaYxSTDy/1xuk1inYllN3AwOqdTbWhQ5uert8DET0jrErLyyq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYbqd3L6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYbqd3L6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7B1C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792120833;
	bh=6gj2Gxbo8GGbOIxCh1GDaVkORFyB/pjNqTkM0n6tG+A=;
	h=To:Subject:From:Date:From;
	b=nYbqd3L6/HTIqyL5KUmOaFTZRQZ3dHWaoDChKS3DZ105UH3VKpCSDBtsJWj6997Dl
	 9fzHDu/fc93omtftG51D9EXQ9mk5r7xS3STeAollN4V7R++hTwEJCyR5OZqsjz4KbO
	 aqkTQZWiCqr+KIxqliSiUCWXAlVX/ukU4ovnTHiXdVcxmCz/SE7Q9ovi1fJqjmtdxm
	 qPNhhfc1M+AmDOki4TcLOaZ3ay9O7jdEJDNswiPRpjKLKDjZlIzA2Qp6e3p0nie31I
	 2JaCdjzaHk1Yyeq8pIrZFqwr+eyXtzRLSI263RrDlua+IGADUFTLAdxyj28tmfkB6L
	 3Z+tmSxHGGjoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F9CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212083368.5776.12361672582692068990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e64231658e44eec1beb05c5a11f4dab136547b7b066ae7e74df0fccf16cbfb
Date: Fri, 16 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792120833
