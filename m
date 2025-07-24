Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5262D838C
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753349394; cv=none; b=BrWzwnLCaeC3pgVEUfG1ap80+FIMdZaf8QkdDPT+FZ8B1psCJRp9kMtfoiKmY/NbnSTMudqkPahSbbJgBw6JCROLbNhY7qNZxP7WAGo2BzgYwHqz+tJuHpK88mpJDfXmnwyIauIpHOk7kH92mT4w3b/K2NLH4aLmufB6Qs0Ed1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753349394; c=relaxed/simple;
	bh=PYI2/j0nKuAwD7sqOqOKJ27UfTkSkYn5N5sOf5Hs1WQ=;
	h=To:Subject:From:Message-Id:Date; b=Kz9L2q41i7nRmDQNXmRUrJxS8+BLr0G1sMAsCIo65+ZNpZUFnU/2sCdtIGirQaBQnWKBTuOQaeqG9xeuXnHm5OzvSGPbZBMD2/3VPyLNuyHn+4fIs9xuqK074XBJS+AGAHr5qCXpAXoO0emqajZhm+qpGIwWX4HRswpq8AXbW70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDBLZV4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDBLZV4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06C2C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753349393;
	bh=PYI2/j0nKuAwD7sqOqOKJ27UfTkSkYn5N5sOf5Hs1WQ=;
	h=To:Subject:From:Date:From;
	b=fDBLZV4aPcfyLZPZRry2MNb0lX7Z9xEhrmgGpmp9wpXOcgyMTocd3RvUQNkjpQL8L
	 0fUy5qvW4B9B8hK1MuC3D/qSGYezraNtoD7ZnqUK1XT+hfyz9Rt6TV/wN2CPA/L4xw
	 peED08WKDgzje4tTpb1MsjdKiP0omUGeZtAzph0QMsuMYFM0MzmXL8fFBhqpsM/ZNv
	 FJYdkwRpzg0x7gyfoUtkUdX24y4ndyoE2M5LT+DnLnDoavgB2yz1GxBhhoQsWAGNrN
	 +x/KUnhclwQ7hL25TPg40KLaN5pVkHTt3X8QZumFbpB2OHrdyhNgky/5+vl1e3dLlv
	 pR1xsE7TNa5fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166FC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334939358.24689.5363896183057618763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b72ef00ee683a7c802cf162ec2f4345b0c3f6102a36848c1bf2d2a3db393b5
Date: Thu, 24 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753349393
