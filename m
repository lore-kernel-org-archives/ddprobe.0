Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1601C146A79
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729722954; cv=none; b=ZfMklHN0Gqti76p3PIiL+MK9/zLYu+lUm8tLrwpKtzRyGnTrJA4pavA5faRPVYwOJIBN52HeF1kbL3OEYeU1mgInCEh+7h+6erhvX3rCAUG2Ky5z23C8TBvmwwgxxrFFRu/dYsn830PNf2eVhCWNS5zmYuw6QtfyjYK9so5gT/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729722954; c=relaxed/simple;
	bh=0ejK4rX6k4GpxjOgVytGAwehDWtJX2KJEiV4CRyWBBk=;
	h=To:Subject:From:Message-Id:Date; b=ttzIBtfuAAjRknQW7pzfQPxrcy3ORrKGP68bIMSOMh8/ABD/YPC7fHeGY65GV8DKehaM8dRBcsnYa7hyC9MketoeXYihG1PqufLqaOtim+tiCOgrTmYDcrDn3giNSolyN9kFBFWXH+HEdM3u7z9Kzh8dwYguYpubD7mk43PBL8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyeNRiJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyeNRiJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A648DC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729722953;
	bh=0ejK4rX6k4GpxjOgVytGAwehDWtJX2KJEiV4CRyWBBk=;
	h=To:Subject:From:Date:From;
	b=iyeNRiJCPhWSMFemFPuPy1pSExPPab7YSwhbxJLyReQ9B1vTSy6yrAFB4ZfSnlqp0
	 QKWBu8vt5BGu4P2SyOKMGQGRp/5avIWFDpDerUykNXovfxTghO7kmZER/ZQxmAZifl
	 YYMciazAVPomPR1mbp6KTEZB8Hr5xjJaY3e2+VWiGL7O0rAiSo3gmYPNMlIG/+x5ia
	 cwvnnyb+55/Gh1RR54kLtgLqZTddHwVeM0S9/8RoRo/Oy8+LiTP0S6Rmdm2SB9+gbF
	 9IHggo1sio68SETJsjb5A/Gl2+tM3wFfawUeSd7riWSEb9Lbm61BNJ7sEUrl48hOKn
	 qfpWIeqO/gJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94568D0BB43
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172972295359.7894.2213706506708826276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd374bef423992bd0ca8f46ada69ffed2d8c45b4eb4fa4695aa2b9e460184f0
Date: Wed, 23 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729722953
