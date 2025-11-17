Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F35C27F724
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763392314; cv=none; b=i0wOPoBraHVA9kfOoFrMUWz4WyFFNAGxNX6rzWjCBNWj5iFH/S1TTOizKlgbEtOf/Wz1AGEbCfrgyWvEjGROn+Zlo73yVBBZ1JuVil1FuG5Q6/0tMlMekk3EOnfpegmKGzADsjLFwy9hHVEp9rZcwN2OJrYvxXwehYMFJHSggCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763392314; c=relaxed/simple;
	bh=BkaciRhceLWjRa6W8v3gFoGCitjMLXdrQYVXR3yFxMw=;
	h=To:Subject:From:Message-Id:Date; b=KashHud1+BcwLx8GkNjRCwjKVxc/7KgnFhW51627T2MOB9u0I+SpBHVveQPsUsK3gp8lINlG7eBSOkedAO9PrijGMKuBgP86NvTh1ehGeoEWmwYGhu9fWgsOtLVB7fzFQJMjggWf3G1LAt+KpzLA2h7SSDKXNoM533vrsgzr3kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZTfnMb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZTfnMb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE3DC19421
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763392313;
	bh=BkaciRhceLWjRa6W8v3gFoGCitjMLXdrQYVXR3yFxMw=;
	h=To:Subject:From:Date:From;
	b=oZTfnMb5U4xEqXbamfyrnXnXj7DG6nba2ZZ0eTEPaIQSSsjBbJka2Dy/sB+tOps16
	 LsmFQebQKE8g2ibKEQECoxQbYov724FYY7yhd9eK/neLFFhXaH/9GOoB+4hPsqI+hp
	 42JoUwIk7va1vHlI2Nh3JheBlS6xEUGV3eRFKbcviU01WEe6b542NJz9WtULMqGkVt
	 PaAs95sFQo/Uq3yFFwkMxphNst/Aww9gwHJkVAHn2Aw6Tcdh9tg9UXo4f/Bd1nRZ2d
	 hbxNesf1Ts+hMoHgMpT4mqwyAMVD4cjn70onVc0FEqk2N0hEZFtM83TIEMiL3i+zaH
	 jEU1faXzmERiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEECCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339231358.18593.11282472492422174711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b295f8da2a0907b959d8266802fc2d4a385677768595924705c61d2cfd596fb
Date: Mon, 17 Nov 2025 15:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763392313
