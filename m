Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4241E13FD8C
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715848343; cv=none; b=R7H8vY5Aj8WX9DRaICogmw29B+I+ZlWt1uLjs3Mvtx0DlitGH69Xo/D8IUiEp+zrDtvjRmh4goPdMSqiJetvp2kyZtZK1dMN3ptYYH7fRs8aRsp07+QGJVTvlYYUTmBL+DtswLR8m4qxCr3qaXCt3axClfDNstOdHeQK5S6HOcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715848343; c=relaxed/simple;
	bh=SktnSH9W/L0KBwXdMsgUMES8umCXBH1DVsKyyZ+iGos=;
	h=To:Subject:From:Message-Id:Date; b=PuYhHYq2NP5ZGDAKtMYSQdoyoZRH9ysnAJ07e8iCoS5mfZTEqzkFIAUuxEWxQdTvjXiM1AhIuinLmtwEl/yz2yekEusZsjVPdtHrfkrfWlujxCPbVNVb7pihjc7DgL8vkUNyp1LLMHv+Rr/DONEk2TBC+LiyFNwURlhAd5hU7Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQ0vu1Z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQ0vu1Z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB36BC32781
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715848342;
	bh=SktnSH9W/L0KBwXdMsgUMES8umCXBH1DVsKyyZ+iGos=;
	h=To:Subject:From:Date:From;
	b=CQ0vu1Z7/fwEi3OArEN8s31kqE6DFNAqxAzKGUNYynNNWFlWS4NKzs8FEbdWAOMNK
	 uG/50Vw98bZIuzt4v334uZDegaBCBaoJ9pl6rMmvFHL2uxx8g4BEhdfgQRslJ2U53c
	 sjfK8fB9N1c7njHRqKFuy2rlTwxG+ZYFwFwhFuf9Bx6fwwODWr0g8FeqeroDbsR//v
	 kVGJ7exUnddEXAjGqI3a2kyuzslcbOHk2HGOuDJoOXAJEgtyeOTGjXN23Rcyd8nS5N
	 LbOZzRWgVY368MwLZiJO4NVQaGo6t0jC8h18Bmoi/X/9SHD4Km9KZ3bdZDpSMAM4Pg
	 J/uzCHTgBT81A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA291C25B79
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171584834275.11983.14035295945734303875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb7948965713023cebcde233dd42da4ef3873a5f31eb311c45225819326347f
Date: Thu, 16 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715848342
