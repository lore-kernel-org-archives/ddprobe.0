Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6E71E868
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755130194; cv=none; b=HbKkXzMjYGBbLp1sS80wR47s6+BjXnC9u4dzabcXJQoguSZ1+VF/015Xzt/JYR8RqhhXffMbV31gpvJ1u4DPlV+0BJNmBcBNezSgAl3Kgo6YJod+7c9ie/NANMpFFrSqoUD0Tbyt57LQThYztBI5S8UP/UVmbiQVVDmnYFbCrng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755130194; c=relaxed/simple;
	bh=ba2NxC6dlr3JdhBfNzQG1/kwifWtrgezGMpRSwaLfLI=;
	h=To:Subject:From:Message-Id:Date; b=EV+MZvUA1107hJpJwqlE4JqPZe4mkb5pLsGTlefIaAADCT9IpwaySEJe+P2zeEK50Tqw4sjQIsZCkpF9LEpic562l5yNHC7NPqSvspML0NTlvo1wD5HuR5MoToNzNYMWPq8ZtM0YD1T9bhCAhEpJwYIrvPAN4TfvPkmvlrLcJ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f52sa8sQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f52sa8sQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB7AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755130193;
	bh=ba2NxC6dlr3JdhBfNzQG1/kwifWtrgezGMpRSwaLfLI=;
	h=To:Subject:From:Date:From;
	b=f52sa8sQmYKoUAhalEAakCgSdtry1Zujh1oyoYiftphBbuE3CaEWtvtDYEGeyRHX+
	 yPwA7xiqUNd3cY2YdAVk6svNfbjtlL3PV5RWJkWxA8KJl5yWnk2waKsuhhwSbEsqtw
	 YpzFq2PRXs9vOAP3ulSK9APl2SI8c8Zo2KUQxZZyYpv+vfR7Bj0D2B74OpKjVpsAEB
	 2jJHB6lHErt/JBRE1Gam0IP9+QQIarAHov8aFjmMFjLptWV3jWRnAMHfmBkkYAvhvR
	 aSyi5h8Av1cyWr1UWq+Ey5WgEScSfP1hBl4Gt7jqLSrax01BGy+Rcfd1mnuPlbbSQU
	 PqxKCnveFrEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC88CA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513019357.25317.3795768030341609516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd702e3537ae299bdb4603707f0950f4d9ed6d977f4fa9fc1be19b7ec852c6d
Date: Thu, 14 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755130193
