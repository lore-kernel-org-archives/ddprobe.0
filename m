Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE82C171A4
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709792897; cv=none; b=hjg/RQn5pVXKreEv2J+wZGdnfa6EGL+ZRoCaMHl9iASeiEEWpSKNlky0bWAP8/mQI30u5RgJiDcoh4xXTOS2kwnethlZhYzw+C5SWBsB24H5J7vhQYtwhAbqrD0ju4EiFqCsRnSjJbg64fVpPgblJNWITTrEkCtm0PSYEkcFx7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709792897; c=relaxed/simple;
	bh=6b25uYft+QBYLbvOOqd576Z3iqdlgq3xgEwOgegjtyk=;
	h=To:Subject:From:Message-Id:Date; b=HacnN7xMEDtoFl6pSfZp8UkYs5Z8AyIErRfwhhj+K6EMRnIMLtttRSwABHiHj7YGqip0V1iGek22Afr97MkVcUtRE2D2bYW2bdhd3laWYQ4Zip6Qg5N5ZZk7YEPcz1LU9cXXsLNaM0zYR6J7zrh6WjmLLUGXkjoMic5ifA8/WQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkrCLToQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkrCLToQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F93C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709792896;
	bh=6b25uYft+QBYLbvOOqd576Z3iqdlgq3xgEwOgegjtyk=;
	h=To:Subject:From:Date:From;
	b=EkrCLToQ3PQsu5wT2x2tFLhoVQWW/w+qm0Yf802g5L2WHfY59zTnMJ169JHhbYEP0
	 XPTsFfBv9AkGguOwmo4W1gr2bJMHzlfreOsOxpYVp+HH3+v1Zm+RamU85eJ1UrJirP
	 XBcaLu8fmJXYoMOxXrJ4bxdx/IoTQIo2u5rPSygW481f7VNFTKPODqHx/9C5HjxsfF
	 4EfX16CXfa0I8GZKupwLTsLSh1f1YKu+W4ZKQwSdnbKGIgTwx2VU94ifz0Fj36jrWT
	 vlZI42hcs5jMuHT5wfx6FI8PkMdwrrnv+TZKbX2HGaHJCVXjN+ATSvgjjKUu4nnjBx
	 xXOr+YQOMorbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C589C48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170979289637.14175.17134799808532757692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d1ad8e26de3fc3a3f0134c08be74a68660c00b56df6d6ad34bb91ffe1fb98f
Date: Thu, 07 Mar 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709792896
