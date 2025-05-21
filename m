Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32146267F48
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747831794; cv=none; b=RRxAPKlQ187iewPkwJTt8pHX3hQxZWXt4QvxYwERmuv4P65LROVw/xUnM7UM0/6eBOoHl9G3o8526neIg5osTaqdDXsaXsYjBsxEGtIXP1l49p/suL4WTUADTtHUwII5/Ar6GzWckiS0fars9ZgtSy/8vl/ESWv+tgzqGy2TobQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747831794; c=relaxed/simple;
	bh=tAKSsUqY5Kw4q/mSd0jmlze++JEULJFQUW0ekTwofXg=;
	h=To:Subject:From:Message-Id:Date; b=W+NT7ekVR8X84oIN8Duq7lNgMxw1HLuf2ImigfaCsaNbppjPC8Nf8o79UnMMCj5HnXUQXktrz/TvyZeB1H1adnhuw6LijNaKYsR8ET94Q88CJPZFjeUnQCXcONVXqtK0bDR0FVIbT7anDfrp2kTyEWWCk+iJZXoa4CWaNNUgYIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXpxxnn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXpxxnn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0DDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747831793;
	bh=tAKSsUqY5Kw4q/mSd0jmlze++JEULJFQUW0ekTwofXg=;
	h=To:Subject:From:Date:From;
	b=kXpxxnn3ItCQO18qRwkZTwKdKEVB5dUN9uRi2t25e2BcJZ01d2GkdKcpX2areS9gt
	 G5WXhFYOUMG5UMLEXOZNC2f+2Ytd0c2a1RB92pyCTFIVtmvdaTw5UrxACj2z9f092a
	 Ox43KMINm5MrrLZ14W3Dqai3/m1JnFS7vYTPAG10F2CVjdgCAZeY65vHhKKnd5oyDQ
	 QLoFEZKsPwFE7mgPsbGghmO61N7p2q27iBxEhbO2gyWPdNcoOYmmUzqFUC0B+rw4QG
	 S+/MNQ5uR4tqYC2VatcIbklP6c2rgv/4oXnNwkGCVIoEPKg3wfMMKvQrgkCZcnO3Su
	 2h+RYbBaV93gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7FC3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783179357.725.12275644000120049265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ab3cae5751c138d40fe47b4c47ed6e673d171c2619abb20eacdee5bf7d5939
Date: Wed, 21 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747831793
