Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0494F2D876A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773677094; cv=none; b=NKxK6c3FuNjp3cWq/YlN0+XjvYlo+isgUs4ao2nhAVFwlw6yQeqMyclx7TSsvI2H2gorM3yaEYWYfz0ftOQ/cgog7Lnm+tIjoMyOcrcPG5TKx2fRSg7D2lmh+t3uqelwOxbhrESinveC56NObXi9k+tFgN0VKyzx0uiRniPhI6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773677094; c=relaxed/simple;
	bh=DjzeHu8+2e3htDf92Jq3NeXq21AFv+LQRYhjza/HC0o=;
	h=To:Subject:From:Message-Id:Date; b=MJPVCgBfoCbA7yy8AZ8l+pAeKF8nE+oYsORn8BG+zdaHn/54AapffnwWI7mX/apwuBiYPjFYa+LpepEarlOjJR5/V+FuM4kcSqxWJwdKQpzCvUZJ4QAsOLfQzGAGXlmYg1KDnq/z/wY0XWv6YzVzDs++WPM70tadKCqR+OWszow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8caTk6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8caTk6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0283C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773677093;
	bh=DjzeHu8+2e3htDf92Jq3NeXq21AFv+LQRYhjza/HC0o=;
	h=To:Subject:From:Date:From;
	b=G8caTk6axrSpR3Suc1ThpRncIv3pf6WmDSMqXbiDfnkV/bsXbVEbwJhb1Ec3Nq71U
	 tDl+dBMlc5VmXgCEG10Y7FB6jY/e2ctTTi5KCCCtDD6w2KTRgwlza1L148MivrgT4O
	 wAigwaxH5ome+mvDSA+bod/WlR1M6HgopmQz/u3DJnJcaZD3qHP363CciMIOsGp/eg
	 88tHLgihfiy1q5+qFbZCVvDQddH/QyuqEHceAJVSavVOhsZYXeU/VWOLAj2uQOwcJE
	 FWFra2MJKzWalfLCbo/I/1SN6P6eqen0XY+at3AkBx0FYguoJnG7Ml7OwXF9lSd+Jq
	 LzntMoT+9W+DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D9F53D69
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367709358.6183.673681467465942897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b0dbdfb62f041fe135fdd40433d7b2c2c69d29250d6cc7bb081ce11f31f587
Date: Mon, 16 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773677093
