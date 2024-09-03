Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7F6A20
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725324954; cv=none; b=clnrHpvtVPEO6xXuMicfa/oawoNgOEKO+neyzty+aNDmRgk7PJ+Qg7tTmR0R9Vf2OseO54iroATzK3nyRMMRRrrC+tXKmk8dtpy/hZOU/Xo1Jt4runmrROCAxh156oYtjodR2lOJaa+9W1UiW6QAyP00Pmvjl+fkaTQ79gEAPx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725324954; c=relaxed/simple;
	bh=JNiAYA5N5yl+ATsxGM9XPyzxbov/4U5NTAvjxwm+m04=;
	h=To:Subject:From:Message-Id:Date; b=M7zekE6k8iQaR0IHFUdB3le7aCzCaahPzbovwpxkA2x7SW8eJWKcewWSfcBloNwQ3BmMsoiep9tm0guiqSs6uIRxIo5d3Hnu9M8TpqhnCe84kVz1VwuQtIQTuNZgSjkZkXES5Ty/H+i327DWYh9q2fYT6EV5+UhVeop4/60oexQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSxnI49L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSxnI49L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9DFC4CEC2
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725324953;
	bh=JNiAYA5N5yl+ATsxGM9XPyzxbov/4U5NTAvjxwm+m04=;
	h=To:Subject:From:Date:From;
	b=mSxnI49LYKXs85qqF6jYzRYbesr8Cqc8RZnO9JUQh32bEuQ3k3aKOGbqO+lnYXtoi
	 qOg/xAxQKYKCbbTjmMVibZnXa3/WeRGkBwxcsNEJ6vg8ryn8vxB4u1o+Nk/IMIRx0a
	 4MhLrxpT5Q+/VWnbHs9MRk0UpGRAUTTsoxwXRZZXxUAsf4ZT7gqwxlRQRQ5dhJ/wpV
	 xpwfRki5DZ7q3OpscvrRSm8/2mdhh2vfaCMFxskqD0ZBXF7hl+fa5OwHvPtUlQtEXY
	 rX/GVprapRjBS1SEqqMv7qozzoTtGrGfaZFpE0fLIOtz5Nzya5DSN74y1XZNVDP0Oe
	 kxmy4ozdeJGWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CDCA0ED3
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172532495357.8429.1101623856240739598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b0587cae925bb41f226a493bdfaae3db9addaf977d2af9314bdfc1ec97c663
Date: Tue, 03 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725324953
