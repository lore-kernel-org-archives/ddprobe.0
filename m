Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170AF2C234A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768683834; cv=none; b=QWxYGf8WCpvIsc76i2LHRb96IfhtdXPMAKrvVUKxHqzR+v6jhGQT38KaDD7JmkuyM0gUbaP+nLvJG+on58bF1aHC7E2p2oTZvZodt7lKnyfxOi3/cF1lRtmQvd1euX+oMaomBLzhVROC/m0woLF52s0QCzI9HXRLLLyO8DP+APc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768683834; c=relaxed/simple;
	bh=FN6uHuC7brWzgmPGhauZwMWl7q9S9HRFJnpbSTaanAM=;
	h=To:Subject:From:Message-Id:Date; b=IL6TJxdbLxFZQAdQn8pScXpmxtS5iw1umj00fGyVkLEpTLrDF78J183Rsq01bBPjJLGvEQjBuuw6fCgJZ9A7+46YWf0NvZd1SeDNEK+SBCSjUrafh8YiqZXOoWerCBpX4PTgEvnIcLPRfwtZiuwqTxpLgAc0e3pYS+LGkJ4Cq5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jT2l6Hc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT2l6Hc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0244C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768683833;
	bh=FN6uHuC7brWzgmPGhauZwMWl7q9S9HRFJnpbSTaanAM=;
	h=To:Subject:From:Date:From;
	b=jT2l6Hc89U8CUeToXlkBoJEFThZMCUggDB9/XS9wiAA8FdwbW2Ro8LRjFmfwmxL8U
	 aKpT6FUGAWka/Flx1hRbk3wyC8BTG24J1bNT10vp0yl03TsqLc2fv+IMzv82tfzzLu
	 VypMjFpChri6/oBlaTSl6WYojNE8f117125srpZeuzDV5v728SGDOpo2v0GSZtYq1P
	 J+nxYVu7MlmRiLaobjNammeHwXmYs/Cdng18vVi6lGiT7d0klqVPM/BuGuXvqvy+OL
	 fJUSBPL/UnFwB7UVuM9o+9whJCplsLjjkT57kA1MjSfFDyoNXBX8D5I1jccxF4uofX
	 jjow38b3xXXmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F356C98338
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868383357.16101.5233570323028089028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21afc8793042436c163cdbc8de243bdb0c1be534bec548c9ebe08fba3b46d7dd
Date: Sat, 17 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768683833
