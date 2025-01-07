Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4762D1F4E22
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736270154; cv=none; b=CHFUOrbTWR8Xuw8SbyHppj1CkhQ83C4OGREdZlNaU2S3Jan4OnPNeYXp3SMsTEE6cFJd0Uvmur5YHJujk9GHMpWM18XXg1EP+LQNfjoctOtPIoe/CWk7h1t6WMthMHokN9x6DNoj+HpYY6YnlshJVMWXMrR/LWbr/REO4SAppLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736270154; c=relaxed/simple;
	bh=B87xfZJ/iot2tfNO5tDKB8FVS7lS644cipzjI806t+A=;
	h=To:Subject:From:Message-Id:Date; b=RVzl9NMl1nR87cHX1suAdzWw3W0GvNCi4KuB1rzsL7yt5KRVAMo7lmSx98pu2+wqJU4gJdUlve//C3j7nCP+FiKxGPAA/66+frYdfoz8uDbjHT/Q9+D5Rns6RKdXtxaQMcn9ADNswMHtsLbXuvnTr7tBafdvySjFkf+4l1mKXfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6e+2rhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6e+2rhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5A3C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736270153;
	bh=B87xfZJ/iot2tfNO5tDKB8FVS7lS644cipzjI806t+A=;
	h=To:Subject:From:Date:From;
	b=a6e+2rhw2w8zzV0tYFhOWLRGstCkWHO6gMccCPUQYDQx3MtItWVKzLxMF9MTqtoa8
	 rrRbbahvCqaNf1u7Vv3RaAkNUIzXyYLIsaknm44XKWpcBU8zJC6UwAPchijqQilyRl
	 tPDrUndVumPUxEoB9+/leeSX+TCtvUry3dOWiLSqgCTQ5QZn3fLlclLI7WPZG0HYdq
	 xHWbJSj1W4A1tNcGLz3mitWzda6d3lsBnI2CaCL9ONIeUvPJzGr4L3KA/6Jh7Sb4db
	 IruAIxhXaFh5LuvmVjX/4S1jL0VKmQv62IqhX1SJnZGyBgMwYYSrvugbOkXEwpfEhe
	 hm1IwonRCzW+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E5DE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627015361.18383.13189377903260927418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93854065308af4e41de6588f328c3232435210ab2b9aa16bd942f12dd3b8541
Date: Tue, 07 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736270153
