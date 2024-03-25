Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0680C139563
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711384697; cv=none; b=XkhKma6JRegVW/C/dXL6vstvx9dG+cBuUBT7II0ANntDuhN40AqhzyPsZAPtrfHsTJSp67dXPGxE9ciV70MrBOngxVHf3WXEfUfEhETCvbhZ0iKu1b+Nfrm+QxmqQT08mw/SZdDV29N7w2+k2N5Fb4aPWQ+9b1cqYHs9LRUWSKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711384697; c=relaxed/simple;
	bh=FGnu0eB/ELvTDtZHWZqni80oHVpPOsPEElGidiezv9g=;
	h=To:Subject:From:Message-Id:Date; b=NS2e1cDgWOxTjIc28I2UOtVNcrdy1IJRXVzAeiNH/ysgD+Vfi9JD2X8PsNceLafkOhN8Ws8AJ3tYSIAMWAMU+3PvA7D8i1CLhUzvo+s8CocPCVTINm5fwSQOONHc/x8Frztkkjbj2WdSwKPthta9Fd9ap/BYQ/3GHsOqgjVkkF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KffVybOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KffVybOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91E37C433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711384696;
	bh=FGnu0eB/ELvTDtZHWZqni80oHVpPOsPEElGidiezv9g=;
	h=To:Subject:From:Date:From;
	b=KffVybObzTx+ID00qjiFUV9bKDkfHuTJHfpT0e36lVMZXzvSVe5GEpuBaBfcJitSN
	 zJiN1CuVarc/sdwuhW8WNu54/rQ+ai6BsY6rsVHUL50Cowx7Y7cF5DNidAlWTG1XxH
	 eDf7IFszbl6qeh+W23OI3vDI73zooPO5mxJ0AZwitjt1G4PdrlR9NqCuIunLKxilPS
	 sk2xtNwztZIWpUFEnDPPLGzZZ99CUDLTwedEitq2nqBbkx0Y4WQeYsmOJtq+i2Th8N
	 pcnnJa1W8mKDWGNqpABfdTkaj3jVEU1/oFdbdqArzhBTkMXFpfKiQoqEoAihXudmgL
	 v3OrwswiEcZ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7313FC54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171138469645.3311.13825286074867429486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b689c0a9ed9fe10410e9139632ce42594379bb6a0cb4c379a51d78acecf401
Date: Mon, 25 Mar 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711384696
