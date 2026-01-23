Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D007313E34
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769166835; cv=none; b=XWvx5Hj9LoEYUyKgWl9xq0fbxms+jTYnhn0lu2cLy00wdkA6PXACmo+gR97rWz73X8wCPsiYettBEsbwtXVPF2+xXnAUNsokdhqn3unHE0qknFw5oObzMCKWT8W4FfDNeRMGtb5Hkm5Dk5DiHP2KGVM6OVsApfAm6xbvto6XaQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769166835; c=relaxed/simple;
	bh=9aY+AJcqRYMRRcY1Rul/UwF1417jE56YrtyZOUXCx0c=;
	h=To:Subject:From:Message-Id:Date; b=szfs6N3N2h6rbvj2/fwaiBzUfOAUwrpL+vMPKvdQrSAfzbMi2zz64ZGdTB2uyNWakJWyj7QsQIclygN6VIAnAafhMsdSNx6HZdbyurfSBFua9Z8uZvOUiGl73jimdxqDgJhryP8TufsKtCxbkwcDx+pf0ySZhXtZMKpyKslVxnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5m1QYKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5m1QYKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA141C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769166833;
	bh=9aY+AJcqRYMRRcY1Rul/UwF1417jE56YrtyZOUXCx0c=;
	h=To:Subject:From:Date:From;
	b=C5m1QYKLIyejig69GFi3lOGxhOdnYUi9PV+IN0mGhWId16ttIjfxQ1scEQTcAmgHD
	 kKia3Z34nepUUUs3yiuG9gw9Op7l6857CoeBl1pPtv3Hv6pzsKXhkyUcy03eGT0yn9
	 mAdnGPQwXvjp9AVFgTKZ1TrTWDEuUiseKxS0VSJyJ2n/BP/67wQgxbtQNUpfAPu6O+
	 o5gmlVyQICrEAS73W5F9ZajHiko3zHd0SHgU7TqM4dyNrvdkwepwmHIJ/lPYi67NP2
	 8R3m9TYPD4IfTSB0FLaU1/bNsV3UhpDcy2GN8Aone6KZLVYaTHEh0jwTgcjeMLDDJ2
	 8xikCSxBcd5nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9434BD72375
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916683359.18387.18242223850387034571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61c351ddbac6a8c2b7c649cd44f4c361136b2bd06cb8a73034c1544cf9021ff
Date: Fri, 23 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769166833
