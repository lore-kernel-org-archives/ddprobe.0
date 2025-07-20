Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD63221720
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753041594; cv=none; b=TdYYqvMSOvE3sr9Xf/uZf8W944vSFURofgecIm9YmqxgCks6+UYn+9Ud1tG613kpH0yzOF7xaOIra4J0NBQh75oAh/9SgJR8Bs5EkXkE2Ihs6QGR/MoJEQUqa9vMpez9jUpRylHE92+CaOBgDvB8oZsdLEgPbzNI93pGgRZW82Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753041594; c=relaxed/simple;
	bh=bFwfi1q7bM9j/UBMp4ozpG+iB3cFxwLuLXvZiM8tWZs=;
	h=To:Subject:From:Message-Id:Date; b=ek/HbgwosiFWD3fFv3vAaPa3RWWgtPoOXp4Apwkhr3FAN6+QBYcNbOi9UepcGk1OysR9PFR4B0BvwVzT66u2Afe0/xHMI+l4gb2X/+VC6kwMGTP/uPFxoewccMIqgWtyMv1cs5huFlhei8tSXCgjxzrLhw84ullB/uv35GJWNlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejhf34Vp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejhf34Vp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE9C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753041593;
	bh=bFwfi1q7bM9j/UBMp4ozpG+iB3cFxwLuLXvZiM8tWZs=;
	h=To:Subject:From:Date:From;
	b=ejhf34VpqyZqmaTQqdRoi9y9FzLV17iy2zVHZncasZSW1GnSVCeQMSQTNLHfZZ4yi
	 pohRIK/7D1Ugpb+mSXSvjjCR5CLzym9KY6pGoNowv5Xo3ll226LyaCuv/AttqsIbvs
	 8MyaRU38a6VP9WVjpWiQ5RE88hpg3hnWkMDO3igLuBEi9RFMVBUA3HW4lX9Gd6mFbm
	 u1o+FCkJQHS8sQZBJPzvkb4P+RPQ0vPCLhHHugLXiP7MGa3SkBUyIXd5L2StlLQiJl
	 GBRYKGQjhNMAnv7QJwXgpo73pKNbv80jK5/qO+084WtVsTl80b4mHm9MSb79HxtRLr
	 dCASimi8rTmFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035BC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304159358.25007.3296825560944248859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b47adba3abe5d6e7fdd70dd6dc45b4812a4ada0a405ee8cb82554c1b3ba862
Date: Sun, 20 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753041593
