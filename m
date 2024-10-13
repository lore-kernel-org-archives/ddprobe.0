Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380DC53373
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728816354; cv=none; b=tHeoZleoZj4eJfcgA09UCIpnNo3SDEkTpOdtATTqg/ieJN7DhjWFgjiUxYppT+b0oS2BtI8l+mfs8X1+9R28qM9jN6gu+Qkt+8D2pHRcmPGqT9QKWAJOM7oIiRKFRNgqe3/4wovvUGdArkForkjveXqw9K1KLb/b21Ozk8cw/yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728816354; c=relaxed/simple;
	bh=iAAYoRSkZyRg6hK9RGFk6p8IiRZsyblC/Ku8hr49/d4=;
	h=To:Subject:From:Message-Id:Date; b=BPsxQJAcIko1kH0IoB9NVYxLEIdDEHag1YtAs4qk6e45LTZ3CpgrrGfAS3mu4pR1Sx7ESF2xEEepX/SfuxmuSqsWzmrGk0qyGkJqhQ4Cf06jAk7FeW+UD+USS3nCKFmzfjzszTDg9fOltYYYgTmxvVi6ZArANoDnnVZkwMh+W8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muFL9duv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muFL9duv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEECFC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728816353;
	bh=iAAYoRSkZyRg6hK9RGFk6p8IiRZsyblC/Ku8hr49/d4=;
	h=To:Subject:From:Date:From;
	b=muFL9duv6OvHSvl2pNdNHF4MzfjG3wtLBM4FGl8rChJXZBM9igtdYV1mWOqPB5bGk
	 By8wu5IJSgS5Wkic+mX8f/GMh/v3ZV2HpIanpmr8HEVugvbhFQ+yvjkVHICGOP4qBi
	 zW4VmgiPiv5ZiBJax6PLkCO0uULsd5xs+CmKLQBZBUsqf44OiI2JnS4bN+dze5D35/
	 2fRP7S9M7NyMr/A+s0E9jvRX9yosaDomWuDxCIpWYGortmtf1z2ucxDIRzCAYNB0JG
	 vWMCaJPaW9p2saxYJ4WL0Uy1TjcgtG8UsL9Wh/dNQHndTUQcU1AG10/0f7hla46Gn3
	 mLt2fDJL93tpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8A1CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881635363.17259.7875381797678104099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7a4b8fc20de305e831fea684399e319f5a24dd7d1539187af37f2655361bec
Date: Sun, 13 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728816353
