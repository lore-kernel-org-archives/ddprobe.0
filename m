Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AD137F001
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791343834; cv=none; b=ohIADyne4fb6/FlsD1fukmMUqCYYdzO06W/scbTZ1SOBUE3oQgPgSjd15dL64ppWHbtFDcmr9lVyTuDI1SdzXvggR9QTIA3LFyWTSNVhlLqtqcMVrV2TIij4NOcBTVp+Kf0gkiXJ06WdN1fwc+6cvyB3/JONKzcES40EAqM12gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791343834; c=relaxed/simple;
	bh=FLDbkzwXbbpnKWPElM1Xcf4Iqpzaep0rIqrpd6FkgkE=;
	h=To:Subject:From:Message-Id:Date; b=o+tmpsZanFhZuux4YPH+9ayYtuMIOs5BgeqWavksUMMYIRLlt+KM2lmkoqqmc7ZH+t/IsIA355yQarxs3e9maFVtQafRtd107Wsd9eqnoMZiKEy1PigHh0NYo4M3Z9grRoUxqSSPYnZZIcP1YzZ5hemBcPyeLKe3akRR5JaG+cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oA8AxJg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oA8AxJg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB51C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791343833;
	bh=FLDbkzwXbbpnKWPElM1Xcf4Iqpzaep0rIqrpd6FkgkE=;
	h=To:Subject:From:Date:From;
	b=oA8AxJg6VOPVDONlp9smIEUvQANSBtot7LiHggm3DTJ4nIby+m68eEHapHXvA7NkX
	 SytDNxG0AYyJY3xEynwB+hJEKDBMvZbtpmcTFFpvYUnDpu3DkQRh3z4RCfCCiTgbxO
	 Hd71RGOfCgEiw/k+S2+WLVNNBN1WqgknpHte4BfTSkESfDW6XNfuLaoaXkCfW/PPyG
	 r4/GImEHQDFyUowL2ebZ4gAkuRBAGBPouVRAg0nckNRZYLeHp/6g9qn4JAnr50p8Ws
	 qVQt+vKF6oRMmz8sdndBYMpMRCzecbrYYj14sMguR8yHCbDbeNise5JkWr1uDWzjTV
	 3Rn/04l0ot2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC245CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134383368.31966.4225010188445607714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abbb6d9117b1bcb56e85f2518aa5dc90a35922cfa43207157c56c23763775b2
Date: Wed, 07 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791343833
