Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B132D8367
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756586994; cv=none; b=pxd+u2Mqc/4FZHWTeeUyJSQ1kvtaoYN6cy/gRdA8PDHRyAeJvNLeVQprUxEXe/IYelcqsyzrcR7GYN6k6t5QZQJQJuYIKqSl1taICApZF7nBGPcuu3vNC3ahzYPjSE6uF6cHdCqBaqe7tI6nqHh4sV/u/N+t94MaKLzsrGYY2tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756586994; c=relaxed/simple;
	bh=u0LM4ybifjhFsvbeBpKywdk9s6D+O+tokIkpYE3ylHM=;
	h=To:Subject:From:Message-Id:Date; b=kH12m3mXcVgoRV7oGcjNXyRnrG9nhvBlvAA1qOSfJzBtw2Bp0PMGi+G+M2CtIFPM98YbuU5LyGb1ub5I3BDMQLPooorTkAd/1l3zh1wso4YxXtz0Yj1Cg5bnRUQaYZcZIOfhR0wn/DF+J+jrIk9yxLy916hoUShp6AgRYwShQAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glAi7CFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glAi7CFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4517C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756586993;
	bh=u0LM4ybifjhFsvbeBpKywdk9s6D+O+tokIkpYE3ylHM=;
	h=To:Subject:From:Date:From;
	b=glAi7CFoNXbyJSqiVAHMtoWZUxWz/+W5bs7egHhUSHfZelzYbkGtATmnnqGt7Ue0F
	 YtBDdi0uHyAnQIYZJx65eliM8faQQB9j1enp8IRTnMql5a6tWQdoRtBVsoItU5FS3e
	 ODBAs3qwjb3dgLSAiXg7sRFHm99sUDVh5gM6rIrgkFTF83FuYd6Leb/UQrwiQvHFg3
	 nJ4+Kj1SS+o+x190OJC4krFwgBDJmUJmPFrp3AAVNKuzyPSgoiL6DKg+Q8evXwrVyd
	 Am3AqAYUyiNBEr2BQGt7ZS3k/GZdrfJCa4/ZcLjPYdaP/panQyehuphp/FNf645dJ+
	 JSu10imcr6R+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D7CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658699358.29986.17480379071786736859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c12b084c4901f9788422c06f903506ca981276f3f2e45811139780eb65a45d1
Date: Sat, 30 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756586993
