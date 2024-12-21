Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA38183CBB
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734813354; cv=none; b=dbeONNF/5eYw/jUm59uMo7eVnLWs87CYUwv/ThPbxakRapjWFtzIm4jFSgttu3C1DgZ41mVNyUKZOxT17Yxa+KVj1kNe2mPDCJUw4U6+XfB5PuwN01vSYaX4y1Vin5nkuUheBBvSTsq8s9EvsSHTZac6Ux5zcheTwgn7DPusWdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734813354; c=relaxed/simple;
	bh=J+WQALk3/OCLnWtuEdXl5kqz3Zl7KfQ1tk/sFonAdVU=;
	h=To:Subject:From:Message-Id:Date; b=usGICCIRqfRqN201q1MTfNlaw5siPh8uz5R4gyONDMMpADymtOhrzSEKRWjGJChBV44Q/axddSvdIjnKeBCsHdUHedL7Q3ilq5kUp1SMmEf1+xE0z/V7FZI9O0uqt9/zIgyBzzK2w3niPuGFdGnDMFHgT396vVrpIUYdE9Z9gz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncB3CA4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncB3CA4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7276C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734813353;
	bh=J+WQALk3/OCLnWtuEdXl5kqz3Zl7KfQ1tk/sFonAdVU=;
	h=To:Subject:From:Date:From;
	b=ncB3CA4NP6mk9mYsOj6HyYrqA//DRSFKqiMInvCjUqhon2Zoxf+xBcame7cReAz3h
	 EYsrOLYmRR32KhXUdlzRhj8XzI/9wuBkgYNT2QqIdyBvfJZFtfFRQ7lFk3UOmtbUF7
	 rvbdlDvtvpAxwoQ78coyvxA13UCVgayHNMqjUqcFm+wEO4tr6EddbC8pyBY/EyI2yF
	 DiTKUPtGp6VkOzGjYuJ4Em1I7sFTLPfR9ZXPnK/H/PW10dy1Rw30POHib26+2hn8BZ
	 Ekzb+8WP0Fg9uFSEjt6qlYdWCSpUeOOLWg/bEgif6Tkr2XB1oq0Y3gLjzawzjl8QL0
	 ZuttvUGjqlr/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B41E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481335361.25490.10311346354015631882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9be72b9cb0effe8b8d4f452da7e1c38176fd75c29dbb91aa8ab1fd0a2e3a9b3
Date: Sat, 21 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734813353
