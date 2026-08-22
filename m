Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481853E49C5
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787411434; cv=none; b=PKVaA10POIsatyFfcRZhgN34s/qRIfKURnoj2KSoNRkoMRnqCOVe1GqocIBswvfQEaFwrHE/4aIfgJFip+0pLWBFbsiUm6DxZH4OYqhs7jGT5MSTH+6Tg0F0wK5UUaTuJYQkuxiRbAANAPOX6aSRpxKnZMqZ7iBmmLquV0xrhSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787411434; c=relaxed/simple;
	bh=NxFdZ0cB2RBriBQb1kI3JkQFf8seVXTvU8t2pFapuQw=;
	h=To:Subject:From:Message-Id:Date; b=mFemfiJGhXw4e30FXGWcoWPeVGwcoQ9RAePgEtZc5MiaoTbRnRBy2RZRp4E7Vfz5oFgkGkjaDGbbd91mc2Hvd+ciNx6xOQfdkoIUKt64LNJ5wdHmwb1Wm0tyckezG+z3uHz1gQywhuUGLAgBG6mDWxH12J9J4b9oDhH6snaFMCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0WiQTNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0WiQTNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C0DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787411433;
	bh=NxFdZ0cB2RBriBQb1kI3JkQFf8seVXTvU8t2pFapuQw=;
	h=To:Subject:From:Date:From;
	b=g0WiQTNW6JXFAEuH3UL8s/5h4f0nMfgRYwDLOxXu0w2D5Ed8oxH3We6QAJE+Qfssw
	 R/q/tyf/xPAhdZti7+vTzJ/qrPp+NUQTLqx27VNOnwSmQ0xg+wHZ9Nv9s7iE/DKiJE
	 Obs0MO5zoZgbG25fceQ1bbIo40mLfaKEuY4iEwbOuKy7MB3fmylJd50zd8TGVgyXbU
	 h+L50bNHWsBZGFrEETjfvlc0/u02cc9F+1ZlqsVJ+3Lv4Ur79J/HSnb7D1+ds4dGXb
	 57DkWqbSHjH4a/OQMNFGAojdsJw9XzFH6Uo6WEtss1TFitaeSXvb68D7h12kGGAfLG
	 cehizG4nohaUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF49C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741143369.6734.12142925256769688502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d9cfa955c14e5b350bcc0c527e15cc455d9df2b81f139c075deef273251842
Date: Sat, 22 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787411433
