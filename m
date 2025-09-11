Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B58211CBA
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757567394; cv=none; b=JXJFR0PzMSFzqRu6D/XRvOWXDFS+3sdC/tQ7iYRx8pOnlt/PJjzElEPdAZOiSE5aMwb3p4Y849vxdhX2oeMjhIx0llb6SG9Zf5dXpsbUoJelgWKL+30wpKNw/9pztoSaUI39oth0wSz13S/IptUWhuo/rEBFCE8kROE3KKHm4kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757567394; c=relaxed/simple;
	bh=9v9vj1A2fc60MsdmhelepSaHY9jkw+N3X8yfU0GfqYI=;
	h=To:Subject:From:Message-Id:Date; b=A+cLeGOsNV6Rq4RPPF6PJCKcpma77d1U3gV9JII1XwJAgAStDINj6Wki1gOeW3BTTHAWNnvvcMis2Bl2ZRWaKbgV1wSg14Ya8/7phWqeY6aB7ocqr1xHAfKKeznWGN7+yV2jE8jm8RaabVo8ydqKVuKwGx2dCMysPaYOVzPlz7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHrGU0Q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHrGU0Q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A979BC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757567393;
	bh=9v9vj1A2fc60MsdmhelepSaHY9jkw+N3X8yfU0GfqYI=;
	h=To:Subject:From:Date:From;
	b=eHrGU0Q8MebmP3hu0PrMfMHFB3RZ3965G/KCrvF3KgC8eWEd2sJ5cZXhiZVR1AMi3
	 aFHJiWoC2jfkurG2SUESjbdUbfljwJUuKjoNYjDYimfqB7s1un8+jfEHYpum+YtNOK
	 hdB8Vmx6sWA0RHJPA7riS7EqsoiIktQXbcq4oZusNvlGCi/Bv1ay0pFe7u25BVzDu7
	 uqDvdgGhG2ItW/Yl/cIPa57Gz8eGAteUb4s2WVPHIiT+aPTtlA2IlFX9GL09ccdgZm
	 fQ3g9HBkRGwkWOGWkuah8X0rEJy2kqwyYAttkjWJyxZGUsqs6YPJk14wgyhreDBVOO
	 ru2EQkyzfTgkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD7CAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756739358.27456.1053369816156283124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8641157a932c4c20a692e2dc41d536f9e3b3ee268d9d04be3a9157326e7ae926
Date: Thu, 11 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757567393
