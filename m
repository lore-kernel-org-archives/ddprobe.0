Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E49E30DEAC
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778154454; cv=none; b=QTT3HEPnHHrR+n3gCGuWCQa/t4lJmihDvdqqmqIgKteW3FAKrpmp3GhK/9cGRLW6FiIaaCoV2zaWXFt2AOc4Hyy1fTVPdtpaf0+avcJXcdtMiiR4xHRP9mIAzLFFQo/AdS72OPopnYBhxEDRASnzOYAhNGnJOSQ02yOwYEtXwxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778154454; c=relaxed/simple;
	bh=/bervl/kVtFyDQrAxOgMTOy8N52zUrG1XyqysectmBw=;
	h=To:Subject:From:Message-Id:Date; b=ASzolM2KLFOwYrB0n508XuyNEDopTHgKLhMEMllLjA7UCHaNWSk5EpXSP+tpLd4aUQ9+WdXt6NhwclLzbCI/cZlaZ8E8/qzpA7kv6semojqWC3/JldpNeAw3jGIi5TfyM6AEBMPTcBVBa/Lk3lQRXxGriVH9VQzzNo0+224nW3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1d/CYGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1d/CYGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94DBC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778154453;
	bh=/bervl/kVtFyDQrAxOgMTOy8N52zUrG1XyqysectmBw=;
	h=To:Subject:From:Date:From;
	b=W1d/CYGbjXCCj7fdwktudXuaiaO7PszOY+aGAB44pNPgMRGap+C5Lt2gtXcblQh4n
	 Am5JIKzDLhT7/Xta40+9FO+12jRgLJ3mVYPCDB92PYb9rh5T+KasQNmnig+U9cXvA5
	 tyxuefXTuNaDjhvkuTdtk7Xykst/Yy0E0gkKWRSoUu9qDpK+YWEvfaxMWyax64dzUi
	 TmHQngPkPDkwHih/eYrthngYivfwxk9kAD7KdoEtBUiNNLUdYGpGFrhCWmwnGN7g9J
	 Z7mQBPK0ff9O/N5aqsTfZrNwl0+j+k2RvP14s40k7YtWxm+5FBXnL/TJzV6dLxOCa5
	 1urLuUolwREkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E13CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815445368.6487.6416374980752550483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf77c05d64a662437640bfb883db0380e571907c8561ae30383dfd455e2c804
Date: Thu, 07 May 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778154453
