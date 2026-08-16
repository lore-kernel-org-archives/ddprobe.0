Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE9D3C13F1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786872635; cv=none; b=AkL+uRt94ljD1BMp4zuBdelR49YiSnkGav8/GuArjrCrJfzzFsm5GskvGoBLCDh7qN5lXgda6CW6PFPz+CqPS8NfDmjooK9GbwgJn3gEsiMp5OrBH/CRi8t09CLePULKx/3I7ZV8thbuvlWLH4LK24IdvVor2z3eB3OFnVnOvWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786872635; c=relaxed/simple;
	bh=rKKXykGP7ktq/030p3KhNOXCOkYvb73DekR2x4eliKA=;
	h=To:Subject:From:Message-Id:Date; b=n+XRmKJU/yBV2dGxp/IdMtpKh/6aRFS0nHEblfIpZv77E9yiRP5izOtRAjfNj2m5SsAfX0MoQQSdMn908gpLZ8Y+RfpLP3/aLdxsjKAL6sLcTd0Xidm72gPciHLfv2GeMm8HpTKm3Iik9Y1HRN2PvQuVuZrO7c8WBvUdD//mEJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvnQ4vWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvnQ4vWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE29DC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786872633;
	bh=rKKXykGP7ktq/030p3KhNOXCOkYvb73DekR2x4eliKA=;
	h=To:Subject:From:Date:From;
	b=nvnQ4vWdaTfm2m8YvL/VRa95/ojfaBGOby0hD4ophBAFWxScUIiPz56IU3affj/bY
	 cRrhOStTHCOTnD74MBuFEJq1c2/ed1bL7+Mdg3rZcsF79XKDATaT0GEqrpvx9YXaTz
	 nz6tkigefu17HxuOPaPdpp072Q2FZ3rRFxzINcIDiLHKqqJwqnbjWqPS6Vcu+B7ptX
	 QShcKGzUObsQVN5q5DQ6A1AoGimFaeFW/ydSKZd0aKlbDS8nT6abJ6zxkj3yv0butd
	 aaPT9XOquYDidjSz1drXCXuGHtiYIfR4K4hXesB152Riyu8ojPiEYmbK+ay1NTG5DH
	 FxaxFsKaIkBcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF57C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687263369.22226.16990229791931467983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49efd929fe9fc0fe310985dd316b934d016bd351231437f193be9c95f569f000
Date: Sun, 16 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786872633
