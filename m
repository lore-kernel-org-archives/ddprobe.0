Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B1638B140
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777029454; cv=none; b=Lz2ImyHW+uHDIiwbfL65bKhhY+B15m9/h+LSJB0gwk157g+aBT3y76JOEF+dzd4EjwF5XrYhkNX7Fah2WBskb4k4KBfsa+cV/cYsziy05bGMzM8R00nWl6ou6RDG/Nyj1KF0Ccbqn+/Jk1leootIYGNFooJ5Suo1r+XFw+1tZVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777029454; c=relaxed/simple;
	bh=NUY1b99DZKdIOZVlLI7TVx5z64z4gL4yemTuKsEOvJo=;
	h=To:Subject:From:Message-Id:Date; b=r/X7Nee0Yj4FZUnDUGEw73YTgXvqUXYVgXfqSXwD3EEjZ/uNtrDMFUxozvHtx34llbE3xVn7dmelhpyM9ibAjkxI0KOI2VsDFeFQXYhSZ8dmczDRoArz6crAkix1yN5qSNvxqJcuRx5ptkdufhXBLOTf4Hg5+cJJE4GFnXH8R7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIvCgvYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIvCgvYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4BAC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777029453;
	bh=NUY1b99DZKdIOZVlLI7TVx5z64z4gL4yemTuKsEOvJo=;
	h=To:Subject:From:Date:From;
	b=TIvCgvYijB0XFKKmFtFKw30fSwiH91JexS8sOf4THngmPfV5F4MegAt39phg2tNof
	 mRnow6vny5bO/3+Cl6q9lPQUXTBtaECHCjNWf3RBIGrJrOOkag+IsahK25gz+aO9OO
	 BslgIGuq+dhGGYubGcph+297p6leSXFbk5DvweMKY1dQGXLMbCba90HnnrSRHFuysm
	 ff0NZmfkfQ/U1BVT9GLyb25CC+EOXHc1XKJwsYqX1tZ8tm6RadlcBXAwHjdIVFk3Bg
	 cIYkjOEcgErKfYRbAU6o3+wWQsmf7DGoWtSD1X66AfbQu/YjBqoOI5seZN7RHScSfd
	 S+VIPMyjWPMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA76AFE520B
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702945368.18588.17889045098200861043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfec1e580e623820266e3f8ecf3abc15742aa210d02c2118790e040be76ca74
Date: Fri, 24 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777029453
