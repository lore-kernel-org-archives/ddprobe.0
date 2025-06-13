Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202813FE7
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749843594; cv=none; b=lGocQcLSdMlq4fLpjzchBdn4kznsjNqOGqARsX5yyyZODebkisRRSZ1+F+Kf19vZ/sHbNHr8BXb11bu3JGDr4CZUTFuKYIbgwipx43YCxcZIIHLbaud9Z7HSpvA0IDQvxcS15leXeMt1DD5JMs8C+papu9GHHKe3Po5oAD67lms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749843594; c=relaxed/simple;
	bh=AASZPG8KwvMlLtrTEx7masONV3j2s6J18pdw280DP6c=;
	h=To:Subject:From:Message-Id:Date; b=kgiWNysHh8+6It/vZ954BNT1esf/sjiavIujN2kDmyOGeErWRHufBf57BkbTzxPX1r4mJj7Pv5AFhlm3TsVyuhEgP3wb2S6wWzjip9D7Ub0chxU4VVTJBrkJkhOLnL9x+gNZOp/rnK7wxEwHi8HchiOOFnRRi396eQGnVbQ6OtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYBaZpoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYBaZpoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B52C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749843593;
	bh=AASZPG8KwvMlLtrTEx7masONV3j2s6J18pdw280DP6c=;
	h=To:Subject:From:Date:From;
	b=AYBaZpooiA58s0B3w2RVJpElRN0xk/P1Nz5Vg9QitmJ1KZR/ANqFoSDOPcRvDJt1f
	 nsQ241t0VGg+U4X73u/yYGbvzAHrXeEO47f/uhWSqj3T0eDiQ/61KIjIyZxvlo2U01
	 jLimApOssEjQOso5gEaLhGuCEQtSYZavUCt33mq38Zcn3aqqkGhWZW835nW6JhOJah
	 L+wHGtwJrPcMLN7+QeFUCOiuQhXMyzserKzkAB83rbOf6KlF/vcRT2OTOxNp0tGUZl
	 SQUHnruzjxfzEvmIENRnbnkwt30TQpIWpFVnKheuLeLlxGFydDO+ImJ+IX0Twn9WZ/
	 tVAbHBcSFfxdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90472C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984359357.32500.16431580653036216296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a94740a90afcd78fa0c61de2209318ce4d33bd4897bbf516fa0d2834cf496f
Date: Fri, 13 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749843593
