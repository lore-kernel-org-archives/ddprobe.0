Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454AC25B095
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782514114; cv=none; b=CZ0IBlvV/rjSFheH6JunBQxmmDGOzgidaecgDCcHUlpbHgiO+td7fkMp0cd0r3jdRO4VIXo7p/OWbjgwmIraJYn1WWqimLW6tfUWoq6jj7R6o7GqQFO50CcCp1FjBko3oWbWLw++u+h85MP4eHpMONnlcp5iu0xVdFdNPb+uyjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782514114; c=relaxed/simple;
	bh=qDz2pExz6Bs+apToBkgM3NOVXQx6/VvcTMxlyyh6/BU=;
	h=To:Subject:From:Message-Id:Date; b=rBPMedGQrXxdJNQKwOQxFFyXhIhSrWSBH9JPRLFB/ZJkQVWptufWLYcFPGsd6/eaC7PV4W1aqHcOqOsF33bHjc5Bc0ZHhgvMKFwePxgHt/vjg4q+J6fUeY4Fm+1AgT8/qqrmNI2gu5qxTwbqKlmSo/Okf/WSV1TMQI7tgOUflkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqd/udWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqd/udWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B07C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782514113;
	bh=qDz2pExz6Bs+apToBkgM3NOVXQx6/VvcTMxlyyh6/BU=;
	h=To:Subject:From:Date:From;
	b=hqd/udWj3mTJwzNbMEFdUAHJ8O/jZavkRLuhLqIpC/21LgRr/xbSBeNgs4TjhKuvG
	 Rl67oq8pD7c6giZXqsfPznQEDitw2xBbaIptEIQSzqR9AwH/aBTKXlgZUhhkPnhj+k
	 DM1kQsKQSkzTXa+TwfIM0ALM7TT9xlRbCkB5PoO3us6UxIsPKPQjoW44zNvNFzcHG6
	 axCuQZHho/s9HI6nG3EChUsf8pNlmPts3NzuwtAEDXxl5fu6hsJdxy5pwDV7cF06fx
	 tAmZ7mZhwJCEwYgB3Y1eFR/3IyRythEiHXgLOIQJD7WoNr1/o5Dn/4trEW7sJmNHAl
	 t+4Rc0pIktc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA55DC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251411368.573.12341793982316927593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831175ead80f6e0b9512979ca0ac4ad160f464d7805adc7832e30213d155322c
Date: Fri, 26 Jun 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782514113
