Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504F22D057
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720532183; cv=none; b=CRFu41ZOWdIW/uh+k6oWhgZxSQmqdoWtSMyreQ6VWVQCXmRV6YUvYlNVhEvZ0mpvQDwAuwMKnV6+2cGUsW6x1sLSZMABUQMmcJIXKvOe5IDxs9qh+YSSKgT8AFJIrlmtPANTcSWodlVGxJE3CVTuFirA75ZD77lJ1l9sCt1FORM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720532183; c=relaxed/simple;
	bh=UhFJynX15BuY5/zOYSJnmNH3N1sutref2wpnuVjazHk=;
	h=To:Subject:From:Message-Id:Date; b=jO4X5npVgq4iivOtJNhFVGrd3lH1I9Nyf78Z3oVtkzH0PVwCOtSarXOb2oDY1semlaOzlbgImjL/wompSRn1p42mLRpUudAQvRkXBW7JPb8AxawEBMygU4g4Ru7K75u3HNL4thA4KXdyaDlR1YHQc7DNHNT3SpdTpmH0UxPQc0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dn2pT3He; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dn2pT3He"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CFDC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720532182;
	bh=UhFJynX15BuY5/zOYSJnmNH3N1sutref2wpnuVjazHk=;
	h=To:Subject:From:Date:From;
	b=Dn2pT3He57t33CUXdkasiXUfkNJvgPZDUq+prXP11KR2kMiCXyr+A7YcxKDAjOlwA
	 vDgVHR9QCvas0ZOwvlugpMXV8bW38Q3nbaItTPu4jJkaEuS1CE05TXHF7GiNLm7vOX
	 asIuRQmUZLNi64kF4NKzmvh9aZ0SL4L5eKegA9GkGqA6B9Hd9dTUnUL1cnPGNnRZle
	 y0X3JljygQPA5vhrwU8ESA2KyiPBvC/vvUgSShqchYKB359uKGDQ94T/7iE68lb2+X
	 375FxLUX95qtraNyldNxm2x6+2tdmoqRKgkIaHwZI5+jjqXeL9/wAYtxk5Ve1eyILH
	 ojvaZC0Rg98iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC31C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053218277.29034.4816917743879638868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9208a4809a55a84126e52beda499e71f9b7ec1dcf9a2e2878506e7eb5ae3ef2d
Date: Tue, 09 Jul 2024 13:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720532182
