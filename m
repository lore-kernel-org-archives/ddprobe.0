Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33976534450
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789063234; cv=none; b=gifKWTQ0q8EDXzjhC8EwYQn6qQagaGag1EhFZPavbjhSpENi8cc0xDZNOaulKAxAe/Llz7aO5MHRk1jpj7bJwaKY81LrLEXLnUv+juz9A12qSuNRPp+TuemgRmwcO1J7Xg4+joXAJIbomNsuSPAtYosnlzBtnG3Ib4NKgzvau5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789063234; c=relaxed/simple;
	bh=WaiGtaw5etomEY6iql6GCQPOWSxGnF76A6eRs1M8jEQ=;
	h=To:Subject:From:Message-Id:Date; b=vBcQL03krIgp0nZoLYxw9N9u4bT6VSVHJo4CkLLBOAD59LnnGJEF+tdaajwHaQm+k5VbWwDZ5+D66LozSkgwWWUJuYQgFu6+mveIoPPtWJ/RShxu7SDlRWCfLFUO1GMiG7CLbIK08lXO/WZApkPnNewhFdbrWI7vt159YTrv8Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmH9Hedi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmH9Hedi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D25C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789063233;
	bh=WaiGtaw5etomEY6iql6GCQPOWSxGnF76A6eRs1M8jEQ=;
	h=To:Subject:From:Date:From;
	b=EmH9Hedi7qDjm/g5ynByB7SF7D8RweBS8lyn4BUfj2DhGNrasnXFjoORnf+6eJOhW
	 PhORygn6B/beN/UGUEoxD4scpi0AySzHsY49JaZtEg1ewwq77moDDvKeEcjHEl2OZJ
	 X+3+Raqk+qkyd2nB6MN/3PJS3+yE3WzPV9hnR9tvIQxKSuzyTJFJLH7IDP4GqWCnkA
	 BHZFP+gI/nSVBU3+8Ig5KUhhAYTxsEEfC7vGVf/DeQzIwVAA8vvBdDFutDMr/f/MAi
	 LOq5NMVlKkj1wR6BqA6ghneJOM15I+2+oUCainvc8oRhmBigw1FYetxYS3hxfJXtzq
	 4+UotSAn3F2dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF9AC79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906323370.13011.17768312714703085741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19f2b93f576e9f0f17dbd61567c08ef02a7317e9d2f306a98e4b87fabecf58e
Date: Thu, 10 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789063233
