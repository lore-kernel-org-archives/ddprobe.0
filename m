Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA892A1C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760229594; cv=none; b=krrupEnoFng9z95Eq62NFIIh6uF52oQN0hEDZoKZ6TTKgHs0MEzPEWvl4niPH8B+HC/Op8+ZrPdwCaDDK2RzgpMVlk1lnfNCMI3teyGWCVzBwf5STBdU246ucWuLYzBeiSeu1pCMS8VA9Xs8qtbBziPFEqTnMtetz/SYW43agnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760229594; c=relaxed/simple;
	bh=hGCh/Vi9EMxxXZPjHLz80vpppuzEAVr6DTHQujmM658=;
	h=To:Subject:From:Message-Id:Date; b=pCiuxGiWxnS58UPkeUF07RX8XEtDp6Y7neUcll37s3II4L1+ywXnHizcj1quzyghrotWVBv6ORC9k94vYNWegj+iWri8voPI3xp7lql+GCChWrWON+0lRGmpXQ346rLouzk16r2hkc26Dh+am+qcIj/HgFB9oXXWtmFm+uiOAU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1YJtd5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1YJtd5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3649C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760229593;
	bh=hGCh/Vi9EMxxXZPjHLz80vpppuzEAVr6DTHQujmM658=;
	h=To:Subject:From:Date:From;
	b=Z1YJtd5+ChNcdE91CDmMs3oaiXuOtfU+wI7mn6fJ+RF5jyuO5M+h4EZpQQEp2bvim
	 sxCSU7L3iTDtkBbs5lJzKeSceTFcZpskzCKinVwVejQPF/Z7n+0RtLly/uxNUujRtq
	 h7E8VXCY5liApfNU+YinEzg92SmRLXIhRLLJco85UlTXg+4cepMn0zps3yoSAERpEJ
	 PvbJBFCr4Xd7OJ4VUXQ4vwk5AryxqY6tWjPFrMcTNY1FJcUrE8P/QAyxljR20mDM9L
	 DDlFDSI1/5u/U3NvaEBiTrDMhf97ZOddUGfTrLe9ZtAi3xxqAgz40F30AfR6InaKEn
	 PQa2adUKYpCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C67CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022959357.5514.1011241254102416738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f44c72536ab37f58fbe07cac4aab03e4f72c9b60d2e21791bee06d78577ddb
Date: Sun, 12 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760229593
