Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E67279F2
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755299395; cv=none; b=AoOe4biuwG8DohKYUawKYfVVylf6lq5lkFK7dtA/CsKqvqsG7zNMfTH08avahf0jV65iLLpFGpsbweTymx7FvsH0kLVQ+3g5Ci/FFksQXEUSImFD7Z00ryVeFS9qTldN0MThCJ9SsT+Qdu1GFsOVTS1PAo+5K//2P+2uyBxLw64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755299395; c=relaxed/simple;
	bh=HE9D1LXbTVBDf3qbyYYnMNqqwD39I+QCtZDmol3TYGo=;
	h=To:Subject:From:Message-Id:Date; b=g06ROJvuHPeRh29o8jQhewA405pDxWNjFmFs5DV7CaATFVX15pEV24B2ABI01rDDqekjXqHDIKgHvJUBnK84YuN0D015j6/2MyFXoPb98rze/sgh6/DnqRQSYgEzJCtHhle8d+hH1lfhNzK4u9mZtEqJhZqcIKd77db0usQcd1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPtyryFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPtyryFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E612C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755299393;
	bh=HE9D1LXbTVBDf3qbyYYnMNqqwD39I+QCtZDmol3TYGo=;
	h=To:Subject:From:Date:From;
	b=WPtyryFbafGmzEP18bxiZ1MClCbZCb4/2Zcln+GcYQ/WnKOKrwFiVhQ0qfEIYBt/z
	 Hl0YkDngvMwbWXB2TqdXKLs1Yx8+8MfIzpVLUmjQO3mDwKwyy9wuswEZu//MiqL0je
	 oNX/3kho+mq5vEk49b/TZa4LkJlOpJoikHJPt3FlsTTZfNRe8A1PUAIcTDGcaaMkKA
	 DuyDK2E+lOp5Qfqo+gga6JlQ1aw19JNM9jt836r3OQyWNHIFiqpAoAwGhSD6Ye2n7v
	 5ERt06r7p/7JyXw+XabZ5OZope8ey8CgN+8Q51pkeb+rfJqNAC+FHNuCmbuk8fljdI
	 8TNWWjO9wcOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F123CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529939357.15603.13382535930549374793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b854532ddcf5c87a61d142253f2aceb1ea6f2dc067246c9f3aa85b0e2d6320b6
Date: Fri, 15 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755299393
