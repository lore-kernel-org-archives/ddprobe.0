Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5818823BD1B
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785613834; cv=none; b=NPwNOrbMgz55ywDvsLk0ADCVUHR8ugwdF37j8nTFcnB7NOijLZ7hBqiorf4jEwAciJDL5lT49gKK62WuxyztXnrJP6iE2sfZYTUYRCrgkH70qugn+Om3B12kW3Wm6xmsQoeHBLaqvJRH4lvd4cewaWY0+qXubfplz7kr4rmvQwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785613834; c=relaxed/simple;
	bh=ZbBsHUOWW+2cy2MM44KWRPbt5ctV07vqDGQg/s44zto=;
	h=To:Subject:From:Message-Id:Date; b=U6Psb+oPux0aH9xuSFTsnPhAap96SNWtMAbT/4S3CRiFmL3Fuy30x/cW8H5eF9IQnyhX1SGI7ZfKywBLlFKl/3lzuBIkVt3+yxG/15/xKcxm77MiF+2jakR9Jplsa6FUvmbDY3pkdJiCe08AjtG2iCbE8+AvfAsaT8KmmS4gnm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRooGdlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRooGdlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57ACC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785613833;
	bh=ZbBsHUOWW+2cy2MM44KWRPbt5ctV07vqDGQg/s44zto=;
	h=To:Subject:From:Date:From;
	b=fRooGdlkyd9euknU1NNsB+BTqGiFDdX4vBPKp8cx+Kbsm7J1KoIMG7A31Ie7W7GDI
	 guNsd1lXJ7BGrP47lFfp7DWCPfj7EqgHX++h2jFg2AB1I0fIZUBPaqbe6RLpBfOkGm
	 3Dw8fdaWqfDtPqRc7uhBKSNL6+yAwtLJhlOyZjQsJITDRC9ktVrZ0WBj/6Lu+G8Crh
	 EWDOJU3vpLz3ZE1+Dn6NqVFQPAOcvymg4tZ9KPVXH8YV8wL37nv8VGR0tqwmue8QDE
	 KBwTRjuvEozPsjth2rS68wnXmSi07tGwY7WRiMkir9sxGs+k3gpBPK5Vj0ePXTvk9G
	 zcZfn/cjs2fJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5DCC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561383369.12462.15104601142277908091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56c967d839ee30647e41ff9be2124b43744b6f5f8f57e3e09eb884bf91f9a2d6
Date: Sat, 01 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785613833
