Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0822941C69
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760786394; cv=none; b=RfJ39Dn3uUNr2YrcBtLEJjdMQmDXoOb3iM3slZ7pfl9dOcnAlsMBhbKrLumpT9HrONZ8+F6YGOe7UFJf7qHI5l0Y83jsq00unFK5JxTX0KKkEeJWk9rSrPdTd3zrlRsGC4uPjQGJNQ6pqWSj+FKD2irbREu3PJGKlgAQ2tMZYxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760786394; c=relaxed/simple;
	bh=uDcYgjG+tAIx02/XTBwSDdqKR1Xa9Zf1p7Bra23NLEc=;
	h=To:Subject:From:Message-Id:Date; b=oipsET4Gz4PJ0GSTfwcLE26av5w+6t0GSw3ICP7+tgzGDMBUtA4lsLsbmBvgVkusf0jRFQEOFO+5LzVQkpwT96MCGW7pEjZMKclijg9Mny/yibQ6FwFwT+4HWRzwPMVbpkc6YKSd2YX+An5NIOGXVKmcY7f80Ho/QHyC2aORO/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAxcNNPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAxcNNPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4846C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760786393;
	bh=uDcYgjG+tAIx02/XTBwSDdqKR1Xa9Zf1p7Bra23NLEc=;
	h=To:Subject:From:Date:From;
	b=OAxcNNPxEY0JWIvjP+AdQQ1tg6DijAhGziuX4gVc6vSYnb5irC5Ic7NmczPb9IOb5
	 NjxdJXHRyIvfAt/0IFER1HNFGVUcPap4RrB/DasRUGwo56Vp9650Ju6hJBEgoR4sAR
	 DbDumj9Mm5ofyGcg83BRzISyl7JphWtOnALLPgPJ+pyVo7iQ/IvsBdN9H7MPWvgSXv
	 DRvNCLs96BNJzBz93OEPmkIENfJfvNu7nsFRkS+k/giq04SQKNYgJ8iwhLvv9kqkeF
	 d4F3Fode16edX/riKdSJSeK/sm+dF7sy3witpeLSgLD9dUZaVXSqW4tTSBZ+rmXa8Q
	 FbnrdyKdrJriA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDDCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078639358.2056.3664804050683066284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c3350377a3c33aed34fa4d5198b6986fac2735af04881571f0aea5a2ac4d2c
Date: Sat, 18 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760786393
