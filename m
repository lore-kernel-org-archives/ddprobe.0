Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EA22F290B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759910994; cv=none; b=rZR/hXV6NiFZHAssIBmjt/jFb3s0ejzjVBDIAuICVjaEtswbTrBP7rzQo7XRtmybf/e4AhNO5t6DsnJcTpV2OyrD5EeKN8N4iMUIteLqXA1e3aSPBzU6W2PcqFE6u8YfbVdpO+jjqGacKBJT9EfJiB/wHL+dyjMFfSsO4o2xNSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759910994; c=relaxed/simple;
	bh=0hJVMC1XoD6bPWaJXhgCtzPch108B1Blr3EOvCgfTz8=;
	h=To:Subject:From:Message-Id:Date; b=FSr93KmHQj+oFGmFAxUa5j2NS08F9ayi+m31SntUZvEBjTy3IhCUJLO/asIYEf73dDa4fQUSxiOeDZY1d40hfwI8k46fZ4zDcRPsS0fHqJlaau540EWUkfPHN5fFXwCOro90uKatIp4eM9mlRatEbuEk/2HyMZHC/E7uQ9IAJKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mslvmvh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mslvmvh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A631FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759910993;
	bh=0hJVMC1XoD6bPWaJXhgCtzPch108B1Blr3EOvCgfTz8=;
	h=To:Subject:From:Date:From;
	b=Mslvmvh6BmhhbZyivlg5b/b3Ss3SlvZxeeJU+RzoWvRJ0g23LP03C+KcVWGgiCGNm
	 enNJLY8fTmq6gwQqsmrCqyOHYLPAUFIwot/8GVpa/XhgPUsVL1mVYLCHl3400k9/mz
	 zDMnJYdYQ2e2xOt1g9xhwKczHht5xnR9CYNIVVgZOahw2TpAeZrnkNmXUGLIMI/KXp
	 LtoX0Vs9dPexa2vktTgyZgVECXOEWCgnnnKtpsA+wXuGN0tSPM+wxmzqqDpm2RPQan
	 +UIe80sNUBVRfgpal51sBt6VpNqAqoC55QJ+dXfjOl6jbeSlpBgPX9nDcEb1/7WH2p
	 hD3LYm0Z9iM3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EF8CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991099360.24525.13619610601784826651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa32e0e3fc8b06128ceb623fb25b8678534bb0c752b7a1055c19657143d89426
Date: Wed, 08 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759910993
