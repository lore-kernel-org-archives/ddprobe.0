Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C90C9450
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716096743; cv=none; b=idO8zQcDPsuVERra9j+etLTxTpHULcC5fSG3EWrjDachUIZVYWyS7NTscnKbvtOlcrWdiXOdOcDqPrQEn9cJD0PLIP1IiuKUDqMf/88rnzcLT13Qq/JwqB3rhvlsAhNXkHjHoiCpEh2pDcWcbdHmXexpUCmFJ4NBxB80OmfeufY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716096743; c=relaxed/simple;
	bh=HIGrEP25aWTwzK7jCSGK1VF5+fhn+LQy0vx2lG+O3MY=;
	h=To:Subject:From:Message-Id:Date; b=Ob5tLICAip2iMpGHwJDz/QMGc7WLTm+HwQBfdEoY0Ga51O2TkSqRM0o/L9hVikO0yu2NT/yeQUO+XVWGvGiFQvoYXDLR//yI5F5pQrxqON2HvPsbFEcQStL5c9689q2Fi/MCCcp1dPTsjDyffVzNFf68DM0hdACoUDiYbxf4Tdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bh+1Kxg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bh+1Kxg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33F2C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716096742;
	bh=HIGrEP25aWTwzK7jCSGK1VF5+fhn+LQy0vx2lG+O3MY=;
	h=To:Subject:From:Date:From;
	b=Bh+1Kxg4RceqWrrcsgDMJ/qHitpGHnlSaXVPFRCwNBnDje7E5WyXbq4WzTS9nKgZG
	 qYdS4ssT7/TWFEfds3RB+WO0A5yW1MAa0D1GTrTF+X7FZYL/0os9bDfFXA8OokgYNr
	 risWs2Ie1e2K5oZCPVrytDY0kP70Q9A0QeQgEFlyC3ywnHG3MQfzqBAI/FekiizKd2
	 1UQ0WviqLht/KTQxbF/Vh5/JfUR28QRBZ1CD6YJo9heQI+sPoUOl7QdTuz7A3F6J7R
	 DS6Ypf5fz3NIPM4x59kT7ce1cIif4FWevgF5cCgK4D73fWXAQwxxKTqSEAx4Q00/ZH
	 AIozbyRSpUw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87ADC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171609674279.14274.8487920229180506871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761bb2000c3b30c2164ca2ab8abdb1120639e877b5f59b45bafacc8f11eb3c12
Date: Sun, 19 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716096742
