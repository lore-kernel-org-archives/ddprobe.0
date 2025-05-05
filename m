Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A40274FF8
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746482994; cv=none; b=cbD9ST4/qGHOaOruOdrwMOWGwCXSJeW88cZXSKAoYKcPGfmQujbDnthv6DzXWbmmffT09c9p4vxs/qk5tw/+7p1dUeFNk+g0m4vGm445IyKxtTytlQ1W7lNA9AuDwtduw+/MmA+miouNyM6/dyxpUuBGoXTxP37+k3SFSEyWCJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746482994; c=relaxed/simple;
	bh=EjNPbOj71YS9SdHU9KJAAHXumZt07XnpJiTkIuDThGo=;
	h=To:Subject:From:Message-Id:Date; b=BlR6x1RvcTOUrnQEgm4gfHueWPjUVDWiZM4WXWzazWxWwgmZwhtdWtcMwu1G6e58J1Zlc+IFeCtozRwpk4XpaQ10z4uCQ/6ss8m/GXGkfgYAmOzHWoTooTvtCh64U0VCufYetzxTyTI3flwioIS7RCaM1nM+WQYKk8V1cjoh8lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6eCG6Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6eCG6Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4D5C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746482993;
	bh=EjNPbOj71YS9SdHU9KJAAHXumZt07XnpJiTkIuDThGo=;
	h=To:Subject:From:Date:From;
	b=g6eCG6BmIwhMtR3M5v9PYRzTfsIeTr975CkaKeroR1nnepc4mwqmRALEnhj2BaWiJ
	 A0OqH392AfOQzXd4Dyt+6MCu8ChaOhk017Mk9xHi9b6yhmbTbotfQ1mMxa8V0wEl7w
	 ON4z64US+TtCOYTchgeUFaUzD0AXt508HYuhTdNAm7lH3SJvZWdzL7kCDZgoJpPdYM
	 JFVKrPY6S4ViUdE6ViQ1twzxWYm06sdDb3FfhK82TpEW+5wzvwa6CiblIaS7cycn7N
	 xWsg2xhn2Hne/jS2JRWXfYxtHUiAYSHtRl/23WUSIzLeyYnGBfuV1qhEffyINpWQsa
	 I8WCMKLpno/dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4EEC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648299357.15725.8583946391615275866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3582d8479350a4c7f18dda3a6f1db22582c6bc4711374aa9f797b44fa9a9b9b0
Date: Mon, 05 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746482993
