Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E4F1EA6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718330903; cv=none; b=YT06e1ULrxR3uNTWbL7VONcyIfvdgA35IS2wJyKd+734VZQETNobHmAOnY4lqn4G/yZqaolyslk/1EorboXm1Fkds9u+39buVOYSWbdBw4jompFcGCSgD3IiyxnAFe2cqaZ3QVStUCEVZu9MPnQ8O6q4O2umCYx9I/ax1+wxS2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718330903; c=relaxed/simple;
	bh=DAkilPtJMwIKg9729fbslA/R777AByR1L+C2w88X+HM=;
	h=To:Subject:From:Message-Id:Date; b=XxlkzfnNDI0jjev73xwRwXymvtm528wyfPEVmTehaMU23qhq1vAi0rdHY+kC2qAUrwz6B9X1+13C/qxeCR+Zbu1d1aAB9pjbbm2Gg5CVtFw7V5rdHuDguBArERUTDuDp40LS4yiwCyyPP9/Hh+a10IWGootupGBhujkeKy+b/D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hH1wJYCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH1wJYCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1C9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718330902;
	bh=DAkilPtJMwIKg9729fbslA/R777AByR1L+C2w88X+HM=;
	h=To:Subject:From:Date:From;
	b=hH1wJYCVt9i3Zp6HvxQgnCRlxkJQm3ji7zEjO7kGd9T4FbrD4v5sQ9i4H5GRcy64m
	 cSPvOLWZSoTn6jiIQYppsbiLf2nhY7KB2oBXvqG4a39zKs8fb7Jdu9bhFUFzE7kN7R
	 mxNCNgl2Y2tY1jxMhVAVnPEWf7QojfJ4Xz+gMCu1XNV7UBl1O8awj7Xtb+sy30pG+D
	 1kKnQdWjJCh3JpI8ExpgBcE1kMGWhSzJ/ia9omTgSPu10Q3Z2pmVEue5JLzsM4WAXc
	 nt2BQSmKNrAmvTfEO3MyFwKNtHPwqpb1M57CbrDwOwF0rzWqFspHzTdvQX1Oo00PYi
	 5RphsjP6Yzp0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86F1C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833090278.22518.11814515398782670647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928f5bee25cf2ce6f958aaec979cd6f703474277a52dfdb3438c1ab468e45d27
Date: Fri, 14 Jun 2024 02:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718330902
