Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AD72FB6
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714959743; cv=none; b=NZZn7oXuL8aJRPk4JgrF/UQrMNw7JIM2Oij9gKfyBuJGJ8YvoyBxxx/VPnL7TdWDmp0zPrCaPkmiyRKbo3wfD6YN06osfzp92K40vdNqAd5QQdGIEa2bRznysihB4Np8hc1mRl+5fTxevKBKgd5pYzusOchSFjMIhYDTYJv7IN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714959743; c=relaxed/simple;
	bh=gB+e3rTtcjIs4yD4Nl+m0bW63XOaHir5ZWpIlrRusYw=;
	h=To:Subject:From:Message-Id:Date; b=hUzv8smSl+7WcZ1JPrShW7/6qGQCER/kqSt0d16PWUtHXr6dx0knbQVSYCZhsgtovHsdUiEjTc7o7vXPeyWzZmiyFDYZ1E3UccTHyfzJ/hy9GkrcmgUEItwxE6dC8ZW3g9YZjB96jHfwbjC9JAhFQV0HvVWlPQk63LTbDF8186U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQjtcSQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQjtcSQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3CFC113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714959742;
	bh=gB+e3rTtcjIs4yD4Nl+m0bW63XOaHir5ZWpIlrRusYw=;
	h=To:Subject:From:Date:From;
	b=jQjtcSQuG3n3UY+0u3bpk4wli/qsdXAls3Nmgzi4IgywZl1lw132w67jsvXwHQ/0c
	 QnUYltSUmuIyKnRnasNRYV4QywbionW8/Bpdk88fUinwhz5koxcAt+DR50Qz6J+rx6
	 fQyPx0gdCfI/JuU4AZR0vaa0l3J+fcZrVbiiPcARWRLvwb20PWQWPRWV4GmG88Bqov
	 +XC+XwoE1kvKyP883xgFkcLv2ZTUCHf8THbulymrvQa7S5KbQpOL3d54OrPjD6Kh49
	 u4aSZb2qKmUE75SmWpeS2Gyoh9hP5DbvXvnjZfZn74P9Um79DXWdNI/i0sqAP0qRSi
	 LHi4KoG6J8o7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C400DC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495974276.9127.973758339491974544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd2b8692c9547e0cc28a9f0f8f57a4ec68cc285d34cdab7cb2179cec8fdfe52
Date: Mon, 06 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714959742
