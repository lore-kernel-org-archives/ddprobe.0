Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402051AA792
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731488754; cv=none; b=BogZ9T0dnAoDXHlynjgRfIwHDvWxJN5HEEEM2V+QLNMNWDYB+YeDdVkwJbss7/jwY5cZ2r0lqw2ybEYbAjpK4PmsJy7bCMCHLx0X85qxjxVMG5zic3xlvxDDO5FS+RQiJiDyOE6MLHyTbVEFff6RSdmhfvD1SpWfgNeJfB++6lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731488754; c=relaxed/simple;
	bh=xMFhMrFOArcCtBPwc51bUE4+8T5Z+23gQUD2unvs0DU=;
	h=To:Subject:From:Message-Id:Date; b=opjAP2VRhdQZQhhdue2QAvU8OmVIx0gdnXuQaJVO3U3VsMzGEPImLR5EC4Blt0tqxZyelAvK4m9TNzY7LGf8VShr3IvFlb+lE9KAbSKPmOytiHVLDb5wVHsnwwMS+/7gmed9kLWOIo5WVP4t86Z2FuPS7Jl3WUIcXIXuzDiQYfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5SKTuQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5SKTuQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B046CC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731488753;
	bh=xMFhMrFOArcCtBPwc51bUE4+8T5Z+23gQUD2unvs0DU=;
	h=To:Subject:From:Date:From;
	b=B5SKTuQStPR9/wcLoiwr1YEjDGWPjf6a9qwRqMdepKElFMs4Gg8aHHGhW7g/McUq1
	 p2VGTlTdz2hkYcahCo0OBqeiJW4KLSrBXHRX4gLpePUlvlJ+6v2vA47AEqf1R5owTV
	 xxPpQX+v6BQUcSI5jHPWhpGZZYlPdZfvNPv4e/vRB1gFV6i2ulJht/0aptd2xnYzdu
	 HUscqPanKejMnDlQ2i/KUllokfBlfLWihDBvhH/f/nMBGGyZ+ObSINN6D36ciKxghM
	 rifXsQE1/vcCdjNHDbCfBr/7Oa1O4o+VQG/7+gZc22ckNqPsX1fvvCR8Q9Ukb01IbZ
	 UfctUEWJl12bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1698D41C19
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173148875364.14783.6790086160727769252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27ad47b8f28c134ac2ef56410ba86239fe86cfee434941b357734aa10b5cd37
Date: Wed, 13 Nov 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731488753
