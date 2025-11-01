Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211AF19A288
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761973194; cv=none; b=FBNdekj9/LrCwEaIHGpZPh3XKU7shaPnwY74SiAQ39pSE1qGCI+Wd00/e38bUM9kdE5ewwqOvpXKnRNhHUO+KtYALEM6WLiOcf33S4egriC5GxrABVjy6A88UZFJ7kQvhFwVKg4NK3/eL1qfXdZ25X49jNOFvvxHKK9bYvSXxt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761973194; c=relaxed/simple;
	bh=NelmE1w4g8cqhgbpTCKd1R+bHKSNzMW3d5fV6Ntr+sk=;
	h=To:Subject:From:Message-Id:Date; b=BHIe1Gigizm2WVYEn+o6dLCaDi9QBjtQTTPjSV0L1zu/NBubCI2azo8KedDKPOZSbKvX7J/GF70RIGPrR+0JtnZr/45mXJg7ZJ4jdr+/3aRQ46YKP1IwQtvrWB/puMc8H6xzZ5o6EzVaho9b1mBGJHH/V2+JNOqHH/hyMsACVLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5fgNXqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5fgNXqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5976C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761973193;
	bh=NelmE1w4g8cqhgbpTCKd1R+bHKSNzMW3d5fV6Ntr+sk=;
	h=To:Subject:From:Date:From;
	b=i5fgNXqiiNnY9otf0qUrhV8+kvly2Tfl0U7nZEvqDyDj8qMgqwfKkzw38nPhLuN3B
	 285JfR8Yt8+s2QpvR6cMhsa/Aq2nslOxQwC0MEcDrydFAVEkYqgeV0engcOchpcoD4
	 KLbAUEMZRyvOn5Y4106e+kU9SfW+R1a+yI4e8VE9lh9fJ4iu39iEWKyee5bFJZ4L/6
	 LhcNka4x/cHN5dIB+1jso6lI3Pf/zKwszNWt3QpN73PZEggEuqCsDaFugB0ogxSxmQ
	 T+twOsWQIc6EiqoKQhWDEELerfYry9ntpK9D9uftHzLZ38F9hU0mUlN2o7as0T7LAu
	 6ji0LOa40J1Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9483BCCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197319357.26913.17707330608640906372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb507e0692e8f4e477c51e46589082019a0e02c7f10630dae79f5d864a8f6295
Date: Sat, 01 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761973193
