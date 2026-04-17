Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE24B3382CB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776452253; cv=none; b=ECisqq09ZNpT7IAAneYM3MT2TYcPk3Q1bBx8BHonwQdqPP1r0T2XKJ0rB5MFx45a2hTM0kBFTqCEtKXoMV5zcrmSamv59unjQc08aPfc3eSwyp2YVWhS/vHdnil56dUCvykTNhpSN1p5fooQ3OrqmVy9WQLYNGgE4L/ybluk5gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776452253; c=relaxed/simple;
	bh=rAOpYBSc3MNIiq61d33YnOtj5QpNmdjwTawlzXiE3bQ=;
	h=To:Subject:From:Message-Id:Date; b=PFl6bBbR+OBV+rctXiNnyW3IR959ZRF/Y2/mmsrK9J1RSsKdIyHzW5JdMuDIV6yEdyujqfT+LPurfBYx7xfZ0LRWbfkfzQ+4LCVcwk3+2CBLViccyk5TVlFWXxSRWU6qGDw25KwY3PqDrg0VoHTxAD6jxr0Xe8SWRC31HK5V7zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdENvQDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdENvQDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF26C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776452253;
	bh=rAOpYBSc3MNIiq61d33YnOtj5QpNmdjwTawlzXiE3bQ=;
	h=To:Subject:From:Date:From;
	b=DdENvQDW578crtTMd7iYvZTjZUA04uu/b6G4xeYy6M3Zzxl7MgA0JzbGFkRFBhoxC
	 GOZ/yQ38k6mkPlGpUDrDfF7z9CU1CdD0aOroyfy3fFC7Ggoazx1z4gfTOvOiAZcMoi
	 bDWE/0JE+Ys3U7OSldA6vf3kqtuImDfoB/1LTtlpF3pHEV056FGt4nPyNbRCnZxMOq
	 Z2+t6eckH16F+R1ALnuvvARGPVFsjB78usNfjxGiulyhbqOqLg8VMsCn5K2/0sKuO+
	 fg+KrmZ9jPiMC1Qtm2EXTPN2IAfnx0pCIqHronJxrBMMyfxBGAWGgkKoEm5O0frrQX
	 Bobk6bOuRRTHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9AFF436BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645225368.7245.11263902694275318915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412ebde7c0911731ecaf70000ff61b37fbd93e187562eac415f3798eaf1faaf1
Date: Fri, 17 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776452253
