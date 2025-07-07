Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EFE202997
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751925594; cv=none; b=irfTkhcl9lMu185elIJSZAFrRch0HvToIeAcfR1SyGX96bois+jTmBFxIZ1NtvYMdPTU/e64wgwdrt9gW+/3saUIgISv38QUYb5EIStCm49SegCHuLEqB1VOpyKpxbdpm+dtMrQaH/Viym8UGmzvlGDQSyb3QpsxpFSPE5ewIFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751925594; c=relaxed/simple;
	bh=iyfSRPiV/l47u8lIf5PVA2rpbHx3PFHS7ZlgvhmnJV0=;
	h=To:Subject:From:Message-Id:Date; b=cFzbXyE0lAAvSKpQdGdERWnkMY3bV0eH64gb16re9ae94SMCudvGRzyc2t2o5kC7LyTsJwX3MdQDwi12xZFfqHMg7MugtG5X6TQTrmjToBgiKGv2l96SbPWKFeNI9xOIsYBZ3ny3Vj4dA3FCFUxdE8V0bDPe1xSmvJfazCgDzRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4bShEzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4bShEzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68CFC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751925593;
	bh=iyfSRPiV/l47u8lIf5PVA2rpbHx3PFHS7ZlgvhmnJV0=;
	h=To:Subject:From:Date:From;
	b=n4bShEzntfXo1XI5Z9NqESj9hZtsoAYlpOGjpzSVnKTBurHbceY04d0OYZc3l43Vw
	 AEnuvxY4K/6p8jHTk08sdv8bKPYr0VF389TeLA9vsubK0pMqYPFHq1gJdD+Q1Yk5Px
	 tSedoDd9F0E+NNOVxrz3WaBurULfNJIPk6+tzhTS1V7sL4hZEa6D1aFAPRDoCQ/V+Q
	 ecPe6CTEnod1jeOmeUlbMJSL1mUIFJhuEaR1Q/nKLQO6aAqhvbs553Ap8Q/P4nLVi4
	 adESBasteqDXiZpJZGDFSyjSKP2tGWhSkf2pykPA11bDTneiFz/j51JWZpCmSxAKFG
	 YNnuNcJ/fIjWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CEEC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192559357.30077.3381941400399766677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243716f6427473e22994ac4f6bc9d5c3e662974dfbe68cc208c6905346567e98
Date: Mon, 07 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751925593
