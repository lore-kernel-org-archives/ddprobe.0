Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163D9275B15
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776257254; cv=none; b=SwooC5mjBtZM+ZMkbrHbbw3O9wGgbZK8ojQwhMJ035v6EGfvIL6NwJ+ATkGka6hqLcMmfmcTyPt7QIWOu7sJ5swDA7XP+HJVC8OO1tOl5unCOvgvDgXIqgb/Cymm89xzTClSJ/B7zOW+vQHTwuSO/dYEvDKgbhEFdOu/wRx8Dw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776257254; c=relaxed/simple;
	bh=XVz3+ACaPH5EptRUFVVc+6hZnfO0vtM0gyEeb+3hGRY=;
	h=To:Subject:From:Message-Id:Date; b=r0q+O5Lb7qO9K1brtcc+TSUWCtyCcjlDeUeHZB3IZROu9fgq4Vi/Ane0t+SlNCP+3zXwBJ/4Zrvzeu5E4qOwcUTDRDnMZuHL0ma9LnHM/KfAqb44wsBlGOqS5TqJ113fDFSyCjCLoH89QurtPLRRgyVNLyC5tVP5tOYodVtHigQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uh1mIlaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uh1mIlaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7620C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776257253;
	bh=XVz3+ACaPH5EptRUFVVc+6hZnfO0vtM0gyEeb+3hGRY=;
	h=To:Subject:From:Date:From;
	b=Uh1mIlaK49WrzX+AELz9+KGlLMAimvIJHvil5vm3ZNaDMS9UzV5PCCaVY9qXm31Xk
	 TNsXI2pFoQtDgLjqUUS6Q1XUkj2e+IAHeBaUEuZFS4VZdbFsX4My38S1TVeDAWMv5M
	 6KwtR+HCNbgAMh7ujQmbojOu2JWrx8IhrLgMBzESvVmUMXb0X28g+veyWuDOPDyX4b
	 wKfp/wkwfK4hGLlWopUhAmJisif1zRxIXK+3cqq78+QSAowEDWyI7FVZaUWIIb11ei
	 ZstfO+YDOaYIQeomIS9IbQYsUkcltvGp1N7KuG26QM7aZ84q8K7COOFl1bbIhO0t3p
	 DN1Hd/R2/UVfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF9F41998
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625725368.4337.6832912686171377565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4576a6691e9ab3bf89db4fdf9ef469f4bc3005483b788dbbea4465a5c05ccc1a
Date: Wed, 15 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776257253
