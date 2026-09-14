Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4901A238F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789362034; cv=none; b=raiu6Mkm50lFBG8r2Q/pSPAhAHREnT/thJ1QZ5lLmZirifaztSAj+j+FzwaYwsTLWnJw3zEjEIZmgZ/2O4lf/5ncOEbLyhsS0D6I74WGCh9cGmPzftQn1TL/aPy5eFNeQn5m5vF36nbvl+o9VJYQbbkN7XXqCwrjLTVbT82eWMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789362034; c=relaxed/simple;
	bh=atpPiJttIZUnUGxr15aZDJOMLSiR62kcqd9/h/g2CDE=;
	h=To:Subject:From:Message-Id:Date; b=iWNQwODGrLRBMLZTCTOkyPyxTGIPI9Dp3k/gNCGv7nlt4tf3a6ysTyP3ILIUq/bAayhjit//lspDHUC064vW1zHwHfeG2Mi/4TyFdqOIjDLtEO7leKsh2Z7Z3qUhXGoZFFVvSqLYh+glC99jEnmgWY5CU6sObt4QJK6ORvKvUlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCahqLHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCahqLHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8BDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789362033;
	bh=atpPiJttIZUnUGxr15aZDJOMLSiR62kcqd9/h/g2CDE=;
	h=To:Subject:From:Date:From;
	b=jCahqLHjU4R7zlj6amZyopbbIHUD43jdrGYUJSu3E1iuHPTTyXb9lDWH1bB5gBHCk
	 uaeGBugi87qh0boYH1h6FdHqTYSrY1JZFTAMpi1ac70qsDE7QgYQvxXMMiX+Qnsh+Y
	 p7UlGUz17Imgyor/V40dBxcxgWwgbSrs1/DcJy1BR8pK9m1IT3ci/TyueSz93z8Sa5
	 zXucG17gKmLy1T3hcY2k5VTlg64fgiRlIhh6/Ny89iTZNOXNGicu8273A8lunHRH+8
	 6Oqcp508nHk9ngu4HwUMCkmQyJjRx0o1ho4ezCu201TbTeCRKsHU3oxnkR/UPZH9l6
	 kXRLU8nto44sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3AC88E67
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936203368.6801.13816747595687704456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cddd3f2316b19c44214025a4b34fd43a9374895d68e75ee45dfa6c5ddaac230
Date: Mon, 14 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789362033
