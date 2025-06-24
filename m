Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26417EC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750727395; cv=none; b=rihVHRBa0cpemvQsZZNgCpzSIDgpmJC6FLvK/gI8ZMUDL8aQ0bAoK4Now+7vFdYin45o5m5O6nJ2dDEYmLmS7ptVjc+fxNXnQeNqtU+tXEUGBvx3jsHhMCq37xfW2SbD4So1189ECKG9UqdH7LVRFF+geR5tjYGM8oxxm/oPcTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750727395; c=relaxed/simple;
	bh=kUi4BaN1pN/d0NfyrqOM7FZjOJS25h52wfkCvxd2H0Q=;
	h=To:Subject:From:Message-Id:Date; b=IJ/RsQpIajzUCFQOVHKJXHGE+l0OQyMJk8Lrby0uhNx8sNhPO07v/aJB6fohaV/H8U2jbBF8a23rnHLEGRT7xZAp2RWsSosM5czroY3WB8WlJH2aJEcV4ClnJBsSh75+cM8ebEf5fw5BywiE42KN+bQhb/6myiGNEjLEFnLrVg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Isl6kM6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Isl6kM6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66A9C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750727393;
	bh=kUi4BaN1pN/d0NfyrqOM7FZjOJS25h52wfkCvxd2H0Q=;
	h=To:Subject:From:Date:From;
	b=Isl6kM6KbNIRLaWaha4WeLn4/zFW03WMC4ZmI1jvaTI3KiMDKDxPCAz52Qzb0OFYG
	 i36u0dcs38aZMz2YL/wPmF22hNQ9tsW9YecVPhqZV2cz7pKBUTr6Bf1zG0+NmOxmzQ
	 ZieiO3AWq33OYXbyoQ0iNrpit87eed0/7rbKfUU7S0j/XQLdWtt1OONLJlWpyPhh9g
	 65bE2ERkFf4ulU/hWoTiUUq64pxbO2gtyXW2EFjBgNC+w1W9jeuwVvfB+I3jPnScP5
	 NusNq/ZuBLW7w92TgpWOhA7Jy0VbtJmc3OmQPvsCA/myjXL8/b21zx5lDPQi2Isa4c
	 UOxaFpQN5nLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91902C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072739357.16881.6599563944870751811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6097ef55f6bdeb0d7f2b2a03add9fefbe5555f3b38842a824e38eae00737ab
Date: Tue, 24 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750727393
