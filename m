Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22397320A3F
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760723394; cv=none; b=rdR4h6I0KFxLNzJGQyALOr8TmWtHErvSJQrHp02dTzISkKaXgK/ya0fQZZOrHreFTG3fU+rLrmBcIeLxE38fRGqsreTmT049iA8j5++yNdVv63XeEh7KHbv6eTE2qzfwZ0vbg/O/M4DF4iOcYh9KS9Ct4BvxuSC1SdZ0kljSqhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760723394; c=relaxed/simple;
	bh=imames3Hg1eg3Gn2YVp2GQqQ/gBoeWytYae3v9KXZso=;
	h=To:Subject:From:Message-Id:Date; b=j5YpcOwcgwaRoJ63WVHdZfFVTkXbJQPRsO8Bbnv5HHlAlYSV4eqW2QvZ1jC/c5rliYQuZ1ZMxgRLa7hM1hY+8JrgJqqXxUYdLnUgWAUuSeYk7c6sfcIV3KDUDQXwn33Qd6eWKy2S0XPwoZKE9UBoYN/zteu5emRk8exMW0mealQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl7VoZjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl7VoZjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB57DC4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760723393;
	bh=imames3Hg1eg3Gn2YVp2GQqQ/gBoeWytYae3v9KXZso=;
	h=To:Subject:From:Date:From;
	b=Gl7VoZjYBgHwoBdWi19tvjaKmJ8m3Eyaj0zU4n74Vkb61rSP6FjqyHdyT+6MgfkWB
	 IMLHO68k9dBuHHRtQI0taO8NFBfoGEDBwCSoWD59GYcUE9X8qTZApLLgInlpPJYc6G
	 U5n+VOfI99qoSOTRPVYnBjsl/ZfhCLzbcuSStZRo+KMifon0etQd9ThXQZvz1MT9qU
	 k0MeurG9TE/s1asgOPWLSnRKI6J1XleXb8Hd5hpHVbIzZPTS8wr6GByro8GD3Xeh7h
	 pkj1a58Up14LMPjRu83vk4xGoTKJw7cpPOW3qbYWus8qL/kNYyMS54Sl7URHTh7SNO
	 KMSIbOQRiu3gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CEBCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072339357.5534.12204399334299197653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbded182b21c15fec03ec3d9eb063211ee11c5591235e872ebb0792b7d0f0c9
Date: Fri, 17 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760723393
