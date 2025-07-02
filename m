Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBF71D5CC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751486394; cv=none; b=WWt80OGw+RHy7WfG/CAa0exPxmwjOxtJ9nUnf6ituVhDJkIDSFY/6Qv9F4BblY45BkYJ+cX3soFebeYUvWhJGIKldUM564qkBQ2T6Lao2VMCYHtaGtQp2XgpHLah8SprZFj4rfFScLbRte1MvctzcSm8sSqIl7wQrRVSt8oiHyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751486394; c=relaxed/simple;
	bh=UZBojUzVlYxZe+nUTDEYHSpN36jh8ysr0TJhvAmEpzw=;
	h=To:Subject:From:Message-Id:Date; b=h61JMfleCNTD8RPuDFxpIjTf0hBL8IIFc9m26iN7X1NZnXlWpn85CvOpUal8dajQRD/bgpSq3cULYp+G6+7dq+sBbnFVy9zfIBUNuMNDWsqrn2Ah8iz0P2rJKG719v2zhKylRnqE57Ss8WIsettYThLU9HmI6SDyRjWODzfVQG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy4djTMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vy4djTMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0496C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751486393;
	bh=UZBojUzVlYxZe+nUTDEYHSpN36jh8ysr0TJhvAmEpzw=;
	h=To:Subject:From:Date:From;
	b=Vy4djTMUa0cg8M2euv60xKpr2eGRaLXBOtl2eqbrQfjZ8P+etiQSL2ssIIBTCUcBu
	 rS9OwugDJNdcIvN/pQKpLAdf187VdyC8Fhr2E5HWYlVkGLfY4ZUKAfrCGfmxAyu8j1
	 47v3jzDy7ODtVQ7JLdauVYLjsZLHWRbQisUuy5Bgfi1yxa7LA87tdzlWhprRdgdbFz
	 wl1nuEJqoprFyw6z4MamV3jb896YhurmaBg9Q3aiJU8u1XoEsCs//gP6mrJag+nWw8
	 OHN313dLjOFYz0/RIrv/sKHI18o6VDbItcFhhKC+aYXv2uW0Lgr6eCrWAc+D52sBZ1
	 xDoA816389sdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E40FC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148639357.2899.6434565207479757309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d4a1921f2f66119f95193d3b0c17f967ce3a7fcc4674eacae3487114c38b22
Date: Wed, 02 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751486393
