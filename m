Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AB41D45E5
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732634754; cv=none; b=BXRgI1UQHCflxDfilwe0zQ4GPYZ5PAI+ZiIEmz/XAj5IiC6mQjC8mtCXz5hxEMWIbxYsBWF4eiNggrKwTyr/mOMzkdL0JHh+9P46a/ycs/cT7qH8jucwKbabfp6teTS94yoO2OqtX0ezmpC433xsgGbkusQlMVjUk3t9TUli04Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732634754; c=relaxed/simple;
	bh=fIAeM1Nv3Ps8ssbqZOZL17AqoqwR0ZJNyffFqj91WOs=;
	h=To:Subject:From:Message-Id:Date; b=cb+SZ3pMmvcaelhyPOza42f3Wr/i9Eo0vwagjBnjUXieL6rcaeDs6gntWSDEybz09SCEaMy9RnTe0N7Ng1hcpDqFgS/akFGeawNl7eWmWCS/j4d83hQ8CzaJDNJxaInDPAUS+hGcfC8bJqVQ4B+3sXCJtTUKjK3AK7UI96ivQEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK6c4DZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK6c4DZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA362C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732634753;
	bh=fIAeM1Nv3Ps8ssbqZOZL17AqoqwR0ZJNyffFqj91WOs=;
	h=To:Subject:From:Date:From;
	b=UK6c4DZuq/pUA2Aqwhyics4zRtTUYUcsYAOiZQ3VH+Y2o0uUFTExjAqTM5+x+u3nS
	 HM3cLwXViUeHX4wchFTT0IUExIkMG5mqUFMetfiyh/o1HqQl8Tbtfm4tUDG2k7bmgt
	 jSzxCdcBbo4g7pJ+n7WNXjzavysZajoao0+haln5UiFAVqjrUGXlQOWn++njnQmJQ1
	 72U7q4AF9Q7NUl4DUtx0IBW3p4l8CjxlEc0Xy02QzecDpTCIN1T5aO1ZBoMybN63Bd
	 Fh4pSFVX9QrsgfiLzo+lVXL+zFjAHb5sbpE330XZbxvM3R0H9HDi+VpjolhnciF+0A
	 RykVSESKzhOpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94985D3B9A7
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263475359.12862.13967200411436898043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af341897e47e3a02f1c33af31522af6317317f15585d823b212003e9f83fbc48
Date: Tue, 26 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732634753
