Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7491DD0D2
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730844954; cv=none; b=NtHM0shi/uOis62nD9ybeigi/wulhNFgHN0jtmFZk48wKyHO3O395xS8caGbAsYiK25Lheqx+ukFwtM9umjb8ivsoBWWc2e8njTW479Ocxcc73oHLb/BSTmNgFMzlNqopZPVtqApWKLm1qUc46tdx7smeGGwlmsLsqmXrzbEEp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730844954; c=relaxed/simple;
	bh=qL6iRHLEXQfKquBtDi+lERSB9qAUCLTjmxx003QeEpo=;
	h=To:Subject:From:Message-Id:Date; b=h9N4eIskaXHbEEKzsGmyfl9fgz3rkVmq+hP4vxHLA3f3P48prOdq8YMUMz+VUsLWUk5pWUa/BJl374BNPeHtzBvelzErfxN7+LLVpUX/l3l2QHVb9zQZj+8GfgCEExl0/FmtWms+kt9DA4UWlmxdaAf7CI+Io+mbi6fyv1yYOhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ/p3bNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ/p3bNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38CFC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730844953;
	bh=qL6iRHLEXQfKquBtDi+lERSB9qAUCLTjmxx003QeEpo=;
	h=To:Subject:From:Date:From;
	b=VZ/p3bNz2uwQjmkbAKh9IhqFbMOZJwVuzmSO5QWSgL/19gyUQHYtrnNXUcKcCcYrl
	 Xv2SKZL96L9Aa85ZT4J6vlpe1/cTqdxp9bPj4ukFqAuii9VrZWjmGmqTah0H98Oie8
	 fp7E+Pm0lBz3yoq8pLV+yhvyV0zLupYXcIogaxxjgq4MU1b9xsQn7oHu74O0AeBbhH
	 tHGgCZWqNXI/TyNgD6Q2xtFWpXKz34O76BQVH+9BPlVHRjntLIHwQy4fMdInv8E6al
	 j5NHYC3+5CDX9XR7jXUCy36HYTQS4g4sGIb44INLJY9fM0uwy7qne2rrMUtXZR/TVO
	 ghJwVd+4rHxeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A82D3E775
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084495359.13283.1222124719117211464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5665c570da96dff82cf25a82eaf3cda7b6e8a491812f1e5b491615391b3bb8
Date: Tue, 05 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730844953
