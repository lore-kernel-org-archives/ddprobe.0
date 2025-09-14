Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3C2163
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757809795; cv=none; b=KVnTNMNSy16dGOtO0MU/1Agi1sX1NOS9898JBR8Ljxkc4uy6OOLxu9jckndwbjSYFpqAPeJXmNneqBVWpOtSdJOjxmDY1Sy4o0zcUOT/hQ49NMGKiaT/sGZ3bZ8didtMOfakYhhQ+RLxCtIsCvNwncoKuPd7sg9PKQZlKTUUu7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757809795; c=relaxed/simple;
	bh=YQ+bFORl5fMco5lPOvz3rPLpIdpNzKgKSG10BDQ45bI=;
	h=To:Subject:From:Message-Id:Date; b=PmvLeJV63yVPQM4LCq7eZ9fQkIduwCZiW2uDiDPvGjqYpjrtuNq3bdRhe0yIRxGUZru4BV3gXFxWeMCLoh3V1bp/FNNNvxL87Cn5xG+UewivnJ3Z0sHII+BuRCfP+ZiJUYsaUaQdCYmqk02sP9u5pqvl2fDMIfw9RpEwylLil88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3uCSp8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3uCSp8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5F3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757809793;
	bh=YQ+bFORl5fMco5lPOvz3rPLpIdpNzKgKSG10BDQ45bI=;
	h=To:Subject:From:Date:From;
	b=k3uCSp8wjmcCJiiIZdyjCxFWrEhVbFXpCsgH+pUEEzy2LdhNqlEXDsLXx7qETZDl1
	 i2bcKhWPQAtXDruHh3N0nb8MEAqpmuqBnaAg50Q25i9swUjlNvWveAt7Wim+4NNLKb
	 07hU84ojF5B+55lA/bo7f3/pA5mnoH3UBW1GejA2tdfCriFFLsHuUpnPmCX0MHTeEN
	 HSW62E9OHCHU4ivUttnTwSxtbYxTJliKs/KTmMDkJllpIlvd2AT0XMsvrZOggmW1cQ
	 JVSVtubvvqAV3cuis8UdMy7hEzkEDdusOjCEdHZGJKLgL/B2otZ9AtQm7xsA8rlKFA
	 Q1/1RMG4b7vhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9380CCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780979358.11764.3380502688407319262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb863d63cc148e0035552e1325c8101fc7ad491dea3117b3fc7ed018ad81be36
Date: Sun, 14 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757809793
