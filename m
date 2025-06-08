Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F182110
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749399594; cv=none; b=mxwg8Y7DZ2nUtveUDg4e5qFXWU1uJm/xwmVIqyiMUaY/bmwyTPtShLlzQZQkFffIadx8PicY997RXr+GzM2v+KdiEjfnnhP7kojclYoEsj35B8j+cv25O8pfxJUJyx8+kyRCRMu51LXRDRzyx828IV3bt9GwgIEdFP+tudcGj1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749399594; c=relaxed/simple;
	bh=PmMmdsAfsF9XCpwcGMbfbsSghA/tNAmjZYOWzDUIZuM=;
	h=To:Subject:From:Message-Id:Date; b=Dsrn3kMWzJ4+yX8GlUNCeLFonIbjk31GklkKltVStczZ0mFlktrLWWbCwoSmuZDH5CPQzQ9Shti0f66354ro1wdAktVaOuoEwE7KwvhskPf7Xw/35K75hqDg1rvhZcWNwToc/bZGMZI60yHO3HBHKDbP37l32KIc3DQ26gnc5K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQQEAsL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQQEAsL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8506C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749399593;
	bh=PmMmdsAfsF9XCpwcGMbfbsSghA/tNAmjZYOWzDUIZuM=;
	h=To:Subject:From:Date:From;
	b=YQQEAsL/vUbSeOERhBGVXWe8/ZSu6ODIwdewo4HmCOM439gkI+rRK4x41vG87cg/W
	 YY5j8QvshTIWOO4XMwZzzXlXIaUk7faMA9+a23/ywQCTFKf7dTsa89C6IY0ApeEQBS
	 rDS9jhQ+sV/rXP2YkBkMdXWaC2rFIjYKHYXCf540ZmjCw5AzLUvxoyIg6Jdfj/PbuM
	 n04MaPAq5y/rFrws5GCoU3qJZKG7EqahHv8uD5MaBdPxn7jKyVbWZVN05kULY7vAtT
	 C6sVCz/1keIeYo0pI62+PKjQplFnSgAmc93drYz1jCxZnXEZIAskiTqKlZppszVkTh
	 18NkIg/624BlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95298C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939959358.13813.5513837315911760968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b02b2a125bd0fdac49e362e90ad2997a74c3a14cccd62a114bc28dc815b72c2
Date: Sun, 08 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749399593
