Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C5323E35F
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776553054; cv=none; b=cHeAmhdhODXVtsFUK0TwMmOeRfykVVhbJ1dzuFNgP1siTNmNdwsl2JakepbQvOoiMBoLfQby8A36HZNwkEm9tN7UMw5hF86InA1hxmNToSb9fQnBkxTRTqVq4jO12CxFVGspTHCFaXmv5BqpIQ4g2O591uHLAv6rNcibIFGRwGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776553054; c=relaxed/simple;
	bh=HoeUuq/hIWJ5/NDaGSqvSgWzMP+ntkxWDn2B2OfksFQ=;
	h=To:Subject:From:Message-Id:Date; b=uw6nXxAmxv4rb/4knprYQC6jSYzyvTvWiWZUiCTrC6Z0e1ScGWK6as+s6gK/36M6/MVdipzMpT/jgKPx097Q/y1O6U6meQmdTg5DjEwbsx1Wt9e4w279cjaxP3Wfwvh4plBu5GMp3sI9ynjiZWmSS+LYcRYixOYust6Ar7gL23Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OohkMe3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OohkMe3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1614C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776553053;
	bh=HoeUuq/hIWJ5/NDaGSqvSgWzMP+ntkxWDn2B2OfksFQ=;
	h=To:Subject:From:Date:From;
	b=OohkMe3c1r3tz/JlBNc2PLQCDoMwmUhGpumWDZ/MjDlqnFU1y+DSESJaHIoYHbl4a
	 oQerh117bDbYeZdKGMUtvt/ni2lblPxWzukPQFfRGSGiqZPDZ92fchehDcWhVg0KL3
	 wdqZfmcP/adb7iNzx95yLifcFURcGz7jYmBxmIh/VtbNMTZ9Z4+HnKG1ecrjVFPQBl
	 IfK00TduKRG6lrHCaKZwL6divAMmlO9/Dth996Tg8zctXaesw0p6wnVO24xlmW5T93
	 u5tTmlLwotcHWL1kU0G/bD0cvcmL+Dcq4qV2DKjsgPj6wuSnzakzPnsexlA0C4K05E
	 cp8TOIqS2pZJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6ECF99C9B
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655305368.22822.15741354718269200767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cf3057c690823fc2910df9e4782cb6dace564a63080fb0f3cf77322bb14df2
Date: Sat, 18 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776553053
