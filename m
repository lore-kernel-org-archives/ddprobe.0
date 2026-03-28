Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C57155326
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774682694; cv=none; b=LEtiCkLdXzzJbSnovyys6fSt6f4Z3CRLL+6dReRZvztUy3wrhxtBQtEQdlsXeFCb2GcXvfRooHWx3TTVfWuEiIgLcmk1Juda6Z5oLY+4YAc0WEye/mYfVByV8OI0pcpoMr2pntw5q2LKFfj1iivEUQchKuzfJbHDzsx29yKZYsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774682694; c=relaxed/simple;
	bh=zm6sE0diKqCZRK9HDtpvbOjCjd1HkgdBM47fZJQrvIs=;
	h=To:Subject:From:Message-Id:Date; b=kSZarP8Y2FTS2LszltUGaQ8B23RGo+4WQfxAZKr8ZyspHQEG8Xs3u4DnsI9TWS6H/qsvI2YoYPVBefgeecg/mNGySHsOvyVTukk8xrTGmGpvZTpjWDUISP0NQu7V90uw/Qds2XHPZUbIcmn0xk2irczI5NJb41p6b4gdiAIEThg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOLYDofL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOLYDofL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB992C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774682693;
	bh=zm6sE0diKqCZRK9HDtpvbOjCjd1HkgdBM47fZJQrvIs=;
	h=To:Subject:From:Date:From;
	b=XOLYDofLY6l0Ey8Q9DL5qP6LQlJNECerGM7VwI4mIOGlyuQaUWPr6GKLq52oEmH2+
	 +aU9GRdlGsHxU6H6HBBy5ajqprFEpkhClkDsxVPv9kmfnE5eqt52j74Y/FMIwj+PyT
	 UiYBN71xwcyye3nWNcpExNj/8Y24GTQ3gcFNZ+85XXYGSxX3+bVuT2Zt/qOSgjepmR
	 AQc5RWK1GNKckUSp/Sx6WdzrBhKj8ELerogdLpYoIa8V8LjK7aTLBxT/G0tRM+ZQB3
	 d2leUVnP5Y1M/ekLgyIuEHr/cN3r0rdYoh/3OKLAPP2MYrX111Igy6d5bk8xs4xXMY
	 Biicuz2KtZfpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BB410BA421
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468269358.30287.13984932767775285998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ee424c00a51f93c3bb6fdca8b09166277719add65a318a48e35f4ffcd6f37f
Date: Sat, 28 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774682693
