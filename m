Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06E032BBE3
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758110994; cv=none; b=ZPwboXv1neiROaz0pyKcHfUWNSwjEaGL04Qt5k0LqzCO5PsQtx147V5fdMl4MwyiIruCY+bvQvpa4Os2c9yD+gntEinSjU9anUGZxixMUt6HwrLTtn3ev72ZU5IuFtSlHF03hWw/2JB73634Ywv1XGP/nXPJDe1g91enPgALUq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758110994; c=relaxed/simple;
	bh=tnGg4pG40JAYr9boZqzdmvqfsVXj1LLXfaMxtYxYZDA=;
	h=To:Subject:From:Message-Id:Date; b=HudjI0huhJUOvQJXmVeOVAHKupNfRt1tyHWkkqZ4nfC4M7J2RxDOVm+ksTBUZqWo25apk0jSgU5hOyVwLKfUgMyOPBNJEjnEIWcbsjRlCxsFL2/VPOskW5p6S6Fjw7ESvQPeUIav/AXUxn5eJrjHIqDstnd/ZtcwyyfACqlP1WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHPComnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHPComnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2607C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758110993;
	bh=tnGg4pG40JAYr9boZqzdmvqfsVXj1LLXfaMxtYxYZDA=;
	h=To:Subject:From:Date:From;
	b=RHPComnIyfamG3zAaQPX8KWHLuiiCxU8lrCORQZVOW+kTrLDx9pPvIEGwd3sHSHMn
	 nzBj53AtHqyeZlfDPpGcqBSE07CE1458xLMGnfta6WIuTirKDXoDrbmo8VqsDIQGNx
	 ZWcxRV7JK/V+qlHx8QRXKU1NQF8D+3JKKLFB8+6lQlSj7z8DokC4B7iGR8qSbPqR4+
	 JnSUjxiw/CRbmdodPa+4L7TevbDiS/n4Wt3mbebSigKPETh9xQ7mBSQV71DkeTGFTz
	 0OxzBK8qtVfnShTVNOFY2NqPKDzjPRHSrQ6hj8wAxxYcD4NDQrsFgjxeqVDew/5SWE
	 jOJy1pVJ+i8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E01CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811099359.3494.11842546136501771396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5c083f19099f43194175254df30f1dce9f008dedb8aef2a65e65e53a676e07
Date: Wed, 17 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758110993
