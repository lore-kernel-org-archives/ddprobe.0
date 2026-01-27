Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139C52E92B7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769555634; cv=none; b=d/aclarje0k3Wq40jdwV7AQGJZB0TUxRykA7eW0OsBtuhBqw3r9RyJ9ojh0V12+CRfp6PAJkxY/Rm9weMIT3i/qZNL1C67QYDNf5KS8TFxUgyZ5sleKrPv5Qw9P2guO7gH8WQgT4Raox+3wkP4jWWCSoKPpUJX/6YsBLSc0tDVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769555634; c=relaxed/simple;
	bh=p5ECdvxXrSdnpZWN+DYdiMm49EyypvLEfwhFXHuBrmU=;
	h=To:Subject:From:Message-Id:Date; b=un5iHWT1m+khj60ibff2VntkqGuVjm0RU2Qle9kZJTA9VAOaYe73sBkNWHu+vxR+CHaeGp6ag5zchKehfTfSl/ImOdgmWBQAdkGiwAFTTrG144qUUbNdPLa+llxK2Z5kP0yMQzaL/Bfv91uikQuFQTQN3rv/SbsAC8YKAlgnTT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQBHRdpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQBHRdpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3E4C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769555633;
	bh=p5ECdvxXrSdnpZWN+DYdiMm49EyypvLEfwhFXHuBrmU=;
	h=To:Subject:From:Date:From;
	b=VQBHRdpuHfLO75J0Jbn1weVZyUcQdfVvhqWizBKfarz/xpcLhnhAWLkOiRG2aX/XY
	 FYsPU3pQ7hbP6i5hhyPmVTQ91Amfu6KrxHAwnrIjvD7AhMzi6aQlpBE2Ss4O2AJrzn
	 zD8jBhUOqPtr1/uxy5PsnbXOYxZa0umazNN5EU38ie5ovV24ImMPcQWs7zsqhOMcJv
	 5Z92oI6c4NdkB4v88Sgd7QDE6GgD28axAMroNPbDu7NE8QtNEwRhIo+2IJZ15J/D6m
	 5gybS1YJ/3TL3wOrcDrKgcythUR78u7Y6474le5J3gLZn7LbMAIIFs0wFKPcvOtqNr
	 uqhOXkDTlr6PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990A2D2FEFA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955563359.28349.16638076673220474885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b8bd25dd0359b0c02bc8a5dd333a0bbdf25da1bc6a27f40d497c1a2e7071e1
Date: Tue, 27 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769555633
