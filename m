Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17372FCBE3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770529433; cv=none; b=TYsuHrRSvjLNaF5mlo4wm9I5hS+7dzNtoyDM4a1hB+xFP3E02RS2y5bFRtN71WA0Io6x9V4vc4/N0MDXwVMzDqrSQyqfPXmLEka6TQ/aNE3Egi7LFi/VPZi3Q9EvRQCqo3f5+XLvBM+TKyuXu0APbBMpyyCzL2q5seFXeWG1PyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770529433; c=relaxed/simple;
	bh=A3jfFL77FByaL/DAvviJu43p+wKBszeGYQRnM4LfgNo=;
	h=To:Subject:From:Message-Id:Date; b=PXzAsHTkF87cSb8ud/huGJuVV13vdCzRlQWEkfL3iQB2zuxvLcIXdQp41SUlDzY5s97W6lMIGwQOAQjY0bslvdprsTyv9CUc7EzMCvdtlIsAMDr96m3PcdAYQ5t9mACeg7Ro/w0fPIYYJWLHYzy8xZpkAFglTf7wX19aZQFg8mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0SY1T2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0SY1T2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA0EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770529433;
	bh=A3jfFL77FByaL/DAvviJu43p+wKBszeGYQRnM4LfgNo=;
	h=To:Subject:From:Date:From;
	b=M0SY1T2QeDqWLUHY0CYo56oX4vxq8s0aJBrdpEFg7LCdOr3mVKAmt9sAtwEcQf9Ig
	 R0XfocSguuG/L482W9bCJ4io2ThUM9He388rCOxo87Cx2Rl0SmSaI88TAnseXzckSk
	 KMrZbxn7kzBaQ5L4KD/zivwV6MnnIBzkIMT3kGD5RwYNoH2aGSartrKc57jjNPJpwt
	 hH+DHKVabvpXK/44jbNrvpMDXvp5b1XlG26fFDRkr9S4DCMjV/TBwute2Mbd/++e9K
	 e7Dwa2R5pR6gpDbofxypgAvH2iXMuz2ZmMkUXh/tyf4daWCJHad/6KR1HWsI8EuMt1
	 xlCeVwFWdGl9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E41EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052943358.28708.8760962446514241658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2843cde4d903fa3cc42b0756a846b5383531e9ab904393b0cfd80a60d8600f82
Date: Sun, 08 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770529433
