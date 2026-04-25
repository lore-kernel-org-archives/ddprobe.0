Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ED11F3B87
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777123054; cv=none; b=bPHTPWJekJ3YZZs3XwfWgkfPKTNNn+wMmRBJrZ52aMn5M4gRdpY4NJcox86KvaodNMRhbaFBeDY0+HO3ienEu5RpaNW7d5Jn23v2fFXTeLXuaKS+lBkIn7tdm1O1OUnzqPB2ppd0019w62+O5gZnN4KgbwBbEFh6HtLcawG8maQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777123054; c=relaxed/simple;
	bh=S0LT5/HrQsJegvhPm3p+9xxGyykg2UyfOoDz41mMnBI=;
	h=To:Subject:From:Message-Id:Date; b=GtuiQ33ri8/NhZmJEdSABK7EmLgG9niIrylk0WmImMPb//qcvsUB0cGTYb+c6XIhrr82clw4QW6xVMK0Za06OQaaw3WbLcgFfpvzlGkHRci632oKxDYQa+6G7amj9WuIn0bsgqMYiaR89OMdnj0jH/XyeWhy88IZFo4Z51bKxEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtV7dOsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtV7dOsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B813BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777123053;
	bh=S0LT5/HrQsJegvhPm3p+9xxGyykg2UyfOoDz41mMnBI=;
	h=To:Subject:From:Date:From;
	b=EtV7dOsi7p6Z+aMVG6D6reuofsdrSdipxhJa7T+Vpdt+ATl78recYOziMkDmZ5u0D
	 +Ra9HuxuIUY/0q1OJncFhInNydnsLm1ivn+b7S9Sj6wl9qsMj3XSQSF96Q7qWgetGP
	 OdBDRVH7UVSc+d8k+XwZnmeoRgI/QGUJAQHvZTkC0AKJvEngZwGp7buDjbq/BbnKl3
	 M8jZjdyhdGATvLc/bmr19AaRM1bsNEo15X4kLCIUjyRWvMr8cTXrQTflUyQH0v7uE1
	 JOl/WRvbqQPsNlRh7KMhqmXEVZy0DvwgNS0ukHm5T7T9oWkxBdsV0unPd7kSPvQZem
	 CCD32CrFcpqMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A984BFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712305368.24188.466963889495454922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bbb1ea721e305ae1533378df74c3c78604deebe983141a86fa6d9594011e65
Date: Sat, 25 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777123053
