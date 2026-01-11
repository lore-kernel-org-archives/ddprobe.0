Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256C92877ED
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768170234; cv=none; b=lyEgUdegMd11UsXr7OgH1Q+EUZiaX6Mv5yDstIad6i+Abpwc6s8ZDKr7hDiPoLZ0evWR1gKcr5NBz+jl8KcWb6oraoSRJsLwWjBub64wU2NQeC0R2krqt4xrKCGKZ8CaW8cYxGYfKFSc//lug2ycMwgO7E/bkaLKXJz99aHUGEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768170234; c=relaxed/simple;
	bh=oDs+0DwG3B80Voe5sKSu/EkLMu3g3/AFyCyhildOJq0=;
	h=To:Subject:From:Message-Id:Date; b=isW5xl1XC9bVY4jYqEYyF2d+w6nEvG6WvIJeP0QLsnDPXxMPl1waGiUb28gVXLKP8GZtHZloF3+VGvjoBH3ShgIOrwlp/bAZZsNkrROvzSs7coz3xKGbrTjflDfoWh2UJkzMX48bSiAXPSFzBnLfitzOSJaUQAJtEQERxcj8NFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/iDQ6MD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/iDQ6MD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8501C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768170233;
	bh=oDs+0DwG3B80Voe5sKSu/EkLMu3g3/AFyCyhildOJq0=;
	h=To:Subject:From:Date:From;
	b=T/iDQ6MDyHPR7LoRqNSdzVxi17ykL0xlEWWc2UTXzKQCdLyz6u27eTy7ue4rOCXTr
	 E5o+Q0sJ6qIVItAIsXgKCOqfYS66IqboOvX3lZaZohnAvH71qsSbrbOAmDVRxykG2a
	 qP2WZL+gKRwjkGd4/cfneZDIOCHhMfnHP7vp1Tl4NpSdKpyY0+TWUS8s393SeQ2aDu
	 m53hharJOwOnQRVlybbPbwd6h55IKInPVp8+cyNPHWxDGFjhscoWvA9GDcXDnwtKOc
	 YIht05Lrmi2DSzfuo6EPFr2SObCmE9JquFagU872oRejmUUT006mmQIAg7gLZSp7CM
	 TOL2Z5TiJuO9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF9D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817023358.24208.16136357985174386997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5260e75003445c95e5b18a83eeedc438f583b1274b5f0b5ffd14e944ddac5c
Date: Sun, 11 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768170233
