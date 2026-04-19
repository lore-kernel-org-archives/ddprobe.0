Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1423D40DFDB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776626254; cv=none; b=jW1zmG8cH1PQpd7lLthcof71aCt2BZIRRvQ1Mj/n6OidKU+wpM3UPBctxGXY87lKRklon9vijGosw2xCy3iYJo26Gl1U6Ghc33iMKUhvBSsMje3ogWwm/hPSTph0sdjOc012g//e6ezCcmF1vZNmDYaA4rjEwQsqhcOXsJVD9WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776626254; c=relaxed/simple;
	bh=ZBxj53ZlqYGEC7o2TOC3mobGaT/NzP/DlyBpvA18Nh8=;
	h=To:Subject:From:Message-Id:Date; b=Ckq4g/C9UcRBwb2cYePiBDFDUVxBckXSzsE8jsHB0FhyXdC39HjyZ2QdExXfm3ttxLtUxDZq7ryG8D9w7Twn2KYE/Bh2cc1mZ7+dEGaiNXBtpMm4o/GNyJjFHOS8TWsPEi6+hgvbc7vjMEKXymBzTKo6H/vVcpRnHrFpY53Eq9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoNmQk77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoNmQk77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDFBC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776626253;
	bh=ZBxj53ZlqYGEC7o2TOC3mobGaT/NzP/DlyBpvA18Nh8=;
	h=To:Subject:From:Date:From;
	b=MoNmQk77Ikd8H4p7RDIEbrOd7xuMAVKK9vUUXmzw2uqIR57OGAqEt7IvoJY/aRHKg
	 y0/JH0raTtAfXa0nts3hjI/PwsreXWRHfEuxjgC4yhbMFfAmnFuu5gX1aV3WLE4c0f
	 +uCagh9MxLL/yEK6CB8wI7TNSw38LmUwued6TH7AoXpeEGRshKrYMFcG/AuWNHeeFD
	 0IcCxRRFLoax3oqV43lfkQMpTW82AklnyPgf0mrLMrUl1ZgpeNXJfksZRTyJL9Xgfr
	 hq8tYgRf4gA3LE2DKYzaw1VNr8UQzteEo8oH4TQdZiyNcfeTkF7fu7mwRz3fxawzLk
	 JlKCgnBq1X//w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97D2EA7197
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662625368.27763.10172986207349438485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2e2074013d5faaacdaa1b5b53fa71666191fd6643c56f3086e80da04a81740
Date: Sun, 19 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776626253
