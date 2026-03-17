Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000BE346AD5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773746094; cv=none; b=B/5BhXbQRaC6nA9LFRY0RgqgPM112mYE17kKNfbaXSDURaipLPlPraikF9IpjDaVHYdI9/ihJ+RgUXRoC2EECsSTztVmsgfx+uRDKc+IkFvrE7G4oUpskoWeGH7EMLxTb+0X9KATJgLszkqhZuf4HaquKjnzJlyS0N3D4+X6qj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773746094; c=relaxed/simple;
	bh=gcjvm3+WH0LOjpZRqCgwiR9x1CUiLk8z/sSkGPDsclY=;
	h=To:Subject:From:Message-Id:Date; b=g/BOsK+pkBF1ktGMQpJ2R+chXuEusqoiK4gvlWsoUx3LfYo8fdGIKVd2ZOZWIvRg3sNX/xN4PpPCae0EB/L6Q2J8jAxQ1oMpnb0RVCViLD739t905TKNTLOapb0D6mpt+VkLctUCfxYco4r48ke5H8/3PW8GR0pZ+ELJe1vVvK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUJPbMIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUJPbMIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAD0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773746093;
	bh=gcjvm3+WH0LOjpZRqCgwiR9x1CUiLk8z/sSkGPDsclY=;
	h=To:Subject:From:Date:From;
	b=XUJPbMIAHAPWOhePrymS8m7XumBropKLEut+PklddVCzVo8zCW9vKsQwB6gF45ryY
	 sRotqSsbYn34kpxzjw3otrt62shNTEvSsneMpLDMIJiudhWsP61Pdq59vac3RxzTNf
	 A+Qozwtyd+SyQZWMGvJdjUHdWZTxU6ihHSa0zCvPK+efs0zG9vLnnUJtrnLvt7uFuk
	 MmgsM0GGEIDtxOSVk6SoJq6gFa7TVjXTHw/qXdB2MwL0tmsJYkSBJL0b4gIE0wwuYn
	 fieuRdauY0MPBMftB6z/DvXLoVs7kiDeH0aBte4f7fZbw+FdN1m+1cE/ImiNuaHrS1
	 7TcytjyWW34Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4FFD707B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374609357.30878.3326103436731146681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190ce67ed2e98969e6c4a0c741b3e429aaf3b2c0a68b5a5a5d57b915e47242c9
Date: Tue, 17 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773746093
