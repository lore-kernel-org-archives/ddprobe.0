Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E442D3EEA
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757542194; cv=none; b=CuZ0zXhXrQBCtzGN5R+YwihZd58+SIj5a6O7v62uHXc6rjsH6i175xtN3e1pJQWQJs8bAwrw/u1/hBz/0MGxXqeFBcfvAdqu+3sVR1f1PBc2sZjrYDiMZ5QQoAcwyF4Xl6FegC4mSlv8vW5p4TZrPECR0lDa6DVdXFxw52XHLto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757542194; c=relaxed/simple;
	bh=9POXteJl5ATGXsmlcBpcikrKy+HtXIJd0/5OZvaorb0=;
	h=To:Subject:From:Message-Id:Date; b=Hd0feUQSKhuimMjJS2mSItv1L1NGtSLgvGmYbaadAq+UrGp1sVoWz0m3tehRAvD0zh0DYdm9ksahlNkc69PlxxITUXFXmp3xJ7xaUwjxq1VYjibMFr6D5Hi7T9QapYPz1+HDfS8A+w8GBAjSVcF4wJOMO91sLP9oC5Szk640ilw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSekM8Uv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSekM8Uv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81E0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757542193;
	bh=9POXteJl5ATGXsmlcBpcikrKy+HtXIJd0/5OZvaorb0=;
	h=To:Subject:From:Date:From;
	b=RSekM8UvcgzvIRawXkaV9w+VNSbIfqumXCaRxCPO9YeoSRXdnC0Eg71IRzk8d7cgX
	 kxP9OhAU7p1KlSjGMzAsjWVfqJcN2s0THAvEJkeu6XN2QP/mtu2r6E+kM5mFIAW4iS
	 bo56AkmcZ2ThhuYBVb4dAlV1bIKrCUWOE7w1u33YTU533Hm/IL8EYMTFHi+Hz54+rE
	 NPAiYXeq5ZlgD5OQx8RkWoPNKIHI0QWoutaFj2R5iop/osPG/7+oIRg2EI8a/WAJ0e
	 /h6DvBCMqvUvHURlJhKDGw07aob2r1ciacg+34dTYorMR4FyfqxJNKGUO9Xpf2pnbY
	 2Ulh3UWFY8QxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9399ECA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754219358.23288.6768283296042184982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92b63ffb3da8a738bbaaf51aacbe5bf78e97dba32be1330112e31459d441f85
Date: Wed, 10 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757542193
