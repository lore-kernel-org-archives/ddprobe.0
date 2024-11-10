Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B31222615
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731219354; cv=none; b=gRsOo9iGr/og//ToF1XkYCQ0hrYcyXEQ9zASzse8ROE9BRRt3stoDYAdm8g1Eh23jvvM5o0Xoo/eh4TOfMVikoqiLQQyYpvEwLC4H1S3Bdwnnv8D2dAtPXNnFVavGYd2jBppAhQh5qyQ4Kh/x6ax+7dRIm7HWEduls4ulcZi0pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731219354; c=relaxed/simple;
	bh=VkZtyM40RjHaaJsavzU+PeR1KvC8kirLeueRh8FaVaI=;
	h=To:Subject:From:Message-Id:Date; b=IGddmSdsGSzaOxZyAWq8PNy7T8qsqlaf6bZWd0bRabyqRk6OEYbhkFKpVACh9xb/1vY0cEcbukjlKodZJebIGhIfXJM4Uggts0KV44rXR00UfSCk43re6b7lO8oyWihtJDrsehjDiNYE08BUZwT6jgrnshqD7D8hPf8XOM83nW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ia29N3Mf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ia29N3Mf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B438DC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731219353;
	bh=VkZtyM40RjHaaJsavzU+PeR1KvC8kirLeueRh8FaVaI=;
	h=To:Subject:From:Date:From;
	b=ia29N3MfmZag4eZ6yoiflQyIdQXEHUZsYKu61MNmAz97IW9UymH94m0FOo6eiruKH
	 lId+LOQJglZMiqs86mCWUWOtvYrAjty0c5iMaz7umbzsiYbejiZMo2GkAw3t5MX3JO
	 Wi+F+og9jftCINoGxQyid5kC00/5AXH9Kz09Dfmvnn00f29ZeXVd+ICqZ0qafNXRD9
	 0hcCHrGXQsKGS5fMYsyn2/CTAFdpU6UhPnQJdBU99PfR+NK249eK1O7miIY1WDN0n1
	 DaWWPmt9X9N3sZ+V/am9oyRPlXzm0mRMCFTOloNLk/gv+ThCZdThSwgFTRx+s0jZJx
	 FLOrotXSNiepA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2727D5E39B
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173121935363.28160.4276846278917931345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90bdda7e45860188bd376733d1f2a49f75177e9f1a7b6da556c813ce63a6865
Date: Sun, 10 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731219353
