Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFB61C548A
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733516154; cv=none; b=ck6oeIIUDG/1k+1swbTQKLqtoSCAdmzdwOB7IScutjANV4wW9HffnGOjKmmySXPYLeSyx1PdrKUlqZ696u1dEyw3vyw0ScuA6gNUSZ0sYLdXOoXkaJgIILMHAJbiIdlYrj5ZPEw5Ls6zA+1IpRxgt91OIOlaPVR9JLLiaAbi6F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733516154; c=relaxed/simple;
	bh=T7CV8evshZi8yeSiAkfGE63mb3OVacgylRgRq/5XmA4=;
	h=To:Subject:From:Message-Id:Date; b=RpCUDAS3m8fi5k6K0en6sc5x/272dwmJV0iwEaRRfI9Ir7MqBo/4myhJFldOgVaXSigaod6DI5TePtZvDORW3h3kd8DbggwwK4+xfImh8A7ocwHnjBL9H8U0xqJhoAd2cPyNNHwXSGS6FQNpnsRR+S8I13Hg+voVxm4Piplg5wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXViwl1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXViwl1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E77C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733516153;
	bh=T7CV8evshZi8yeSiAkfGE63mb3OVacgylRgRq/5XmA4=;
	h=To:Subject:From:Date:From;
	b=kXViwl1F2S+lp3NHPqhi/vqxrd/DKYzmx+YZ/vrbSEjp0Q3P1uY3U9ckEw3N9KpJi
	 XNGozoB1qu3CEsTx6Lm2W7ZpJV2e6Doh4dd6MUFZR5VU5YxKs10/awBBXQCMGi2rIV
	 I9/F7EXTwwc8aPvduTdPz/GR0BM+mxsm5GphP6hpcLaZ5ykF+O3RULD1ATSK47sd5t
	 jzEgdLavnP/2p3pulko76PPt3h7dsGMvZRoxP48yetJrEgHIs63hqjpPgf1PnKudPp
	 F2wlDgQNQSvTGnl5lrenhRo5rJ4UpShO23zdUC6uLztMWICDsj+y6ySTxh18MCK9G3
	 3ClybCljyVpEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D47E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351615360.18415.6193321009328233637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420b79f61be0f1661a7814f32535262374e35cfc7f73b661992b36de496fa0f7
Date: Fri, 06 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733516153
