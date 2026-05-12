Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6629D451069
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778566835; cv=none; b=Zo8bI6sAbwE42JYnjn4xkr6ERfA/P66+yLG8uuhqoERjjOJ0Y7zR0RX1aG2NQfeU0mfg4F9OfrcSjt5AfuDSm20IKGKwoLVVHkSoTC3js6coz7nhk9g7g3rjlClLuDoNsffsCXEpxm2le4vDEk5QZDt0bCfZo36e0/ekdiudrK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778566835; c=relaxed/simple;
	bh=wZmFzqlfajZ2Hjk9o8RgBmVBydui+xLl+b4Ycx4nOlE=;
	h=To:Subject:From:Message-Id:Date; b=X7zDjBeet682or2K8lJIUYhgxSmmnJTgJ9MfDiQEVESjWdguZCkdclWmbwcqDAs5w6HXKpLAeC4J776udUW3FW2kIZEnxOkvFd2GTfp9b87xgoiXR21ld4/7Obn9Jm3ObqjL1IrujFti/MT8Qo5u/eVpYBp5tyc7n0fOu4AR/TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pONQFBCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pONQFBCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9799C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778566833;
	bh=wZmFzqlfajZ2Hjk9o8RgBmVBydui+xLl+b4Ycx4nOlE=;
	h=To:Subject:From:Date:From;
	b=pONQFBChB3AmUobU2ThLyWqP267I43ADVJLjx3VE/HekK8aOrNpf1hvs7crvBcXXc
	 tkgqZRKK8Zue92qlzPzzQVU3yaASVTmeYnN1aM5kcEfGkD3f8rtj03D0Mc+P0k9zzM
	 5XiQZVTtXaKdwLtWV1Y6rgxCn39mCJrKAXrqfArulE5hhFetDgM5iFoTiktGBuLDl6
	 do9oShIhdHjCjBsSU0VTR9NKLKbNfFBsmFW4XTV895XukkPY7tqwvusWXs3vftD5rb
	 xJYPPKB7YYEBONHNajC34TXPeNksd1BWgBokxRKKKaQ7s2X1rVgRAfXuxaZbYDOgU3
	 vHuLFRurB2xYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC26ACD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856683369.7630.4570764115819657320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092fe78be29403f6d340e411686b304c49734131b3f23195bc11781a2c7d07c7
Date: Tue, 12 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778566833
