Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B72239E87
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751717394; cv=none; b=PtgXVOk+ZvzVQv5Vs/Kfv4ghZtDUrXtAJf/yvMJfZtGmcOi5pzuyL7Rjqr0v5+Lh9NJqgFK6QIYcu37WYDBjCo+p28OeEWM3LRby//ugDhx7q7ShLKKYQcR1bsVb817bRVYyBCKPa0fEiLiGVUiY8Ee5/DXvXCF/qf2nm9k70e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751717394; c=relaxed/simple;
	bh=UrpTvgiqocfCbPG7OAJf3bvF0OIDiHbCJ/+UVdnZrQk=;
	h=To:Subject:From:Message-Id:Date; b=YHaP1bpGvbsVsBcpm8+vdbtgkljUdJ9Aoi5lPw04M2VESU3+158U+d9t2m3/hIw8D8IWI4mJALDsR+7e665DWnBVURmTNnWT9hmoYUfXXWnW68D5WNETS6JkFmc/cxaVYeZvzCQ1rLP3mOxJhYMxY1Vw6KoIBO4znYbV5DOJyrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKkhu1g+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKkhu1g+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7AFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751717393;
	bh=UrpTvgiqocfCbPG7OAJf3bvF0OIDiHbCJ/+UVdnZrQk=;
	h=To:Subject:From:Date:From;
	b=YKkhu1g+zXVR4z4Rhfjj+ehhNYzmoj0IhM4YBnRGeDPmwRwB6DZoK5odMa47W8S44
	 K7q8Eb9XawMKEavZYmWV5wtgYJIqa5Yi++uUdfhZjV1zHe6XiO/cjEgABdUzz8G5ou
	 LPWRBcp1F2UEFXZLjaCXU4Vl6wcnh/44okIzqTMTGX8n/tDFzg6Yh5Aim8o84A2BXf
	 QuewJDG6bhJi0C4ENttFHA+D5EOehuqyE1aqsVJ7gWPLFtyw88gk5flngpJRQrDSa0
	 Ot33VD4Nh6mNWyzGgo2NDI1zVDNCpW1iVRLrTy4cKiSWXFjEkM4AueA7Km+3Kz0IR2
	 yCL9+Mmf4ddCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1CC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171739357.24078.16529051154047010793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a857ad1aab3512dc0a49e16ef9c662b98e58729355e3506a1f8609cefb5f0171
Date: Sat, 05 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751717393
