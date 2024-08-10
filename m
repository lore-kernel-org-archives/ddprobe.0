Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D4C146D75
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723311954; cv=none; b=CIIyEBKre1lQ4L1fHDpr94ygBGUwYvkfgUxYcJVRG6ve+thIc1lvPvaBca11v87hLegRrkh4namKNY0shm7yF4+2y5atILS78i07znSA94MGk4nJQhLZgd1uiOcg1/E27s8Xgys+2LbI0O/5Vg8okaiqQ0gtF4h2mufA4zMvfrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723311954; c=relaxed/simple;
	bh=9D/bbp+KskYTyn2OonsmGsqUH4BbRKNO4q2H1D/qyE8=;
	h=To:Subject:From:Message-Id:Date; b=eq+Gc6uPues4cW3I55zNGNP9N+2NqeZRW9eWP9o25e0z15QqZ3O5Kr0I7d/D4Rm7ssDH0gMTfNDPBQdDCX+IA8xlrPAQmz5Jk6X06wRuTULAxq9XsRLTqo+vx7L3OJZd+1TSw/KcyD5+ErdIQ1wnw8KzjFvrGQuL528EdcD+1M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfydB8qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfydB8qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B82C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723311953;
	bh=9D/bbp+KskYTyn2OonsmGsqUH4BbRKNO4q2H1D/qyE8=;
	h=To:Subject:From:Date:From;
	b=FfydB8qdB2UuGmpTG4DGIE4PeKDHTlQhME4XDQux0wQRmFVgSI8nbg2BvgNpoq3XK
	 jiGG13QjjQT71L+6Pnhn1XIU9X6E8WOU/oIC5ZkMNmSdR/TRJ8icK7fn4xNclE5CqS
	 3bhZvDUuef+rBdzUIPhnCgfDQf2fsX+eQB/0q52ZeqrhxUXQD0CqVlld29ElpgIGJj
	 ff2LCzoukqA1xk2um8bYiEC0dSTJveN8DBduaAegKenunO2H1zRS4f95k4hRtUQ+Gs
	 PLm3vS4I2kDn+cQc95zmBTqMxnOS9BNyel9RgKIUYnA8cn6EdkLG171BQ3lldxqC2Y
	 ndkwvJ1TpRp3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C08C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172331195359.6294.2313775287545318232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b47d8e03ae0cf580fd0b4d8106f85e4d7681ba0ba35057820c990320886f2b3
Date: Sat, 10 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723311953
