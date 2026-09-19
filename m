Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6139549620
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789789234; cv=none; b=SFJesvKeopHv7vgbDz1Zon9ZYOw1epBr63dmIfVgi17k9RNRj4f8Wv2ZmUetJsvDh61KuR3t4uxYdjfu7vmDShYsHXz9okRl0Hrtz4au00JxND/X3fcT63Doq1rlrw5bYLPV2bW6aHhXm8P8C+Q4rV18uJ8P8kzS4+TnSBB9Fcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789789234; c=relaxed/simple;
	bh=7fjlXtXmEuPfQlbZOPPKXVsAWsYcMCYXQOyZjblmIV0=;
	h=To:Subject:From:Message-Id:Date; b=BjhGuKdeO3ON+Ds5wp3n0Ljp56CEs+FxbjU55qARuFCrWHqnttd1B8MGTRCf2nZHgAohOGCKwYmPPsw5l0JpQ2dVj+Z8Gk1tKNKWmPb6bd1C3xaVBoU8Sf7O/QXf8YuZsWIha/qQqzi3XNgr0O0fNypeeUomOsx1xBlxD6r08+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5qvdWR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5qvdWR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35A6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789789233;
	bh=7fjlXtXmEuPfQlbZOPPKXVsAWsYcMCYXQOyZjblmIV0=;
	h=To:Subject:From:Date:From;
	b=k5qvdWR7F9k3O5DtOgdglaNMREsGc+RdOfCErZA5+dD5+tYYxH2VHsMy5RufH6yFV
	 Cf6dihf29cICQNDaR68wM72Jelm2H0jyATp4N65sstafM5qvIXWn6BPAErjk4uvMeq
	 KHbLFcE7Z7aPhb3k+n6kYWdEvOw0DHmXLi6hi4iIxKy3qdRQpQAKtuhpM5Iahn6ojx
	 vxJUI467dRDaFneTczMFFQJOrEF0ReYnk5kVKd714VIDWcaxUHtK1kTNrIEk0bO684
	 AIooKbxbX40s6FfHyxus2n8zlLKG6I6930hspxEjF4KJl7lWEH26TRePSvrsBfmYBe
	 A0Rn/LnCODjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDB8C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978923368.1085.12287965043429776558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18288be33f3c6f683356ede1da7c249f73159456634c97e312b56d7d040448bb
Date: Sat, 19 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789789233
