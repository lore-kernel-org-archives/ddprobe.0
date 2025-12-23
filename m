Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4279F2DC357
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766532234; cv=none; b=h2+XsPF6qK0lEWG0rwGZusmp/s5MUdz0N5lXr7OMOGqodW288Ka4Jq3profM382TxgiKgXpZplNuwDZrIQGM2uuWGuEGDWZYQ/WNstUee0ep9pqm3uAX8eiPSiRTUYsrEl1Y//45BWCZSn1WsRgrOY7gpFmDXV64j331lNI7/6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766532234; c=relaxed/simple;
	bh=WpPMQMKwD5FJG1PrmKlXrOctdkTpHXl6+CXDxC2cc0s=;
	h=To:Subject:From:Message-Id:Date; b=M884V82yzpod4hNgeVh/GSn3uJbkjrpwcigHYuRn1AnyFev6AH9Wx4EjN9wno/Tvk8YRRayQcU5jIe6iaX35BXnD6wxqSJw/eJCAeqymop62QBOijz8Lif1MelI1CyRfNKw8s1J1N5SE8uiNRSmxvysQ5C9zmW7tCE78H1Ixhxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/FiWhLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/FiWhLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A181EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766532233;
	bh=WpPMQMKwD5FJG1PrmKlXrOctdkTpHXl6+CXDxC2cc0s=;
	h=To:Subject:From:Date:From;
	b=n/FiWhLA2tpMdW/cWx95TPwlg0K5fRd7guJmpdUsRoMKBsh9GuYglbxI+ZjeLwOXI
	 d5erupoUhqr57UfOzcDWDOwhVMgr0uOb9tFukDmoJa39qvhnoY9aroDzxiGNDr8Df9
	 9j81s1Sg4iDh9J0aT64pzaFa9DcoN0rerxcwFXFTvrEI2n2rX2lZ6FUCj2rS5jLlWi
	 cPkoKrcLm3Om2c2dnGsD1zS0wBEbd+aGmLyrLcIqvILMq4mAJ/s9vYInTUVSzhAy+k
	 14yM0RF2RReN+z2hDWdyuEs0GlEvT/IF7dHou/sKf5MePg5Axo/kSNEqy1iRqBBp5v
	 2sE/90N8Dpd2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD85E6FE51
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653223358.28871.14384146521440942551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c56217c4beb3f3bc64dd5103cbbdb3c5573bdd78b940bdbf83c3b77c42244b
Date: Tue, 23 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766532233
