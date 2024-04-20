Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC432CA6
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 13:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713621023; cv=none; b=nsl1SFwiNJrhqdW3+oIgf1FnPLQvqu7kSeo8R/WX4D14pjpWDlZNe+fA1QXYCryVe7CV6kpG3G/hkfQKTjNEk9terbZOjld5O8z+gkMmFRNQRRl8H7YZVk9LxJTsBQQFl3X18nLuVJgOt+sm2YmqcbIV3h2rl8LbJzKcsmPyfao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713621023; c=relaxed/simple;
	bh=RULD2H3uY1g3uk0moE8l0JaHBEBaD4/qlidCgMUXwJc=;
	h=To:Subject:From:Message-Id:Date; b=EuS0c+ZE2TX9bGkJ99kwIVtocSYO38vxIcKualynghgt/0kEwNf+grL3gP4qPXu2WQz6fS5dBZ0Xf5WroLAXHy0KnAqDCw+hsp2pJp4nsGN6glmNbAYIZEO8eGTtCVS+2NAVs55+88WPy9rnVRR0BqqaAeQDXHO/LytWacHX4+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYO8FkB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYO8FkB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49E8C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713621022;
	bh=RULD2H3uY1g3uk0moE8l0JaHBEBaD4/qlidCgMUXwJc=;
	h=To:Subject:From:Date:From;
	b=VYO8FkB30tiCHsR7xhf18gdRffaCz8fFt1zRY5we4hM9YQfuCOAqkyeeVgUPP/qqj
	 Fsu1fNdRyodgD147dRstsBnNerp+ffFnMSl7hVlWETvtB8bvj1F3S/MmM54vwn+OxE
	 fr3WFW+kOZB0vi9GI8DoS3Xnlia/ay/qv5LBLsLLjj8+8xMBqfqonjHv+EeNmoHl3A
	 vCMrAa5AQ/XnETtpIit69Kj3IG1ZuFRW1ct3GT+XIU7QiFuE+lNdpmVXjxcL0997Pt
	 I//W+ZUN2JoJLnOXdSVwpqVMYibwqHcAej2HfB4KSpubSNLglyr9TuqJ6aMJAG9mEJ
	 jBBul3duVBtqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B41C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 13:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362102278.25389.6754634350591996503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c253dd76d901c8e3835a360d98888e8c27f96ac242437591750e2d2e913f3ce6
Date: Sat, 20 Apr 2024 13:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713621022
