Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583CB3BBFBC
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787739634; cv=none; b=YFLXwyRjP12/aKPTCFQ3l4Q3zJZDYS5FcpR+TVE5QbDT0LqDDrp/4buSWLKrGy+5DFdwDIum7RUue72CZRr63teMleYdNC8VWMT2+gIwTTUfAmxVEXb6sLDd7zj3/ovmj1SkrKWskFW8kA1VYfLHz/MvEMREa0wJ8wtzQKbmBKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787739634; c=relaxed/simple;
	bh=FKmHYl5QXZLBfvvWMv/Mt/KGtACTpPbuoI75SjUv3mg=;
	h=To:Subject:From:Message-Id:Date; b=YQNuZuTvPjlh/Xgb5dcPd3fO9FwSYCPjvvVIX+3WI/Vghyeqf71QFPmNkEe6a0rEuytw4QT4BzbWfkTzgBNv0oIuXMInga/67oaZi4WOTsnZGI5z6POgHzoa441Wqb7fLCh9/J4sSI4BrFfT0sLus6t4305rRj0BHdeq7cRspi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1t4drM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1t4drM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF19DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787739633;
	bh=FKmHYl5QXZLBfvvWMv/Mt/KGtACTpPbuoI75SjUv3mg=;
	h=To:Subject:From:Date:From;
	b=b1t4drM+XAkMZA4SEoNOwyHUe85ASvkUs3K6rAshG3M0GsSayzmqpQZnUiuMeIDwF
	 ZqOIi9DSFmom8q2NHnkHDy0g7/HY9gH2qIGiRyGo4ciB58MaD2uGqOQJMJ91Dnxk9V
	 GqbjZGCk3DEKLyX1x0AO3Ow/b/zdMDIttGK58rwCA4LEXmVtSWpQ3yNLpKJ3aTrUXq
	 FadvvOEdQtKdqB/A4nU1pEnAJwEMi1JZaJ79Ecp29G42ZOPsJNKRJr9qDNcxvkJzOD
	 3+gy/zX20d1bmZGoinoJ5zeKcXRzYh2JRvqRDte9fDHTVvkBYQy1CORBzY2FjSbUab
	 XE6wSZGqynn+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD199C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773963368.23789.6853075218770967049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59fccce3fe46508308a1e89286848d65044c3e15c1dbb6d0d3ac1df033464f0
Date: Wed, 26 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787739633
