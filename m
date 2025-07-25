Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E7E230BF8
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753414194; cv=none; b=c0LuU9Jnh/kgDAPTJb/wxgRHqiHhtG7Lzz+x8dZ5wyTlwGnOJNYALe2aUiWsjxEu1HG52hspAbCdWAl89FI9IXEjZ+mQt9U3fpLCpvQKHRHSHc68s3W3sPoDL6L0YT1kbK5NvMojcjw5uoIT4ENfuaq7bNuJynGpa4+0dhxz1Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753414194; c=relaxed/simple;
	bh=xAkANrvlqqdcENlpml/4oIl/Z9XvHjgxuRUTvNgyuwQ=;
	h=To:Subject:From:Message-Id:Date; b=OyFuySBLTiPkVLZH0Q4NRMNZQP2F1gRzGfLglqk/ANAx/WCqo9ubc1NCy0wvFmrf6TslckVPY6XpI4wSl5Ot8ByCoGQZIpJGMfUDp7dfBIoQIjmFCSRTTVcYMtP0O3aLgKVu3lG8VBAzWMK4QACLhqHOe4mAT+ZZENWaopEfXq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqSI/hvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqSI/hvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1841C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753414193;
	bh=xAkANrvlqqdcENlpml/4oIl/Z9XvHjgxuRUTvNgyuwQ=;
	h=To:Subject:From:Date:From;
	b=bqSI/hvrxmd1tWjRMDnl/T2ZYjuk33zNGmfhd75WH5Qur2rGz/tIYCBRwIjKnQxK+
	 8bEK298pSsMUHTnOhBwwKzF6IIzbEfi5mXx6CF+Qp0oPov5U9jsqcm5huhT9Kkr/ND
	 WpZBQsfKSouMKZ2tJchkqpbeZUG0lwtfkZx2o6WVsVVIutRDlms50ioJ9A9Kdbdeb4
	 jSWGDigOEzNsUvQVcZWNfaUduRVnZJMZCVfc6EgVuDeagd/Yu2p6xHVrFnKaT8Cu7v
	 ekLNSleHsFNm4BiPGC4K4mvb3Wj4GRYj90/AulG4xJfh+u6ngolTQUNYm/hNS9QK7y
	 S6wJd3dACM6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A0C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341419357.2613.4924618826896639013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6797ceac23b8584c34f03e4848de24a0029cd4af3d82221eeebd02f4ed9f5ef
Date: Fri, 25 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753414193
