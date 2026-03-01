Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F2330BB8A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772335494; cv=none; b=CYwryzx3TsiLAxtaJela2OKcqWmiX8c4WseehYXD1CXwUrQvJlVy+6TNOR5dqgEH4ph63yvlbU6OlMokD0OSELoimx8LhT/28TORBVRKFX1zSfplP/FPMvgzBPmvLUfb2eOEaMhPFLf4cTnef4PZFgzSXJee0hdoiYzXBnpr8J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772335494; c=relaxed/simple;
	bh=ewGicBlSEqOSqR+wiAw4p+3rykCKUN5BCoU0Zbsi5Tk=;
	h=To:Subject:From:Message-Id:Date; b=uhi2+yGKEfekjoX76f/8aT4N1B0Ecgi9rUFtlZJpEbVbebKuWq44cMBUai1KnQxI0lU6ei04MZBQRfRTE+78vuyoarmXtuYitKQELplvcktNcaZGlNVfnMmCYPfZi/KO8kdvEZkdFK2aAQpzkjIqvoo6vFK7PrQJOQd71olJRHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGSvNbMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGSvNbMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DBEC19425
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772335493;
	bh=ewGicBlSEqOSqR+wiAw4p+3rykCKUN5BCoU0Zbsi5Tk=;
	h=To:Subject:From:Date:From;
	b=ZGSvNbMzpkFMx9GIG2OnUELE0h9sc5bAJdlHLoNWifuFRn1IYBSkWTFRUFDCAXLl5
	 bnTHJ4ahrpMIWMHYLr5/+mNjzT4iEyZ0mon5eKoDp/moMPRvuDr/557Lnv1lSOaqJ+
	 MGeKZcFmLEIY9s4UPUMR4nZtx8gplfmD+upLH+s+4Ab2tJHcse9veAUjCoJkBrmkat
	 kSYl+iXZkrGAgIpDa0nfHkPVyrU6PaCA/fz6QBXvO9IEMqdoShdExcYI/q/wG2P+L1
	 PI0wGBS0Az7CNEFjF6Piu/P+cogg6pwDjrhkZRhSB3ME2OLc6KIG4H53I7ZEOtKRbP
	 c0MINSe6o2eWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDC0FD0053
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233549359.1041.11260847072968739681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef76dc5cbf4e5808b1f561d51fb3fef7f742cb1556c59bba68cb691159af7f5c
Date: Sun, 01 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772335493
