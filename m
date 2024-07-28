Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61170BA39
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722154554; cv=none; b=hovz77l6d8pEaCkGQYavR1YycrsihXTX0CTlqLeDubPduyFESkhAHKc8ItNndEZMPOEHI7e1CsTiMqUJCM6C1/KFD919LJocZxe1mtRwOdOqfX2ps6UwKcP9NXS7gZ6bbjc5cFb+svF455ytUZPwHrgUMj+u4xtG6r6NFNxbbrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722154554; c=relaxed/simple;
	bh=3kMyhbTH9m664h0HMtYexyd5FaVEnr7nnCfNU5yJxZQ=;
	h=To:Subject:From:Message-Id:Date; b=SJZJaTjDsykVVTKR3y9CdvAPJa++j30h/dnXW9mCHjcY77y2ra7m8JPSW7tepPefRi3ZsAhXpd1GBtuvXHnKRA9hm1j5Hmelq+cQV4Erxfb0b0kgmS081WazswJNJf6yAJouYQ8n/FVxFSj/4fVyajEZHumYUW5L/+kBousR8jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYC5VRee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYC5VRee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C020DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722154553;
	bh=3kMyhbTH9m664h0HMtYexyd5FaVEnr7nnCfNU5yJxZQ=;
	h=To:Subject:From:Date:From;
	b=aYC5VReexSRqkYJrvqJesRauRnWKe2HZYGi9mvYJcw7tBrmpHv0cY/Jbt4LXebU32
	 Y56rSit/gIdmO8+2pJIg40OgWD80ySWWbVu5OWUySh0ieD50PUDPz55ZOBmRrPFCOr
	 h68OvXGk2z+4KQFUQIFbNx9itqQIjU8+58aV5UdeOK1xbwHIAnogZKgsLp/ayaNnMJ
	 vpCGh/c/PHMzwZ8wmoBa7e8joC70nBODV0/BsGRsYcv0kskwrzlPmeeGnR/lb1/Rk/
	 IL+Ri147HSk6RTDs++2tIYjy/VGMKsCoMj6UX68BtbEoEVE8TRYJRix3V2PqzPHRkT
	 Q4MAxZZnB30Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7706C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172215455365.7958.13052247877933778986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a03f28019a9b4c2cfa128d1c6ba96852b164456043c186e78f3e07a371b762
Date: Sun, 28 Jul 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722154553
