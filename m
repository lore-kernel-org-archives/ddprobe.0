Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3677428FD
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728850554; cv=none; b=ETLpp+pghKtvL3wM4q2c0dYkSDgXuVD2JYmWzYhGV1u2C0RH5YFbCHSaRCxhLadjgNLcYjHw4xwJasI8CEzNGgjABFzH+B8ZFT1cGvjo4IyrIec5ZuRoFn1nvMaLCOTX86qGPsDlAWqGOUGvbuRnn37cLJA2W1rNxx1mjoqDZXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728850554; c=relaxed/simple;
	bh=4l4zjJrgnrheDiO6sZY3x5EE+QndIRabCUgbViKQYPc=;
	h=To:Subject:From:Message-Id:Date; b=PjYJv2tV9W9NlzttQCPkMM4jpLprn7m8r+xLO83gas2my7UMzj7rG84h/sE0SmvHWu7SEmCtYeIbwkPJdBUmP3zRvmxFQD7uyTn9RV2ThhdtqdcnvRlFPvs7uiooK41s/1/lwohG+1B0ANdBkSYukpGpn7K79ipe1yIquFqTPr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRdyJzI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRdyJzI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2E5C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728850553;
	bh=4l4zjJrgnrheDiO6sZY3x5EE+QndIRabCUgbViKQYPc=;
	h=To:Subject:From:Date:From;
	b=dRdyJzI2gWmRlvrr+gJa2tQoSWTSGloIJ2hRjgRYOGAxXMehaKdu43XDQ3wL6dWtC
	 Uk1A+KLkKPR/0hsyrMhRlcTRGcVK9eaPTz9sdgdhHrDAB9fQkV/LkR82g/dmpSsfWU
	 zYqBW/8rRgCDgmAcEyPtErzi26F7WL2FGU8ABY1zU5/eaKWx5CgJZpqtLms0dRhJtD
	 gM4WtO4rA2lHIDoQzJ0ZUO8vdcihT9eaXC9/KkiEo1AK7hLEWywuiyE1aIIPtkcTvf
	 BeV1jpzS5rAkwBS2d4pZU/273dLCFxeB/N572A+rmGo4I/4YxFolTiyqE4SPxQTtVa
	 T1pHbRwhErfAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ACCCF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172885055358.26579.9434979612039278170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0a75206c4bdb8115f8cdcff48851579d967579f88f291b0e86a1d0bf8da380
Date: Sun, 13 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728850553
