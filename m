Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BAD7CF3A
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713427763; cv=none; b=Kt0VLaJBdgo3BM6/+eokfILccdhf03T5rzdgJBrO91NxYxOhbaApNNuJhzOB17X2dbZ/QWhKUuoTyL8AvyGtox7phESZG6UX+KhH57YLS9SDe9XxoXZrveMbmjV67j6rpD6V3KAi+n3+tBXWOQZlzivQVsFlOtQ3hCTjhvhaL4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713427763; c=relaxed/simple;
	bh=X/A0Jl1U7ZBsQCS9flqpIff5jsug3EdH5A1N8EcvTSw=;
	h=To:Subject:From:Message-Id:Date; b=MJVRaC9mc9JvzITTW+bKb3PbyRmJw9I0Ug0BI2mBSsVuYeHvs15ntePIbEedMM9SKBYYkydcsjBvbjFt+qxNUH/Sm1y9rCspe4MZ9Uqi/Fw3X29S+iLOuIsu7ipoOUsxm5WaCkKpe+wsj30AB/jqiRdjHmbgsvlfgSwyMnA6Dkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cwg0w6NA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cwg0w6NA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D809AC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713427762;
	bh=X/A0Jl1U7ZBsQCS9flqpIff5jsug3EdH5A1N8EcvTSw=;
	h=To:Subject:From:Date:From;
	b=Cwg0w6NAWdA7iq13qO2RiKEvSvLTh+2SVQQeBJ/F8mrFp5WQr+2I0BmQ2p70Vpmww
	 rwyBTgh50oJHdRinuD38vB7SyV+WagS+cpyUBqGTRnSDO9g4SffZO0V3i1G6fLEl4A
	 aHJsOIo3yvMzeGwcgb1or6u50Tql/nUkyT2bkWC6iZzeqweC3JiSt1VKWcghGtCFyx
	 cdv8Ll0zfGBw0JPAEvKYhbQTyLCFOybuIeSVfQvJEVhYFmkIjCVxxe2WBJVoT3+s8r
	 U/kiG7lMoiGNi5VA4rYVoV5tYF0phsIr/3qhscdWee1p+2o61yz8eUmMicpNmZNjtL
	 5spoI27Q0Z4cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BB4C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171342776280.20783.10294192800788294281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f4c2525cc05946e2a463505555e15434df1856a788d80a97bc4dc3abfa25b0
Date: Thu, 18 Apr 2024 08:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713427762
