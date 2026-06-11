Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550483BB104
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781168194; cv=none; b=nSa9t2hB6JIazX9e1IfvCb2yOHtTUo1obMBf/n4NOLFo2v3PZee3OlgM5s/cDZ1bJmN1slaMSxW2AT8Xn28Y1Z3Y5Ic+Plj25Fr1nH/uXOQ/mP4CIOl32Hh7QaxjnwW2pKGZRIT9E8hmWHIqDipN5M/eDrFR+alZoCuS1biG/LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781168194; c=relaxed/simple;
	bh=UIq6tOUW3dvTyIiBZ6b4Vr4tfv9vIsCNp9nEDXAiehE=;
	h=To:Subject:From:Message-Id:Date; b=jD486J9sTWx8N1CYtvKqw+OGTnMuYH/9AVDQsDjONHkAFghYsdbm15WhDwFkwQh1fE+8eoaYQZbHUrbY45Gn9EVZ5mViWxS5vUoUjacJzgQ3OxpI8rkRDUtzUOVtV2x/btiX1DeMYck6dEw7Gspf6zCYnahZWMRYqJ1dKYcIb9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7g+4U0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7g+4U0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30BEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781168193;
	bh=UIq6tOUW3dvTyIiBZ6b4Vr4tfv9vIsCNp9nEDXAiehE=;
	h=To:Subject:From:Date:From;
	b=V7g+4U0PAKuUgGO//iqkn7K53cU1h30miFJNoPdTLhsdugK6g6UMD1G5b9Jbo1YGl
	 lvtXt5FpkAa3lNSxp1ngE4YEZLXoJO5nAc4VGDNaIj9gpPRG+dZ4SfPooOF4lZOG5u
	 hmgw2Lxy7SUVyP7eitkGhKbm88WPWWZhB2Dfvh1p6wPKqB5FK3PxWRsLPmcQKiqOK4
	 I3FMpKkKX9djmkAXtFprzznjMzWoxN1PSErnUrM1svsHMffwmXIM6RO/Zo362SPzdh
	 xj2E7B0mKjsm8EET/patkOzmxZFMxbRx1hEAFh+n+1O9W+GDNfXjiTKTI5fq+EgO6H
	 jM8XOHSIg0lQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9510CD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116819368.23057.4711309791693893790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2da13bd968836a46692992bc4baf1e3d9c627d69a70cef7ca1c9f710e587a9
Date: Thu, 11 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781168193
