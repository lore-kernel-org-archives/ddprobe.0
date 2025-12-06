Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F708265CA6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764988974; cv=none; b=p8jVBZfvFoumqMgLsDgBua+QPPFCZ8nKgkzAtMEPJJu/DlhNoFOPhvkj8c9smIAat3Q0kvhygyK/pObaY+LqAi0yictBaGZz5x9tB7oNoYGkPSMhq2VrfB2qkVCmuazWIEVdCH6uwDQWq4bQBO615arL/jvuP9PTl4KvvNTY7pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764988974; c=relaxed/simple;
	bh=b1Tdfs7jrxGaahCAFV3+mCB6Ia6/Df/JXcI+zXIzkPM=;
	h=To:Subject:From:Message-Id:Date; b=TgTHeVXFo/CxGs9x9iqA5B/P52SaDoVPAC3+3mpwbxlDs0Mmw4IOFmbcNlY0Evt2Gm9kgjEbUh6Z9V/cq2rR7fopQj+imSHalMCGmQco3Viomh+FuUelHnL1jP7lY2LGOzvSIUESvOAkRM0DFyT3kJVL0bDUvWNgmP4OF4pmqek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6VVHaG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6VVHaG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2850C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764988973;
	bh=b1Tdfs7jrxGaahCAFV3+mCB6Ia6/Df/JXcI+zXIzkPM=;
	h=To:Subject:From:Date:From;
	b=A6VVHaG109lqWpoiSj/JYFld5+x1XRlQ8m5LI93uenc2R4toPV1tTRY2HA3ZSLn5v
	 fSt2kP75b8L154mGILBDtIwfpIcWx+lIah84ZNzmG1dJLKfG+itZIOyOYZJhluV3mB
	 iYy/AtkP6kuEmw395wZvH0jqBoBiakYz/lXSdTfm81rTi4cJgiUCj5J61I/SyyDWUR
	 ctm1yHyZQXJq5EaCjCqDGIWAPtM+WWXMMKwwIkOIFlsa6tludUBAYQZiyVO6updTC0
	 1+UwHEDmi084dzpYwm6iY870zQKB1bREyqDj9kfTbfx+XlE5J8IyZl4+XOJzg7JTWj
	 SQ78GLn4Ftxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF19D3ABE8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498897362.13492.2693456904847212098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf9989e955c73a2a2a14f6659b8560dbb88e8fd27264f4274739d82a00c0cbb
Date: Sat, 06 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764988973
