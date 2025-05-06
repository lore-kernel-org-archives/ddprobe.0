Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43F4278146
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746533993; cv=none; b=chf/wPjgMD2F01kwb/w7NSYr+hof418rLguzzNA/Oqu08Y+MxEv9d1eu7JUv3EZB6ybaX73wONxLMJWIzCROHJkQacgWU9dSMlOLwGQVc7WXeKAsOl2Ft8cdNs3hYwnt4Rxd9ZiO6w5hz8CzoVO6IO6sHm0Dx246E4AlyyoAXHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746533993; c=relaxed/simple;
	bh=AB3We0QXWpfwatQlMqf7S3cAJVwSeRRxRchuIrlD3Rk=;
	h=To:Subject:From:Message-Id:Date; b=QKGRI1izbkvGR2dBOFMeG1VuNBUqZs0/7EPhD+psm2xDiQG0o0P59mUNw2Bjsc4FiNWUi5lTqUZtzK5rKxIrcorBiNPwod3VyFUpZKKGCrsNn/7Qln76Fe9wOdjMhVyagwnUFk0hGq7b7VnhiV/6S8OQMc/FRbhLNZZrxVHHfAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxsPFgAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxsPFgAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CFEC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746533993;
	bh=AB3We0QXWpfwatQlMqf7S3cAJVwSeRRxRchuIrlD3Rk=;
	h=To:Subject:From:Date:From;
	b=nxsPFgAlciJRTciuohig+zBRwwJfqEYU7pPjRICxMkYExF6kSw/oILhxO9K5WAbHX
	 Vcp4ox5wo71vswdzQHXrRfRock3PICS02tdp0IiyU2qpehc6UbU06sEoIN0tBcN1Yd
	 uZOzVEiS7iJMp04dp7BD19gtuIKc2Xl2D/N3R6qtyX3kJ2/nEdWQLr7IYONrrgLPHE
	 RIJM7BKroc4Pckeinv/A9xjM4Z+Kep0i4U+UOjKfwdzHDHHBKAsYZ8tOBuqIrvkwVD
	 L9wDuVSUM8h9M5jzsMEU7t12qPeslpAXa7PifiQIdxq4VpRwfMujbyfsn+4Vdqb/tz
	 jexynAqr6zAUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC3C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653399358.863.11286450759043120259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21bb6c8da4f4f0d3a6c58c57fc64fbc001906972bb1b6292bee89102e3a56cb1
Date: Tue, 06 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746533993
