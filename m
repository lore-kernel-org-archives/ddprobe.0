Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF29A21B9D2
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765800173; cv=none; b=nK6ekPJpFz6Z5U7XcAxno4aXe5HQRxRQ56qlKU9puglB58YlpW16ULqYeBguE9X4YIeNFXZGq3ear7Zxylf5svIcGT7TMsrZP7ySHO0YSL2Ojui+svoEF1TV5/FZFzSsSFdqz4tTWMJH5wKWb4CnMm8ZZnnk7l0CQCT4NRYtxyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765800173; c=relaxed/simple;
	bh=xPAHHTPSaiAImB2BpF8/MCASRl2X3qRQ+foiMv/cGgI=;
	h=To:Subject:From:Message-Id:Date; b=RP6W2YO82ZTPAPoi9Tvx/F3cfEQxb/DnYrUhVC9966eZVM4CXYfIza2q2JfigrKdjl1tm9wzZRlPEtwwZ/ee2sW/JS75ceAVz0/LVhaZ7Cy+cb1bM3SDyReCJ62PGAlr7UK+NtHlknQtV505y3S9oDFrjLsD5/vZ8+ZomryEPGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gm02XsWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gm02XsWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA5BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765800173;
	bh=xPAHHTPSaiAImB2BpF8/MCASRl2X3qRQ+foiMv/cGgI=;
	h=To:Subject:From:Date:From;
	b=gm02XsWCtd1mZ+lcLHDX4wi1V8nDZOjjcmUi5Hrk3x3c13ZhWHPd3Ixh08BuSjFMI
	 /fVhFgIKq/eW931SDIq8tqvEQcWuYwnmYUHN2y62fs13pR5P+OIqMGF5il7rqwYYYO
	 OvvrRCAJ6T8Ye/fubffcqJyLXcHknf5V7McJos0Rl5J0Hob7eiJzyW4adoWjN1ViZB
	 4sU9c1hEc9NxSaYXaNC0GdouxgBDvkVUSTGbYr2AS4sNuUqdMaZtSqSzJ4inoPL0Ci
	 YW5h7R1ER9p56PxcVr8/nfQS0ZxS5XFJ1UiKaSdLzExFDTHpWqj8p2kwsit0vdJfV8
	 gBP368VrqBJlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E644D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580017363.4126.10038180530286227659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e660ad57c8fc754b937625db8c7c9f7ad9ef69ae8e029f9eb72e036b38f6c0
Date: Mon, 15 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765800173
