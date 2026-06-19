Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53850281525
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781843794; cv=none; b=Nhv6gBEZ+nBcrYKrWA4kqX0YxI4EIUy5dsBj/2bbRt+LnFR1rZPHC5bm6xLme9QAHvlX3iEX9Oz8GcL0h4ciXAlNifj3METyfgYFFXaY9OctQ4LCB1zSO1l9lu5qXbOgbleQwr/8fUn6VUq2d+HCrzkLuHSxSL86rActKfg11oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781843794; c=relaxed/simple;
	bh=8s56U1LAUF2Rg3XX4nGAw53TiwAy59n08EFwBohS2Zk=;
	h=To:Subject:From:Message-Id:Date; b=kFQ6CIj/o/zkEJ3rH+12ggnT1CxwNHdGtb7BpboxA5X/+udLc/83iNYkH6T/UCta05S2aRKfq0lb27dfcWvWFW6BYYfmIwAQzjRsSPM2+wB+XOLS5oU7WgprQgMZfq8o3mVPNXLh3MTUOWfKtHyyUJAvDPOwM9JFB6lkkFXqQT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiZ9Iv8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiZ9Iv8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8090C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781843793;
	bh=8s56U1LAUF2Rg3XX4nGAw53TiwAy59n08EFwBohS2Zk=;
	h=To:Subject:From:Date:From;
	b=jiZ9Iv8KHC4VfdQu1LGmDrGrG+RnD/v8vi+amlGcTcvyCImvDwhXgU92G/2Nuk854
	 aeImxIJwPsq8BsIa0BMPxAwFTN96O/Z1IK8Tv0GXqkH4/Mcxqrs4AnmdFmSqqBoraZ
	 kLw9JZ1fjBbXrPFMVI+g56cycApf9RUnONwyDNaLlT6xuPnouERipEnfd0RwCOmQIH
	 lFx8U+XHojVi3iw/Ctvu/VnhvI1KfvtoOAZ8LfOMQxo3VrYr5PF2oZT1sbMDUgdqGd
	 uyKaRCLK8yKDv+ZM8PjrOos1c0/Nv8Dqa39WJQHbygazS0l9fds6PUFOYyXAL5D8Or
	 pMcP0GYOstrxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75CCCD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184379372.9877.8468532165145333586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce80a7ecc106b0ea15a094d29c30dc6e874d8a2654a096b5118f5f2211043cb
Date: Fri, 19 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781843793
