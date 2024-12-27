Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E6A17E0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735297554; cv=none; b=aWrecykM26G5JlTEq5B+2qZUSJitwXGusfr1uANDRoMlVza7eyi5AIOSPHex7AeNdpFSlXh0BrZQ2AFZcoaCv9q9neX1NAO5qv14h+0C7FBXZ6pQuGoezBqcDjOxVmEl8GYeGPp/gpGQPoQ4x9GH0FREqLUMlKQCJLfiSZUV/ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735297554; c=relaxed/simple;
	bh=0hJT1R8bgfX1XaaZ9Qi3R3jEOQAGlW00eb9AdrKKEmc=;
	h=To:Subject:From:Message-Id:Date; b=RKSR4TDPZEdMoqnETZ3Tlc2egj8QZyorbn/hstDCDgZ6NcPwDj+9Vyb2JjY2nrAkbKgtgQQQOGNGPzSOzCFWfCirfl6+1Bc5YX92zRkYcrQft6RnNO84QyVb+ciokXEkjWK73sI99Trd3YjWlbqezy+IEVkzKjuUFo4v8kZNOf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBW7O3dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBW7O3dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C6CC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735297553;
	bh=0hJT1R8bgfX1XaaZ9Qi3R3jEOQAGlW00eb9AdrKKEmc=;
	h=To:Subject:From:Date:From;
	b=eBW7O3dgvtw6tcl6/aTvA0PjLctnbcn+aySLo8q/ULwjrkqIMBCTzBe+1HbGgn5CW
	 RqmGriLPjXtCx7F3srcoCChq2Yh6e0JYv3lae7pCze/SVa+6UjAgemmbPFNs57Wx/K
	 GytvcgaahRbjp/DQMautFNpEfW3pQ9CV+/nQdv1XWge0H4yjDPdsYyLEXgdrroLB6N
	 W7RKpQG7ZGhb+YnZg80WAN9F98renPEbBx19M5jmKWt/+xdkTQ9ybZo1jv2knlvox2
	 RgyxXZ63fP5ux8nmoN74yNoMnq8ATRIBANZi+dZIyJkCU2DoaBQLlWV6UR3PGsoXjT
	 5BY2mkFHPftcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACF5E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173529755362.528.14934039364023982648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b5301aa7e42e223a096c8f4b22813753f48784f674fedeb64953ecc002412b
Date: Fri, 27 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735297553
