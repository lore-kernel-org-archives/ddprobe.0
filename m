Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF627B3FE
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726252554; cv=none; b=oQZeiV1MuuwCoaSWJhzJ0A+0r8xRAleXnx3OM2TW+ecaMKeOs/73oqoBMypq59kuDCGdRj+vzjfzVNj1XRB+7UoOy7DAfXdpbXzget9uNGLSB3cBZAhYRMWX0JblWYbOv+M35Kcs/SVKBCFM54aWF0BV7lpYB8xb6DsWHPwRIeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726252554; c=relaxed/simple;
	bh=TtW/Pkmwm3JPeHC5+kJ+pwljbm48nYNWj2kHI+YfAw4=;
	h=To:Subject:From:Message-Id:Date; b=nmgRQRtd+dAlD+qmjlZL7Sxl6xSpuroFb9PSqAK0sFdDCBKH7J9YwHAHHrVpAWphxwCvHFcy/FPn8RTpINsX07UWY1X+joMCei6ZNjw9m1bX6egx1wOtF+0Tb9vdYk/dmYn0BHGhj3elW3hoyBTq3MkGdh5gqOaErx892emzGcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGYa9yCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGYa9yCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A432DC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726252553;
	bh=TtW/Pkmwm3JPeHC5+kJ+pwljbm48nYNWj2kHI+YfAw4=;
	h=To:Subject:From:Date:From;
	b=uGYa9yCYiJGiCZ2ncJbYSRWlkHk+xHvtjZkhRXbObjc9t2GFVoBZQQxSSFcywpw0s
	 5c9QkFolPdX4durhQi3b5/0Tp9vK9VYEcvXWNvXd1WxAvciM0P44ydnjUdO/snFMhw
	 MuJLeGJAFKBqYoGJt5LZMubqbDf7RV9ezRCLxr9AkbZTg29FB1pJ4GEp/ao180vEFq
	 rFxfftYyhr9msNSyrUCUI0k9UhxqCN7CW7rFNEiEAimHl3nK+zzd+G1rOG0i6rUkj2
	 O8pPLahoKLSMEj8mqd1uO0YJ8GRV6K/6+99ZeIlC0MYSivG8A3b+z0jORdEj0iqvU3
	 OnvbeR3uvTe5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C32FC616C
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625255358.15608.6823299702844270286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08bfe4c4a90ceea27f773a5353165a607f3762b45667b0349f29e4577d3b4375
Date: Fri, 13 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726252553
