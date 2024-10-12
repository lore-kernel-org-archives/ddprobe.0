Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48661D528
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728718554; cv=none; b=lqepCQNBFCffK+E+eGMKyPKLwvHoyCzAFC6uPeFtd/SNx9Ed4oZRt4RDD1BEpFIw4euQjO9d1Tqj0ceaskFPHk9GACSAks40hy/4BH+7EXt3hNNWAfEBw9Wl/tvsdw0WCeseZGKHgNyhxj0VBX9mCeK4xIzbBi29XcTrIHiY1c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728718554; c=relaxed/simple;
	bh=uuDz21tmss8ZTBQDHhJ+iSqRFVYQ96tScK8qf4VT4aU=;
	h=To:Subject:From:Message-Id:Date; b=MrwJDlKjQF/ogYvRQbWfAIGmlUFbPt4uYB4946OdW2fQUxD8frDhSV+fx/EXV015abysBGZAEB3cxXpvRMVzK79DY6eM0OpEgXxq+CFmAdmc2wnMKLlv4m6BQfrA2sXUxhoEjBBN9i4go/mK/9oFFsUSp2om739x9Z2N9P7xWC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al9/v4BK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al9/v4BK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9A5C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728718553;
	bh=uuDz21tmss8ZTBQDHhJ+iSqRFVYQ96tScK8qf4VT4aU=;
	h=To:Subject:From:Date:From;
	b=Al9/v4BKT3d1v++VIUdHKZfuHPrGBi1i8YAoHApVU/bHRXrnsZFZGSNwwT+iqCWAe
	 7Rcbfs732C+hDZYKP++BKrmOFzpMsuJh+SHvBDukXrRAxCF968nerJIDGZy2GfbJ67
	 0fvt43TNyViM4Whto7mydaVm8kdwFQ6PJJBRuZIq0NyZFu0YwuVZkswxha62109C++
	 S4sx+D9o/zku9DoHSrcDqke8gupfjYIWwbVJ9ZRG2E81O64jbCAZx1lqqko3yu1N9z
	 tn7zQNhm1kwRERPM7dPOwQXGZnRO9KAxHBFk62HwjPI/8m55HOFp0AZ1SqUheyQFsh
	 hrGFd/gHiuAcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE343D1A431
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871855368.16461.17636740378209333148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3436e2e358499dbbbb1725b4ccf1c81cd896af1736b2d4d78b036cc047a2768
Date: Sat, 12 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728718553
