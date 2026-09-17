Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA2B35B62F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789611035; cv=none; b=M3mtHtLaAn4Ain1zVmzdc+rW9ig4G0uB4El/NSAUf/FTvVpfyTbeMzed4G1SHsnKqQVteRpi3RfcHMf8E2mEp7FiFbOh9E8pqMa+7uSd6HV7YYxqzcKyY9Enj5UTn/mysVC4bCUUIq9fzgkBsc9mPlLMuzoArYpFCrw0D4EXKfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789611035; c=relaxed/simple;
	bh=/kZv6mguJBWfFPiW0U6cq02NRreb5wGp10faMx0hr5s=;
	h=To:Subject:From:Message-Id:Date; b=iJyLwNh//xvL+XD3A0hQ+M5QnAbA+VK4FoTiSp1X6MxQHviIA7SEzxw2gjXpaX91lUAVWpfJsUoxikQrqUj+PFa7TelG0pc7N5mPBM5cDPzONisT5bB+4w4V0cralyYL+KOEJ99R11QfPAawzBC5nV08+UntUc9/3hWpCSWNMA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lScS2lhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lScS2lhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B19C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789611033;
	bh=/kZv6mguJBWfFPiW0U6cq02NRreb5wGp10faMx0hr5s=;
	h=To:Subject:From:Date:From;
	b=lScS2lhlAXn9aBhs8ohNZKHlZql+RDy/xNrRIt3P0i0Ij1FSbS/HFROOcE17gI+Cq
	 GGKYb2sK4Rzk8+5NSb9Kl8KUTdD998an/Vq09BF8KuElubmMb/EanqCTrK90SkY1ee
	 wgXFThkVAOofQfclRFPqbpTaJ7Q2yV5o4ZAef4DS3tnWkm+yS/JQFmcoQzAui8T9sS
	 svo20WCW4ROOKTLuENMFaZQPVxVo2xgr0zKzWhd2RLuJggdkmVBh39STlEK3kAvaT7
	 jXo5/N5BTUp2HyAPbTagS/euXSpeZqIMAUSmOMVJwmUFzjWXPcUqf2YmUnh9FOE2wl
	 ZeALbTchb8kaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0484C982CC
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961103371.29163.13639011016217740760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a937e9a342d383796899ccbdc814fecfb51604eb59f21411ab2e35fcda74afe5
Date: Thu, 17 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789611033
