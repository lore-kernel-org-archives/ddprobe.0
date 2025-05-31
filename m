Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3978F2AE7F
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748701194; cv=none; b=j0euRLo65nkxVUkMCdp0CbdczNV1B8bz0YT7Ildx7O+FpDaFZLMtuKKwEQnuyyDFQq7WOC/gjkWQDXUPgn0AfaTyr0urL4kZ1uypIPBHpBlrmebG1YMAvgBKr2hvPWhOWi4Sv2w/fGOfL0Nhu1r6IOsdimhni2ebXIul1fyaHcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748701194; c=relaxed/simple;
	bh=W6WDYvgkWZY/z/vKJGJlNj/ph6NSPNF28Yo89Wv7QYo=;
	h=To:Subject:From:Message-Id:Date; b=Z63Uys/VHViCr6XKeB+cof+F7i4iyA7s6Dl/3Kc4DySIwExcbEh/3Qb7AJbEymidFmyv6gtN4sRLWwxRxhU4WJ+ItJYvZPDx1HwTvaMggf+VAvIseWi8hMHc3ZInvSkbbfN7fUKakB/ZCgGH92SMegIjWGaB2ENWo5YSarn2qog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pH378YZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pH378YZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A883EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748701193;
	bh=W6WDYvgkWZY/z/vKJGJlNj/ph6NSPNF28Yo89Wv7QYo=;
	h=To:Subject:From:Date:From;
	b=pH378YZf6QClRMVIMy1t5RDOMBWxhjVk7iRHNtJ9/zIaeS5qNIyd0KFy0502jjaX6
	 WwCv6q9ES60kwhSpDBpSXqMZizESF+bIUieTrVvq/xOY/+kYG6XfHdWCThTCwjVBWP
	 T0F7A4jOeNAI9k1Mv5CYMePu/5Q/6qpizZSyq3GZQEILeSC0ZKujV48tLh5XmPm/UA
	 jxT8+O+jEfNMNU1sGS2yvg1sdCFJeXQYFMJOr51cA43Bd/tycDtMPwNbwO2Ei4vrD4
	 V8AMHMp1LAuWyWbtzDpnEchTfpDV9smdkXbeIClI1bTKTSFQ1irEl560R8nBxrDleb
	 JqtsUQOVh9tHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F56C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870119357.6420.7361857988908740542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a346e9d1ce9586119b5c3a929990f750617a3e6c28cfd0e3aad8cf5b4296c2ce
Date: Sat, 31 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748701193
