Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FEB3A05C4
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790260234; cv=none; b=UzR3F57ESQ+SLG/9RXmPERYtgIuDgVFg3PRBGVnpHInLIVqsj2Y3FmD1QICdXp5ZMnMN7PsC1SclMPbt2sywTrGfzFSuZOQXVhARH3ayiYgcUZWH5gADzCbVbqcWFGT12VZQoFRIjphcFL+hGofwOwA8vhjSoPC45mVNO4tS1eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790260234; c=relaxed/simple;
	bh=rOFmN/PBNJSfQMNNtss7ZX4FBDoa/Gi/XjmYKk0abss=;
	h=To:Subject:From:Message-Id:Date; b=Z9jE36Zh9DFfYKNyjUH53vWYwUcTVcrf7PxANIeiRZXwr/4xY5hu1epLCgvPFvNH/88huuCHbuC9jR40+KO/jV+7oud7Er6lbVU/LVfAN387cOfxLyVpy56skg9TSpvyA7rT/RBBmxx+qKugSAsr7c3Rwm/o2bCUrrZ/dEBVziA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q//b7UAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q//b7UAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47D5C2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790260233;
	bh=rOFmN/PBNJSfQMNNtss7ZX4FBDoa/Gi/XjmYKk0abss=;
	h=To:Subject:From:Date:From;
	b=q//b7UACOWH9kMEXnTxGhgIV04SyTYwl2t4kgHYRGfpuLKu78ZTNUvMMyhVthw/qv
	 xbAIn+gH2f0i88ZeDWJnQYdkCKLQWmgGL7SRmOD2D3xQDC0nvEwtXjbeM0yGDOlE1V
	 X1TLevyzwB6ll8OmtlhpEdtowjyNtNxc8hJxP4TaZ5c43bFAhXTf6ecGsLCyMihJS4
	 yE2NquhaHU82Ci/Zb69pmDfeTl3qvgPbJvEnbObwVCs5ZXLevHtW7+ZI4BnM00awyl
	 pPfybb3urcfKgpYqWMyNYfqEb5i8yt1uwilsnAB6qrIgmbv3depMhWXxfx5sYBgvMA
	 oMTV+7A0crjbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC3AC98315
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026023369.14280.3804463091426856576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84b8d483f499538eec76d4f329c7710b9d5070f3497cd92c3fe75dfe1b061ff
Date: Thu, 24 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790260233
