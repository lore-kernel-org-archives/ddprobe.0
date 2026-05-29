Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4455233E36A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780085554; cv=none; b=cbmNVfIF4bEV+pJ8j4yV1fgVy07+uWYGGyQRjnbnDm8lu8cgRY3aU6bbGf+IMt9VDYDEx19w+JIMX051Ftty3yfQubFm/vkp4bYiqXZcvWmCJfVuVJooRrAIxLgarhvrj6I/mhsoiMheJNhsXi7NkXpLsi4biynetbqc5udKcM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780085554; c=relaxed/simple;
	bh=KWepuypb/YOKJ62pFg7ZfAYa3CDlP7Xvy4ZU3DBj2Dc=;
	h=To:Subject:From:Message-Id:Date; b=UJ99SIFUBsTDXEPltltRU7M1FqMK/zByBFjN0ZsGa8OnEPwCLlwt4DfThJt/YgwCaSZ+gyMoiz9Y1JmwZB+a8ri3f8L66wfH0eVz54t+cUJq8/ZHJFxMX4shSFIoTBVn974r4RD2c5jGSlC/UdwLa910qU353imswKl+J6Sd2W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaK5+TXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaK5+TXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCE2C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780085553;
	bh=KWepuypb/YOKJ62pFg7ZfAYa3CDlP7Xvy4ZU3DBj2Dc=;
	h=To:Subject:From:Date:From;
	b=VaK5+TXf78YPhsMNDmto7gfd6S7JqPxnaOxmSRsqhAAhHeojMRYjrnyNVrr0wQmig
	 qq1UE+fQKvRdjK+SOg1H2eSvV1F0tDZVPO9J2ubb4pNnn+tgDqhXDDyvLTCk/onoDp
	 j6jpOA8+Bhh74Q1zmN2C0HRK9dM6L/hvuTDgMUN28wS2naHMGUX755pU09rBI/CShA
	 no02nVT+F+3ucCFINgVzsX55N8pSxDgkkyknW7nPTecZUWe9fYycS3lPs32QiAorfI
	 uewaQd2dOgXP/sCDx3JkZrJgbkn4KDHD0/Zj7QMB3IBmgvlXANy34SZm2AOXha9uvK
	 rD5Mf9xD8qyJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD863CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008555370.2696.2633682669978727479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8708e582d48194fbc39324399fea0dcad6fbd7c457241e28e379358f3633a9e
Date: Fri, 29 May 2026 20:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780085553
