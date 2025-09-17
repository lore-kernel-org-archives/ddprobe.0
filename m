Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E540249F9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758083394; cv=none; b=t1Nqq6wb26EO44P5o6oWxXUIv4IRtfchaNktVLXmKwYzcYc7mAiPItq0CkPnN3FeuJ2enziiuWL2DDPVtOOrd+TRXwDA+QIJzTd9x3i9F555ggLCAnwSSwP/aLVAQd34EvuyTmsSegrZvJoB7r91ax0UHzKzDAb2xEgAQV3Xg/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758083394; c=relaxed/simple;
	bh=LiM/pw9Lw5Od1bHbWvGdL4kezKODmjDAtXe6QBnqa2A=;
	h=To:Subject:From:Message-Id:Date; b=k42OhYuWkcYsDPIhqTmuwQRI5Je0jfsOpTtxFvKuprhd5SynKErH+CDaiatOKBkESVSd2x9YevNYCWo3qJVKNCtwjJZkOMxWw3MyPgy+dBin0gcAt0ZFo542CBFqWVo7Fh2Gfdstl57ZFZMz7zK+Zfc3AnsS6EAu6NTNLH1o/NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmQb2g4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmQb2g4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70D0C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758083393;
	bh=LiM/pw9Lw5Od1bHbWvGdL4kezKODmjDAtXe6QBnqa2A=;
	h=To:Subject:From:Date:From;
	b=OmQb2g4+dZitnyOLsP3eN9DzWJXseYP0bL2PtEOZgJoWUp7zjO96kVfa9HkFHrx6O
	 CFfPjPHY8feHlN5Y20UcQb7b7DyLPlwtdf6YJCr9anGhNys8l2TRcRiEbC7DOAXBhT
	 +DQRHcZ4/rhGwMCeJ4yYhw0deNctJ4iq3h15GJerj875En6/IbUN3aP3IowYFa4g9q
	 5fhfkm8sE6uzjH8uC9IsMgQPYVM3iGyisgaOm4AzlcM2X91RG+Lz0pjyM+HRzJuT4e
	 aa3sMhqwSNUa/71JXv3+lY8y/5LYK+iOdHYjzzlBGPlXQwRaFxuEGaRZqEghsKgle1
	 BzXdJPS9B6Z9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B82CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808339359.14749.12382354292410393214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f9f28688a4c0ef79abdb61b4f8a6c993acd4f36ef4915c77ea8e6cc062b728
Date: Wed, 17 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758083393
