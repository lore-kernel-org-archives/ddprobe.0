Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54096241674
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742221794; cv=none; b=WBQWb5XXXDiR+W1NMcXr8PLgb8cpJ35g2IrnCe25rk9znOWv2i4LhG3KQ1bTfexG3ovQE466zdpWOdajxdGRHeBQ7MA3kJ+7ZuDRHEl7DqckZV9xkFf+0qW5vKjp1YSuiOSH/cxwl2FDrAzEuE4bVRqrR2cagscWq+kh/L4bfG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742221794; c=relaxed/simple;
	bh=/IRLZE5avDWgtoJLhtQx1RXTloCXelThPd72ERAy688=;
	h=To:Subject:From:Message-Id:Date; b=giZL6ejyaNM8gwGi3gnCWd4QxLfL3KyZZVMWGULZQ0xs15MWwOjlSGTIM683u2mLZBVcP4ctyoDWs6HTv4V1Zlw3HPi94mIW7HVWkmoqKJGw0uFeLfNSmlnklfxqKVXD7nqUiSOGEGpup+8blxIiPLRPxqofRPAmeSBpEuMHxq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdZXOdBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdZXOdBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98C3C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742221793;
	bh=/IRLZE5avDWgtoJLhtQx1RXTloCXelThPd72ERAy688=;
	h=To:Subject:From:Date:From;
	b=JdZXOdBSkUWqh0BuqSb7KFS+0vsLwXNkoFJI8y2Rz0iiA51rzvZOavyvIE1ktdlND
	 Xr/xwUUoW58bZes9R0TxKj5F55JKb65BRQYYfWKoJxp5gA6p/S+zjWYpMefF+YRdrO
	 F5Ve261Hng/MiRFbeQPbhzxc3Awum+4sCkg4VAZp1hieL2hwYuL5uBk5gqfcGo+9ja
	 YgplTShmkl15MDQ88OZ1XtJKFy+okZt/btK8MRM6JLKN5Kf/K1DITe7Y7Vrc0KArig
	 ODFj3n3MFjobl6fk/Zm43yfVhDkWA7DyxqU91kz3BS6CSKzGtbpQ9xoh2ND5UvXwA1
	 N1HumdGiwuNHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A68C35FF3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174222179372.30718.13589976067571154390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ebbc69b3ffad0522911d02d0f7dd51c556f54c7f7d5935da00385ca85204a1
Date: Mon, 17 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742221793
