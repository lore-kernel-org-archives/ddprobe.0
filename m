Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E4C3EBF1F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770865494; cv=none; b=hctdiE0e0nwoxk3w+vmW2/hVlTICpiVjypkR1o+Myaku898hurqJRuEcECSK5VdRWe/925OISAQogYP9eqk4fJYAwvICOS6ifEH4whaykeaike4Q2xVDoMmbIpi5LdWrekQn3ZXvj54hKEpoVbgN5+8xzRR5xT9QjXShFcKkqk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770865494; c=relaxed/simple;
	bh=f83L2dD9WOIT+bvFY32WoAfCILaQAq4bZyfyZA6wc58=;
	h=To:Subject:From:Message-Id:Date; b=F9g+gDR++gSkmjfFp2ZA10xhq9iNYDp/enb2u3WDaFc5f4xG7VbzTJXGqVQh8TtpUafP//w5A+fpNUkqEkgQ4PaZFhXRijN0QceGs4j9G+kmYwrRa8uuf9DhbmI21jgQszHHBvmlpuqXjdUHfd5MAIJ8QrLxXXQuZRZkvKiFRrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuegZRfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuegZRfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6409C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770865493;
	bh=f83L2dD9WOIT+bvFY32WoAfCILaQAq4bZyfyZA6wc58=;
	h=To:Subject:From:Date:From;
	b=BuegZRfhZrRhT3kmq8ZJqLtS8d5adKV/RCTzjxudOgU4bgO1+QS2wWxpHi9AGp+eK
	 IoDKrcWspkg/Rc0b2uSmik+9jpMae5fRMPTXZDzQxypzAJo8d3SENJ8kuM9l/LjCnY
	 4ndlKKfwOqVABpRa/GUn9onSh9qon36est7Hn1ubB0CGABaXtvFELWwRmefFpZ+INq
	 hm0dmFJL2JCPKS2bNL6cLh+1QrfU5zgPIT58cqg0yOw7jmJrMnIrqa/i4g8uLTrkPB
	 1ZqYuFF5NLd2p2ZIxfAx0Y5oNIwWKjNuyQuPex97Y1Y1fAkS9bIxcShVivBaM5enBu
	 hSsV+bIm6NviQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D97EEDF022
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086549362.20707.17804128027910572856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9752312ef109e6f9d072492dafb4484888b752d1a8f498215a74466c522250eb
Date: Thu, 12 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770865493
