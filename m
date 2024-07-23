Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31617EC2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721699754; cv=none; b=t7RiHZ/f+OJGMuqOK52Qh1R+MIIfK62IATW0O3Kh0bcPEjBVXVLTKj4OiBxcvVnbMahZ2dV4BsylxMVHpFwu05nc+zdoM8SmpJKzvsLAg4f817ChejlNZXIXF6v738/ZUatqLIdGEhHes5Tl48FjuLDv+X/epRtvULLXFcKr9pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721699754; c=relaxed/simple;
	bh=k6X+TS0yS0mBIZ2PoDcM6YBzY5phmc2jRa+YQbxbnWs=;
	h=To:Subject:From:Message-Id:Date; b=V56VJvP4mXoUCIlz5mi+aC4ahQwpBqWDnpOSHRKfTPUK4FVnQfA7R1ymxWzYZMtna5HWCXZIwSf+PMHUTCL0tp4OAxtlTi4KMv29ZSo69H1lWt8O9a0EiqJpDIImzDdYhFJAEafg/nfR3A1Vvn5DupaCW46o9AKBPr23M5fZwpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqVjZ6mT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqVjZ6mT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B388FC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721699753;
	bh=k6X+TS0yS0mBIZ2PoDcM6YBzY5phmc2jRa+YQbxbnWs=;
	h=To:Subject:From:Date:From;
	b=eqVjZ6mTGaP7qo/HNDTJsE39mdUA0j6hVr/C4HXPHxY8xsAs4NHqBGCjBZWkKI61o
	 XmypE4m78NWiuRXAFCu3sFwaiXJt61aI3hP4zu3x+7EIpzOmk4u+s/7dgU/gTlyeDe
	 x9MdsvcJRHR1GwxDMBAGFQXACdXjj6vJtujrxutOFdDgXObZcsiNDnjI/abyq4qpFf
	 NHCy7Sd81rLtWY3/BbS6PphoxmMcCAtTK1+ZrTckA+Ju4UNaBuG38QxudM1FDQOPVD
	 uXblY0os6fVAIGzPKAnO0Rq8fI+z35NjW2n3Xaayf6KyKu6cKFxIpsXR1QREtYcisS
	 I533bVDn9w7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD20C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169975362.22507.7407061151266716086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0707294e1a1506e567b752503d4526c6cf0a012e4836963ec40e045f7566cea
Date: Tue, 23 Jul 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721699753
