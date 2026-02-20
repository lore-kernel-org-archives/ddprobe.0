Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B76148850
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771548894; cv=none; b=dnZWEdJfW96CiDSXo96N3jl3M7IR8S4RoPn6RMOmapeM1QfFaJJlx5hKUpmnrpj/GLfxs9VHwTtzB3JTNDPe+7oXSr1/uroqItnOCbFxnIWa6DZNhNyNO2kcG2QPjhZqt8SPYA4cbiECUEJkiomQOYSuAZSmUlGhLFmfWmQK/t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771548894; c=relaxed/simple;
	bh=zruEqGuqT6qEFdfaQJODUGFrrPBxsHsC+xAX/97GoAM=;
	h=To:Subject:From:Message-Id:Date; b=M9H9Rggvlj53GGeU5A+clmHwYpS3BF8k+K3bscjoGCdg/TcPCwNOaBEAPrzFovYmyi1pMfxPjv9AmCQZQvyQyiw6ch5ToN8KsF/Yiqedfpe0Tg/DgcdesV05Np3O4V5X7Z6ftKNgiNwTXgTU9Q7mg23g80MIbbe4T0A04PJMHT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMp98waf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMp98waf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5E2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771548893;
	bh=zruEqGuqT6qEFdfaQJODUGFrrPBxsHsC+xAX/97GoAM=;
	h=To:Subject:From:Date:From;
	b=iMp98wafH51cL+w97QBMvS9y+UOlkTixY3p+M3dxGlfBMxCTJKxgWJ9eo/pBIf7C4
	 ADH+n3igkfvDYTw4SMwun/mjFQ3duhemo0qJ/lIbmRrmm1Vi8ycvTGdvwJt40P2JQi
	 orkKz4vUMQ9CSdPXsfCYC/Z31MN155HolNiRlk0eVS1s1kF/E0L0Jr3SCQEe4/49rt
	 AdJ0LSQXlVRunBVNPTeswG17pRYtpCCa5S73oqmcwLCjF+5jll3DwmtrjyRr3M5858
	 bEXxQD5OWf5R73zTmshrSH/KKR78zoNJxVkF5foaipmulud4G+1MvM9A79qbVGG7hu
	 5rEWMCyUXSaSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E4C531F7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154889359.4486.212136280928929701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6de964bc77b2043181b1b6ab956127e455661d6dfd388739e704a41cb2ac8f
Date: Fri, 20 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771548893
