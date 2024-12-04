Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649E184
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733270754; cv=none; b=H4so4hGXeC9yD0vgnxCgbhpxh4V82AJmTemCGqwzE2iHsDLEAtc8VnKDlGM+Bji742VRLmnZhuD5dIY9pC4x+HhYksOtB1h/LORx5fZMEucjcFRS/yocVNp6sdkBDtq/CWYojuHwstmGoWkhS9hcffxyD7YKrUx5F3uhaaAp/bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733270754; c=relaxed/simple;
	bh=STsr+IUCzHIp2W9xbikzxSw0WJqUfcoyPv2c9n6fQyw=;
	h=To:Subject:From:Message-Id:Date; b=cLTqQuTGYNTdQp5VBWlJvJ0sl4kht+fsAnemuCWq5e2bIKFfvWOzroNP0GuO+IcAO7siIX68PwH6Ue98PL4WYiIBR+ozh9g5+wbPjqN1/BYfVKq5sQIXS7g1fVu/yaVkT/b8u6CPDyqtoCYw5So80J+sngJQIFFLvrLB+ts5Dcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHlGcfSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHlGcfSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE681C4CEDC
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733270753;
	bh=STsr+IUCzHIp2W9xbikzxSw0WJqUfcoyPv2c9n6fQyw=;
	h=To:Subject:From:Date:From;
	b=pHlGcfSS/3lCVjD1sSdHo8IClw/vpykGy3mOGxRIzfKey/ca7Mfh6LlptEpLrWH8j
	 jLdOj+8OjW0PCD2ccEZJCUYYZFH2yNidnfzZ0JAFpKhY1sfiiMIJ0YTNxHE3O/bdSh
	 ZZdYpjwkI9c1dxP2A6thJRxULXSQ0LkKwRC6GKO+fLHc4chenthEkN379W5R4doy/5
	 ztwWrIiJy0p0KLuIptes4IO9E9/YgBduYleYE0Q3LyZGPMWHNyFdY7Un20Aepb/6zs
	 U8xbcYqCgNsRKJoq11GOYWBzQmzYmtHWgL+D1+W9uIXzaIT+7cVgNghx6zuDD+wZjO
	 QOjHIu/Tmgz1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBDFE77166
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173327075360.1092.13651886461132443993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371fb630b0256e1e9bfb737f60436f0fabb584338c9f32311b35aa9716188893
Date: Wed, 04 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733270753
