Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A227453
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740384535; cv=none; b=H3aqB78DQW+hl2F3w6n0EGQftTg1vtKLxEDYBqzORuCQEtmxMq1sAkP6wNAi/sGkFWOBqzPGoDjRMe7mEw2yZ6l8Oajo1CGVJVJ6SGnRgDdG7U+IHwoHRAFncYPLba+eIT71yRNMLdjBSZkFAUF9zh1IxgPTixgP7DHEmB+STHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740384535; c=relaxed/simple;
	bh=vesq4EM7J6mWQOywjPo7DvAJR9XjFxI9ZZXnbDQ/cGI=;
	h=To:Subject:From:Message-Id:Date; b=I/LTpTF1yemi/QZci03/anE6n52HRmfxfF5lPjbuw6PPayU5yGI1MV3NrTk5bOD1QyX74bJxa8RLImybgy5x/XLuRa7Cic0CoLiQ2W+iwjY2Jnm0skhRRXBK0oJXj/NSi9FCWK6314RS02cS5fodnqfq/5ZIMaFBQYi/iprRcIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IukimF51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IukimF51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17BCC4CEE6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740384533;
	bh=vesq4EM7J6mWQOywjPo7DvAJR9XjFxI9ZZXnbDQ/cGI=;
	h=To:Subject:From:Date:From;
	b=IukimF51jErWai9F0067lQO/p51/PBj9AKD6K1Pw30cjtZ969bSWXtb7Ce1KMrEkN
	 wfpyGpICn85lR6umcet3XdmV1QEKnMz382I7DUsoeHridkxCRNaWdAWH/CNUPetcvN
	 DXMR7UWvpyYHqT+JX1VMixneUiSpXUg9dAkH3JAfmwCre3CNf+TYfFRy2/7CVIY3iF
	 KDMwaJjQ7LXSc/DH/+95infUDaoJul5UsGSlfiqPdZUQCKEkvqmnsdDuzKHdVZxQMR
	 BfYtgNLHMG0O0OTv+wmgWHD4pWhpWQsAkTII+QLdHkdJF2ohFt8isgKDllorLlDOHH
	 yBZqfgW7XB0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E237C021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174038453357.29061.9374371012748700509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff6f9b15e2ee79f17516b88ff3ec9fb6729468f23312aea86426f52d2c89156
Date: Mon, 24 Feb 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740384533
