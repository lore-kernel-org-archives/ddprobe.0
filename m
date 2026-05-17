Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628614502F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778976634; cv=none; b=D89gaDYdFhP1KKXJSdG4r4ZsnF7HADh9RMilSSNesak7ArVT9Ps7UanvfbvhDQ8lUgc4gAA5LG7m93Vk+kW9bZAMnacUBJJLs5CfKsTTA8L9fl5IQ/h1aiiyhJw1meDqf1DMwqLh1wRTqr2sbKdCgZydblVN9OFnYFOWrmlr92U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778976634; c=relaxed/simple;
	bh=my4ec/VSRakipee+ca1vy3uw/ZDtJNnwiIBeDe6dTeU=;
	h=To:Subject:From:Message-Id:Date; b=NDfEu6bNmnXCEa7eFxdnhvl+mqen7MjM1v9j8cUkviH7UVUbB3ZWzPWMVvoGv6IuieJQZWC3+Cs7zg6cZfbVHOMFIkCwr4BuT9+UtyMtAHec0uILW4yz2+kNkRRMnA5NTRp81hrGaB9uRWDRk9cv12BP+QFRD5SsAEfVc/5jFDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGEmt25Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGEmt25Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37C7C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778976633;
	bh=my4ec/VSRakipee+ca1vy3uw/ZDtJNnwiIBeDe6dTeU=;
	h=To:Subject:From:Date:From;
	b=tGEmt25Qfh4LvV8BL6l0i9uZ84gI/Wp4h+woPLiaKZK5oi4Q/IHZPr/D+HRiQoxL6
	 K5+GVX6+JyfUiR3FFYtErITqbe/Be/qaw0owpnTZvMZJqJpE6cEQ1ZPQKsKrFeocpI
	 2ysR320uorOECvl11+4VlH7PN9eHbau6dpyG9o31bIM2WVFc1wiPtnmbxKCtWuj/gd
	 O0YvyWQ3WEipBF9/FpbCOxHZCtrojBLV8RZSlXUFaIQAczZlJtnPe8RpDI8CoMd1MB
	 s3dL5NZpTz4CEbMfNIjAyI2C9kC5G3zuJLcNs2KYPy6+LXQsIMPaibUXHrJkXwKIE3
	 7cKCEL4aKEoUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B096DCD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897663368.8395.17005028901459661594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef655b99fd0ea9326c04ff2f0f6a314e80e58021203dccbd5c31a5e763117ab7
Date: Sun, 17 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778976633
