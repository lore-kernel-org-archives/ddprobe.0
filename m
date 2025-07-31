Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0D7189B80
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753972794; cv=none; b=kmfXnFiln6anrlMIoRZjVlvfAtlkZMFBNDHyZze5Sgp4epKiCPU1vseu7uaWmzKGUVh79fa0RLolQf/frZeCWs2ozb0MZgh8A/FhT9YjwY6ncQsryRceIstgRX3MHnIyUpfrJZmRbMKViL67ogVRdQ0MzjzG9JxjcR1A7PndHns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753972794; c=relaxed/simple;
	bh=uNsUXXrZvVU+aS5imsbGNcjJK8GAKJ2ysChE4WQ9+xw=;
	h=To:Subject:From:Message-Id:Date; b=iRt/EFFC9mqv4jac066mj+tqYrNEDDgW+f3USv/OtXb01dsBsEzSToELaXOwou6qzQEUZsvIXSBbhc6bCN+B5IwKZluM3tvv1pHe29Qu/PsoGzsw468sQy6VO+SpPG7PtYCe6qNNGTIlsTqmMOd7dh52McqlVWGcjkFREOzGO00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlQdjy9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlQdjy9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9043C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753972793;
	bh=uNsUXXrZvVU+aS5imsbGNcjJK8GAKJ2ysChE4WQ9+xw=;
	h=To:Subject:From:Date:From;
	b=RlQdjy9T4yR38cYpAwsPFHKdaOsddEesYR0dP8fiZfrgeG4nn2cZZkWE/2BPNTdNg
	 SJAdHdVKZ+Ny6Z/VmiLfkHdBuaDGTE+bYeAUD8atOc+zi2VbcBHbEpb3kjt1qH2OrY
	 QGUcVXvNhb+QgDgdBcSkvWrwvEgrUcr2qRGL4G6zZ/BeWW6M5lXD3rJcP4rtUReBrH
	 FOJqcoIjmAEwifCTjA5AdRuvg4ucNlRXYztiD2FMWDW/xVcNbSYtcyVOWD57fv6MEW
	 FqY8ZYMEgNNI1y15IJxqu7z0u7QAykMjrlQNj6hggMwmS3QTaKlUq2HdzowMaYquXv
	 CKZcAwfnYMtrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A0DC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397279361.5330.18155452374971741005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a68a66b92a7a7b774a9f01120e27dfd7bec1f13ff2e733091ff952d911f2ec
Date: Thu, 31 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753972793
