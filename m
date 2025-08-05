Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AEC291C33
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754410194; cv=none; b=P1DYr+cNTvJ/0cTTMm5pJRCZQfUu0HKbSvRSu6oF6MR4bbvaSz8WqwpB4FHeLfSr6QFrEmPOE60iIgRlTfWBv/8J0ypCqfEMHVDMLEO5nNTCG3e+jUB5djw/VbJidzBpKUbBuwifMtXYcp5PFrCPHz1vfuGPajNJEbXDz6G1Px8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754410194; c=relaxed/simple;
	bh=7H64sFjEHJy+IPxCBblFHXzvwJgPwQnsb1lV6H3/V6I=;
	h=To:Subject:From:Message-Id:Date; b=IxwV4POsF1Qx3fZgsIb+AaCRkt0w52qe9HA4aGMZ5z4xwFv90WGx4Tb4i0gXayXDkAodwAnnEDC7f9MztnFpsr8VM0JcSvle+aCwpQ3Jy1ybKhGuuNKcXSC5ZXBRVCic86XNhHXI+uFom6/41gjcgaYKBrdKj9/Zj6jHnErypwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXcbMZJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXcbMZJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E132C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754410193;
	bh=7H64sFjEHJy+IPxCBblFHXzvwJgPwQnsb1lV6H3/V6I=;
	h=To:Subject:From:Date:From;
	b=PXcbMZJEm+qOo/TSGO5t9Z4Z5rVOTdmjhJNRu9ffYML9Y8VmbhMs4zdmXBQwAbmL3
	 1kaSQg+/1b2f4dpGtD9v446erj1ldFTN8l+NHgQBq+Kf014IbynLmpZpVXQxP4+xmR
	 sTEURLAHhYoc4qdHbAJ/M3pZIiEByMbDL0tQNXdtW/lxrX6yfsFdVGiExVteI6zeKL
	 DP4zt/UK7N/XiCgsv/Wq0N7UAooxVsamArr+iu7/cDvLbAxGTnntijbCCkIZOPk1j4
	 nJuT0e0IdWk/pV0lzEXJlCefaZpdVrEFl3h0XiVwrXrXlD+FLAMthsGEl9p0XrJciH
	 5a4cg8eA2oKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC81C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441019357.11788.13918234460143067168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb09c84cdf56a353a085e2618a230f857d9403201b30e56482de146288fb75d
Date: Tue, 05 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754410193
