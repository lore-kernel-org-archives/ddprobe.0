Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C353B2BE05F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774066493; cv=none; b=OuoAPxoPeu+92R46xThCin62KlBjPQjQ+aBwpQt8I5QIYIsCUB2Hj2bVEsWuSc/UH6ID8CsOfkRR1/jhPBKCcm4P8fqeB1Jp6BqaGoTFQMmLPzkCNpMvSZhk3IuvBUt1dJxYzXm/XcPaZYgORiKawNaaJP5x/wgwycZdETRCDl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774066493; c=relaxed/simple;
	bh=vksbLQFoPGBDVPzvkCtP7aMVUmGV0wavCmZZW7x5qVQ=;
	h=To:Subject:From:Message-Id:Date; b=rya9t274jAOuP93Jg94885xUR/mME2zA4H4JP4g09pLh4Yyh9RI9LpdsleghXjTqf59Z2whZLXmMH7y4K6JOj5y2SzVD/ODnbW3SHA+HbOjNQpfj4MEl6wV+yTNSmBzb5xOtR351tIFq4HXq8Ox7cPFgZ1oYWVEADNL3KaTKTzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzKIDqRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzKIDqRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8B5C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774066493;
	bh=vksbLQFoPGBDVPzvkCtP7aMVUmGV0wavCmZZW7x5qVQ=;
	h=To:Subject:From:Date:From;
	b=ZzKIDqREa124R0Q9mIzVPDnAMalXDUQPgMacIiJ4xBXJs3xeXDiykxS+xHqSshHh+
	 e3NSAG/N7ViisTEsk+wzf6oWHp6VKba05OghHD4J2jgwdV/HEjrP9AKdGqF8XdyHes
	 3wcvZuFPu5HjwqY72utgVYZWtHvnWc6pDAA9dJZ8lPSnkfd2oDPfdYByryRK4AckAh
	 WXl2iqgxlEUgemySed2ZQvSSe2gC4Tym6Aa2Ya7ixXoHu+wG15Utbo6Nrwuo7DNRQs
	 yhZnyyQG+Y+ZDEmn3SAO17dQz4w6pWtaTSm/MJSnD9/aA0ZMdl6No8Ht9TOlQFF3fq
	 LOpmnEvJxgwww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF001093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406649357.9912.12650972448158005479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c04cf3abb1fe41b6e1538398dc1d89079cc3653cd58c71cf8f39ee3315e87453
Date: Sat, 21 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774066493
