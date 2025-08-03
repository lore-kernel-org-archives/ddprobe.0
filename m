Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3278D610B
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754228394; cv=none; b=Cc9RfzNdP6l9ZDwJyIV51Qon9mYPRmtkT89Msgz1r4LqXmZDsOlVKQ36y6j9Swg9Xap/VXjHqjN7WmKgHIMNEweJlcdVc85P8vAZucCilhAS6KLnMElHd5rhXaIKDj/Ki8/J2IdG+X3bCuh7H2Dn0BDuGbXaTfVQDX0mPDe/QXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754228394; c=relaxed/simple;
	bh=/lh8v5Nu0A3EYRnThcVOEeysPfdXTWBTgU/tLRymVFw=;
	h=To:Subject:From:Message-Id:Date; b=NFhcu2p4t28UWEH+Eg4Z8h/xE78Jm3CcRwhhayZaBgjmiyuvBLMXobA3Rug5LLfjvCUm7NsAthzwkpzxQ9pwBd7h3BT16UixtPv1R9vdpRfEMT09Iy+aLTyrLuEAeBfBVZvNzJyTwgdPrHe1dMkvzFgwt6ovY/LYm3Rob4/sue4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVXwRpY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVXwRpY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754228393;
	bh=/lh8v5Nu0A3EYRnThcVOEeysPfdXTWBTgU/tLRymVFw=;
	h=To:Subject:From:Date:From;
	b=jVXwRpY2nrppORFIxTBH4+AW0bQfXN2OkyIUv1K3Q8R5s9pUhkYm+Eij/P+N1H7hu
	 sSXGv1KVEzXLOgtbxRZAOjud4hRQk/XRYDd6erH5CzLcud+5qqHNY0xISGKXSD0W4Q
	 h/BTBQXYsIKtuizgjWBU/11mOqUDWU/IFfY9PyAdAubBfF/nFNsEBmMzvOp19+UKh8
	 tx2a1ytHvtVMvmtWL7MgCGPGfl//ajoF7OR24KP9wDzU3OE31/+gLXzR5FER2rtPkK
	 15/eQKCXW2EFIFFyGk3OwsF32h35xaInWrP+/gWER++zq9LN9zEe/ErsluDO7NYaIG
	 5wfZdOwPWVPGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA47C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422839358.11878.10163317516193993419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18988a1b10a0e3c8887044370b1828dfa846ab81bf335e3aaa4f1aee78088b9
Date: Sun, 03 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754228393
