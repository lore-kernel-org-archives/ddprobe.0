Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B457262F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755838794; cv=none; b=IZWG6CC2vo+vELphDpHRO8ox0YA03j9LK5wpukYwhZ3ul0zvSCEDWu6Y4gMcqRLuAlpnT/q8cRICM9ZDyONw7IiABoVHwiMF+OpMoaoQN/h/q57vdWAy5aut1cquzznoHHsc6CVQxYtxd6Mi2Dl9Udhjk779RpfjyS7hsjLIpqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755838794; c=relaxed/simple;
	bh=aCqjOiN187k0so0rbFdMNaCPDrAygksoUbWZ2RL0FJs=;
	h=To:Subject:From:Message-Id:Date; b=qqZeg+sfrwCQip+kYKpRkdVz7MRWbeMcsrzMekxOxSXLVSgsD3dTgCau1vRwJ2AtzuuszbIAnocCCOYyGfba9xH/Oai1TRL7efWczPHihjT8cnaRCbWJuQxLgnfNFKSJF/4Qxcf4nNCXz1U0GZotOM9W0kl9O8ZdO0QO+0GydMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvNGcUjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvNGcUjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD57C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755838793;
	bh=aCqjOiN187k0so0rbFdMNaCPDrAygksoUbWZ2RL0FJs=;
	h=To:Subject:From:Date:From;
	b=QvNGcUjAsd/A3Jgw8i1gUNMj5ASfIL9fIcLn2EZXLumnA9QfQLY5NqZTVHQbp04+H
	 5YbNF8ug9xm0iCsQkdthET84lFsGtXd84m8UMoIM1GH8OpYRKxbMyseyHvOFsOAqjY
	 XgY1nUeGcczu70sqE2lPQ0wEmLWUV79yKn4MdybEOyQJfDmUWu6UWTfmsKLePbQ8QU
	 R1tJU3/YGVTF7gqMCp3kXhQSPOkHkTId/WQEcaPki7CmJbbvsbyz9RB897Taj/RGic
	 98ZqHwRzNMaBb9wpkIy67YleaUh1QJBFVQhTwzljs1v3O+zjSKBNr/0g7aFg5M/m+Z
	 +5WuGB0YnzMvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105ACA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583879357.7745.13681511451377061238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 349bb1b0e0daed62802ee03ac75886252e1d3f3db22373a630974ca606fb897f
Date: Fri, 22 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755838793
