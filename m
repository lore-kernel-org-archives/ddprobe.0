Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0E21C5F23
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738338355; cv=none; b=kZzaMs21VWW0Hu1mECdRTdkvdeugSNEJ+VsxQnFa5TfdOldrCwnZ/4vyXQ8ckDQXuh6aX7rqsRBOS8XZdSH1KQh1mTMD+ubZiUEd8lzcRJcczp6tKPtpOQ8S/NIYG6J0m0sI6mKoMIL7IroqmAqb4Mgb5XySfXkdafUb1ha862U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738338355; c=relaxed/simple;
	bh=JaUYnfjfuLetioTIyeM6SDa4wUE+9yxM933+Yx5t7NQ=;
	h=To:Subject:From:Message-Id:Date; b=LM6+yEAWmeMeLKZb0cDP3/vFRtAwdPfIUYjZPpLhEbQhbyuKadjvgWrZhHX6KIZwxc1zMTPqvPKMQMgSy8FI9r0HoxSGT3uasZMgmb8hYocdvqaKUslvjQLEnF4y4d7YpEflMMgj7qwlDbCuyBanEtlE0WtAJr0tgSyGasIQfjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBkb3N1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBkb3N1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0D9C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738338353;
	bh=JaUYnfjfuLetioTIyeM6SDa4wUE+9yxM933+Yx5t7NQ=;
	h=To:Subject:From:Date:From;
	b=PBkb3N1FFkYO/mrKMHDlaC9hVYTyz0WvxWFzn5q37InnujgwJmKEcvfSQN9h8h+V3
	 zB8EWv+gVQ5WpKKwawkXY1gEZq+hc2bP3IbJaWXCDtcEx+mhy8M3jXbTFzpA6hbw6r
	 nF+hSzjn0PN7U4kszlWZO6diceKhTozNUiOgMcJvJaBl/TNTUuczIME/mTIdSWc7Wz
	 OUM1H8OWjO6OnF2YY5m6lXnEcMyNuNT4VLZQwQj58E9pPM/0Tk06ZSOxTSvRqIGIRm
	 Mr4BN/7BgxntmS8/bt0d38cOcbRNmi7G/X+ka3A/+gbi1dRbtqeyrsya+abwy+WJAJ
	 t+4ZNQIe9vD3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A572CC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173833835366.21955.12102824586665753348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3a6ebb53df88fc05412521bf8718759d84cdd24fd30aa599edfc9ca21720be
Date: Fri, 31 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738338353
