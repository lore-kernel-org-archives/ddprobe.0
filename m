Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD754A01
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734657954; cv=none; b=jS6RMGcug9QImIS66nDG7cqLxSVeGtAoXvsBcacd/9AhT+i7CyYDjhdkWSoTNfIxp8igSmMJo4LOQzTzNtnnkNyo2mU4y1wHHbRDSN0f8scC/J2syinp3ZDFG7Aw0Bhw4Cr4jAqyxlIyupHwPttldxTULZ6N8QGFYtNnm6tC4cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734657954; c=relaxed/simple;
	bh=0ynTCDYvac6+++vWCI+Un5pXOSNidG7/h1mPrh9kdR8=;
	h=To:Subject:From:Message-Id:Date; b=XIfwWBGGhen3TPHZI/jW0HzZX6DzqkUrN/vbupprnUSAatQ9PtqWyJudyJkTiiefh55elKSDj5ZDEVgpUhWGBzslzPun87STcl5NJQGBv61ZeBM+vINRsxMh8xLYW9F11Oe+knCumRwVHsWKognz9/X+hD5UtaRoGuGmP+alcLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR94ryo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR94ryo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9ABC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734657953;
	bh=0ynTCDYvac6+++vWCI+Un5pXOSNidG7/h1mPrh9kdR8=;
	h=To:Subject:From:Date:From;
	b=FR94ryo/AE0lIUU42gglk4phwxXI9yWjXrHJzf0doQYT7UiNXo3z2B40jYgdjhDRL
	 y2kwN2Co/CmegicroZo1fLk12PQ5FSUyBq0eLHp4HXmc0x8Ht9S1ERmisPhiTegrT2
	 hLXucjcfJkwMizVftTdcYK9ewSt+00spUAw1xRJXaaMpZbNgJXjSOViNfzkPOfYAmh
	 OG6QmijWooFAABeTOu9Sn71ltWUFgXrnCV3QovwcE1ma4Nh57rIUo7R7lTFb0Fr1bS
	 U9XxMeXGAwKzGJnSXZQv2hy9TWv+G8tF2iXY64RLepYqnTK4O4BGRmjaAYfB/2Q/Yi
	 jeBuEacGu1gCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AF7E77184
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465795360.4234.1898334383761460117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37257725c7af993dc40078502948abe3478f78127b3df0e65c719e14aa9ac986
Date: Fri, 20 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734657953
