Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B22C21ABBB
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342194; cv=none; b=ZHI2e+pNHkvdfgBpdgCIGBU5vPgRtaiBO6J6YtWwjrySqodYcveU6zPVzQeZ+Psf4NQqNaR2+PtNzCCr/aBjDKqz0RcTFfvxgsTRuIB7jKj87a8HG32YUOouWz48cu142emdpioRgHxho9LkORCJXTPJxgHXT803IizQmY1a4c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342194; c=relaxed/simple;
	bh=p1HBvzgdenCcrq/vqKE0rA41sBK6Mw0COouTKeeGH38=;
	h=To:Subject:From:Message-Id:Date; b=MWnXgC8+ExR6hq2VpuW7UrLoWSJm38OW5olh8l0zSPEOw7xvTl6CXjDoykgH35ms9iVwlRiZYoIVqt5cDOSmEDR89FHqq+JKz0+3KDcx9g/S7uEO2arABzL/XPjFW1CYc1COuzojUUybps/74s+5HdpQ2pgubtYTSFq+Nec83mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Az1ZPgfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Az1ZPgfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC19BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750342193;
	bh=p1HBvzgdenCcrq/vqKE0rA41sBK6Mw0COouTKeeGH38=;
	h=To:Subject:From:Date:From;
	b=Az1ZPgfzCiLdBQxLSoPtbRKMLl8dxJuOgGFCg6yYzE6A+te4FbFqBZEWJ9vKOoasL
	 F5XrSYh4YDCTOvAk4PSshk7iu1ioKZjIQug85xe87t25jirWxz5ONlXghJZNxnkt/q
	 +3MMKXA///VhKg3ZJ5zItMCUwXAJBR/KKbcbwF/sNCy4Ob/NyeZlhq4F7Q3AaglVcH
	 yN6JUrfB4hJcaKpuJQk4c2QuJ9KdTpErcE46FXNYl7D9ksM0zJTZEzmtR9KJsRHD0o
	 PMNM20HrL7Zntsv8FFZT/z0PXt47Czxm4rsQe32k/FzLktmhL0io7mrbho4fDfXxWP
	 eCLIUVzlMpB5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CE2C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034219358.24718.1464871503179954616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b7714a1b62bf87416ed9bd211f36235c0fee4213c133a7acdc328eb6c51e18
Date: Thu, 19 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750342193
