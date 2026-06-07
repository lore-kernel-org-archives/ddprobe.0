Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A116233926
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780863274; cv=none; b=rkTVoMfI9pUWIZa5yyetvdb5jy6aydKAJJHfAtUiXeVW4zQB1atSvZ6faAZT/+f4O6b9IRYclKppoSRsAJq3NZV7bnXj3ELNfHji+r0WvwHvekI9IqTM/zP4APg9GAR7x6c3V12njOTBnPCUX+Ex4QVg8xLwtsnwtXFe9lj4ZLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780863274; c=relaxed/simple;
	bh=rFwCkTPOzfgszHbXT1N2EfeGY8oWsNaPl6YsE47Pxic=;
	h=To:Subject:From:Message-Id:Date; b=P1zUvwTCmNAGsejkPJChfE7QrzIVJjUQPPXpK/RPzCbyAi5BKSbIRo1iIds1SoO6q2325LXgd154d/ogNgYDr7t+5SMCf3L7dBK/3aYQFUEqKMqXJRnulvpVdUo5TxUtGz6kjFc3ue9XKEP9AjpkjUZl4sgAxyGicM6ZpvN5I6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYN9IeSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYN9IeSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81CEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780863273;
	bh=rFwCkTPOzfgszHbXT1N2EfeGY8oWsNaPl6YsE47Pxic=;
	h=To:Subject:From:Date:From;
	b=cYN9IeSm+J2b6uXO6PxvYjFFTqUT5WnwdO9s35VfFU2ThCr1HmbrOIRGd4SczKux3
	 qaABP04tzFiADThMAA3b7aGa3uW1I60kc40ctghpt9mT2kW1KTFJTPtuwfOp1VfYnF
	 UhfZgZXWEIFxEr9dX5Po6iifiTVErWcbUFDAbBsonOeCszS99i4bUVUK9OyuR/XiwB
	 7eziY7FLNWPYtcG2JvgFR7Qpekb+/9N62JbxtBvqpcf3+o1fzEM/MPg/bdcM4bAksk
	 wT8DS/9JXGaAawCjI4j7ES0khnlwQiFF1kdWzpOYCRAdSaH/XsQPVgzzebfdrj1Dig
	 BuH7qIufJ6isA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF850CD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086327368.22033.9848400404149506299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57eefbd423e8feeb50a1451c5664bd9cd46d3e5027d5fe77d088ec417acd336b
Date: Sun, 07 Jun 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780863273
