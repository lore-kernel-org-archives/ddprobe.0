Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D97200113
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757039394; cv=none; b=Z/Lo5AfTSyc50POdXl/wCarzlLhybw7mAMDtVoeWL50uhFIiFPtKBlaJLwIn8ixSpyoNphZ/mWd4nuT7kJtc9eq7/KIYaQDR2X5hree7t2qJSCSQjJhirhExqXrp2yB1kH+269sQrCm7Wlpjg2N8hmxttfHuyorMT2IdUE4Qmfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757039394; c=relaxed/simple;
	bh=zyTvJzD0vMD0CeDLjvY6ftNFSlLGaAYoiSTKt5cH/PQ=;
	h=To:Subject:From:Message-Id:Date; b=mkuB/9lSSgu9Rk9aKb8T4jsmjIQGzFj8DtKqscJpjEHFyzTAtRjQRenuQyb0ZlCxQLkRTw0pLfVxtT9MMnpb5WrXGRguuCTNXd79kMMhX7NmJrAlX2PTNsUnIkIFfB5LbQZrh67KuUAz255bOUnGKo7gdubCTAEboMTFGMKJS2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=La87Mk8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="La87Mk8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A318AC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757039393;
	bh=zyTvJzD0vMD0CeDLjvY6ftNFSlLGaAYoiSTKt5cH/PQ=;
	h=To:Subject:From:Date:From;
	b=La87Mk8DWpGeiDfLBr5Pijo4q6XaayXbUXy00DEYul5DohVaDKMdfNnOOvsKLAKGN
	 pfFoWhG8W/5wye/IJ5YKXsT+gJ1YfDPF0ZAiwiMVOTz4xcPeMtYe4MragGhcB0ZL67
	 rVgTgCSa4XYj5yGpQ0VBEjNnaIV1LVELSqUkziK3s/wiMDm1qge9kUQaNpjWTDZcSP
	 mEVd+0nsJic0WpuLPT8jSNl7Uo0I3FzfxYfemcpzz1SV06J1utTWeWvdQnGavYRCQZ
	 GsI1PNWG+slPWmKJ/hIVc1/VYwS8HkkpRmXGd3YHMYyyO5rdsZGaFRKygH25KvxrF/
	 obsHiQ3BP1gug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E288CA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703939357.22635.15264796483085053412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70bf73886862fb3635a2f080c878cfe0fe3fdb580733c08853d0090a5ffe14d
Date: Fri, 05 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757039393
