Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F73D2264B0
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777336654; cv=none; b=oHckSENvEAWnD5rDlxgEAhmnFqVIqM/7hE6AKdgcRvRKDwascrz+zHT4wskF1KU5LnSKof98yAT9R7A1CjMutWS1yBO5To77NUNpkRj6BFFAe1W2pr7nrVYX9YYsYYDcVcMrB0CWGVinbcaBJ67RScnLvJsFyxtcM4993XFEl28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777336654; c=relaxed/simple;
	bh=Stx7CRYk0lWalcogmz0raJKCqKSa4VsVDB2scLkCGIc=;
	h=To:Subject:From:Message-Id:Date; b=OLGGJMGIpfHpieV0Hf3T0VcYF6wDcu3DjOS/9n0Vc1ACDZQ+2m9xTlvY4hugs8deIWyp9fiPtOEP3GnlOy4QeFUnJ91FHKxmBW6ohgkgWH7KLt1UumMLtMBUFngwLL7AJT/5UrMA47a5QY69dZDHkmNy8ATn4+pLfHQULk8fwCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmWsPsPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmWsPsPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F55C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777336653;
	bh=Stx7CRYk0lWalcogmz0raJKCqKSa4VsVDB2scLkCGIc=;
	h=To:Subject:From:Date:From;
	b=pmWsPsPsB7OGSB/Dwrpv0guuHdczlhVnXHt2ym3tsOG2voXTM0FSRoaLvyLxHxRmm
	 Udaq9rfI7B9rL7uLdufEIDJvcHG0W4HG6ou1Rr2OqTbwf6+4HPrYahw4x3cS4TwDG4
	 CZM3WcO/gP73oGIhyBXhV58YGJOdZyRuqUyon4NTDc+aGRAY9GFzFKh89kP9+2z78/
	 hPrO/4LFKuaLvqaZkMXoX7xhHkof9ioUEaA7kMLpHWWIoimSuc7EJG9kvXifDYNduj
	 GnOb5djDDdE/fXsTL8OW2xD2eCQwa+oSvK3wSYQL39RMF2wR9USNxo6LLabBx9j7GC
	 /yH/JJDuMGsVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0C6FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733665368.19986.2068196839785338318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18ab785b8b3b4b44a7542af79c82248cba7c918eab64dae119623879096ac87
Date: Tue, 28 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777336653
