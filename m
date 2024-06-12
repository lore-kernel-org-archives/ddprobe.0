Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A9E21360
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718231903; cv=none; b=Ki1BTzrfsx9/wwDorlAoww6sfOjq7x3zy3000CEHfWJ0kMsAjbn5Lg91RHqpcSNgMsnD/z+DB4mKsjS9ZOm+xw6dfUjpnzL9AfjPxWbiQoPjl1r5ZJtez/b4JAFed+K242jymOjxR9aNv/rEKG+u2QA7pThDzwBnL44bkO1OmrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718231903; c=relaxed/simple;
	bh=cG478Xiy+xTGC5kKpmx1frxIsa57pHwHhNteD5SnczU=;
	h=To:Subject:From:Message-Id:Date; b=J+pOWC6zDwENsMrAcijEdMMYVgCUaTg5MtA82YibEehvSirsZJNlBbK/npa2koCxybEeq0QgtmY1jH0+wlrcC2twGsKsCFOk5Y9hqPKkdvZpQVSLcL3B9bIWOYti4J2hq6Ogy/SKIG1gHGyjLhgv5ZILH4e28nTMWIRI5ozkL4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7Pl8tVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7Pl8tVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F38A4C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718231903;
	bh=cG478Xiy+xTGC5kKpmx1frxIsa57pHwHhNteD5SnczU=;
	h=To:Subject:From:Date:From;
	b=O7Pl8tVXd3B6tT80TjuCGnXnqC9i/Fj4X6sjFVRoFurvAoIvQq4qhwu1vpFbK4Ijf
	 NA2+CI6yCmwZC7loACxluTOih6LA+tpkrhIf1F/fQW3z6/91D0J07lcuBY6n1dSii8
	 csuRIo3e0wXtNK3NvVH2NOAJPNs4AmDIHErMEg9Gges2+jUk93ASBg9yX5+U5F0hsY
	 Uh+1LBWyWyLkC1At2k4NfWZbmxYmZM9YGRQPtoZNsEO5c7k2yPexFqq/Qf7K1Yz2s0
	 y6TVXNpszQCooE3uQWAYfb/KWyvR/aHDD0jffzLPYPHyn50dunVqrKHzgxL7u6mtfM
	 9+h7gPat0NgEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1A2C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823190276.19532.2208953100871642976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffcc64a5d54f4997961304049a1378143a79961dbc6331308f4f854fe6e7a366
Date: Wed, 12 Jun 2024 22:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718231902
