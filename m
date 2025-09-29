Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D6717736
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759106994; cv=none; b=SNs0ShnykACfweG0Dez51mJpmFK2CBCwc/TaJn1UCX/Llgz7tF9mYBs72HEtnqKEP28DCBY9ktHp7JEd3lUOQd1sM/RKy915cwfFXnZTwIoKX7/WwerIh2T2tZcGWQqZxsvepeiLrPvg2YL8aNu5m5UFL4sSdvx5uzEAGPq/Pio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759106994; c=relaxed/simple;
	bh=S1XmvQ0KgNs9RLo4xGHWoRNZVSYjE1vJKLLo7JEHMCI=;
	h=To:Subject:From:Message-Id:Date; b=G7zKLZ4yW2BI48DjBJ+mIVQVP1BvhpmXJ8XUvYDe7Pb6Fdjodh62t4KWHYmoHGxI+/P1cJEJph2XqOALzGmf4YcMFGTo/J4EvSdTdYLmlUZiIF4BKLn7PS3n+Qe4M507vA4Dj46Z4+bM0NtCjryQeBBkNgCZvup+lq8yBLNY+Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0Z/Ecz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0Z/Ecz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A194CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759106993;
	bh=S1XmvQ0KgNs9RLo4xGHWoRNZVSYjE1vJKLLo7JEHMCI=;
	h=To:Subject:From:Date:From;
	b=Y0Z/Ecz1SmoZHzrV256vzYyJGMN01nDDpUDkwsydIrxMiH2D3as1M5eEDEhmX1hgV
	 Xj2NbWa8LaZAUC3yrgdFwa62BwLzxzklHTbrHY0l0Fy230R80yKo5cTThu45MW456h
	 s89szv9rMH5AQTXlDJNzOvEjFjfhnDzYcHEH+LU2/PZ7kxgPvwOGUCG2dZ2oq+c9lx
	 +jiiPpVaurNCcevWTnMxQCrsHa7bXu21uojjJ32UcRAVg/vCiMnCeCJ7o1Oen+Fs+B
	 gaN1AsuactYB2MBK2UsJLLiJHsHnvfTtHoDEvbHIlDmu4PHjoxaqYwkT1ay4yFEcmo
	 tyClyX1+MVvkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ADCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910699357.23437.13543716314003299229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0857e8327a74c246792ad69135df9b9ca275b0a3f51295a05c289ecdf67263a4
Date: Mon, 29 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759106993
