Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A88F2701C4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769316234; cv=none; b=SMjP/ZPplSpVta2mR0w2ak36AoOhP5gogXGby/u4g/+2kkWO8Ad6DI7RJnbMF8alCOTVi77YDHLVqCfrwoKQOYYBNygZO/xef6mCs4GjrwqL5wl63vEmq7+ycQpbF+LkoLAHe8RZOgCqtkVT/8tl6C9JcLoFpV+ZUCJTh/fiZck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769316234; c=relaxed/simple;
	bh=/BcOhqXpvwkaA7rsNBrVANVTVAqtInfWEQmnXuH6Z9U=;
	h=To:Subject:From:Message-Id:Date; b=CpC5rQf5fvIOG4/ZFLGRdNehlL1NlssSixH/nOSRSIXA/12BrKoEFJ2P0CLlZuTieBySqAf+S/zKeEUhp83w2P9TWj9DbEnu7xAQizigQfyBB82KWtEKVzt9YzQMCMw2OGEp2xCLOBPbpvIOoaBqs/FTXWt0LS6d3mWxk6Axy9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbwpBYOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbwpBYOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EA3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769316233;
	bh=/BcOhqXpvwkaA7rsNBrVANVTVAqtInfWEQmnXuH6Z9U=;
	h=To:Subject:From:Date:From;
	b=PbwpBYOt5H0Oj9Y4UR8FX35LXYqw1zvQV2HV50gFgp5/wNU7oZ7FEGIsRjiNvwYip
	 6byPXpEM+f6ykWsS5YfzZINIKdHO/de30hW/4pfFsAj2P4xiclHLfdD2FEbg3EMW1F
	 ZutaAo4WAMK0IgDpIvgEDWCMkP5/m6jgFDqIvDRoEwCnQM8Xj+ImqRb4mEyZzaDxfo
	 /+Eh/MuEr9wGYDNpgepP3wHiM7DCwc6WI8YYNK5hntpJAa6+GjPTqd6eN+xhuQuFxe
	 E/t7aoXebPR2BH5gDFDJQp3YlX6J6iUAViyie8wzG/SqQdAgkt4iWDq6iaPAK2hLE4
	 7M9lHpFGqoprg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F9E63C85
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931623357.30430.14524268590843726831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9235219463e3d4cd5f2a9fb4716815f061d0708849359ed01d1fb73ee6b456fb
Date: Sun, 25 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769316233
