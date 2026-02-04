Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A78134F46F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770180834; cv=none; b=WVORCYThkvC1+QypOUfcb69hOFls2C/JJEvM7i4HOhPO7/MX5ycd0BRu/BPbtNLiwuYAVC5llCnCt+GA5iyJx+KQ3JVzdbTNDYYbeMIWPTzMBLD0oYDmd6qbneYKH0Dvvu2n41XgTtu3l1pPBZxLs0x/LJ9bAxEadkbHiF6n02A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770180834; c=relaxed/simple;
	bh=o9JFL7Mkw3A5ZA2lUMnFZJX8lGLdWZU+UnRLDVW38bU=;
	h=To:Subject:From:Message-Id:Date; b=JbLYu7409rmanAinyHYUxUq7c6SLiFx5FVM6aIigTNetsxZ23GYEPNXhnflK66amAyhBpgbRVLV7qoj3xhP/mxERdp5PLQ8rFVooDQiFUj9MB3TCRDIOV4BqE0aNQGK6eToMAcosnyLKb3Pg4QoIiersRLF8s6VQbgdPkD9luQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4kMNuRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4kMNuRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF08C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770180833;
	bh=o9JFL7Mkw3A5ZA2lUMnFZJX8lGLdWZU+UnRLDVW38bU=;
	h=To:Subject:From:Date:From;
	b=V4kMNuRX31a2UdXNPQ+lOuS2KMJjX3i4kRlsQfuTaDk6NGtqxQiI1nFtTbmmf29Uq
	 98Ll8Qj3/97lwj6ckxnOIy0s6vT6EQSWgRIxC4N7aUu0ECFthG2rOZNYxB8Djsz2IR
	 zjMoxOfFEoujh5Gy3pZDo/CASbMZt7anbGyTF1Bn1KwOcwacT0ccwRFuFlL4XAgwW6
	 BRnFubZVEr96LHP4z/Jqngj/bI8PP+MN1dJF2pXAELE8UVYWWG3UdJj+iSZIjABAdY
	 z8CnynEowLh+Dcdgv9cTiomItDScoDKDfzD0mI84IDYnGJeRSydbEbnjB0bQDpSeJ/
	 PfHd2fpYvPKPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9947BE8B39C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018083359.19362.9695438716273769520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3580b98255adb834e597a6d34020c636e6b4c33cb58e056236798fe43183c2
Date: Wed, 04 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770180833
