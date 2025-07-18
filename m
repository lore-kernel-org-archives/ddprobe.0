Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C31217A2FC
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752813596; cv=none; b=psjOyJ0pmvcok9Nhe4x1ee3D/FXL6O1P0jdPytXPXRvPUN30CLE8VF1SUeWnOfAqSUC/adWzaihyCxNDQnKja1D/QxFmY0T78/Yz3fLm7LQCxItEO/V8cdpbSTsSefGWNis1xO/+GpBM8l1PvyHZ0yLehjs25TXdaK4ce1J96Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752813596; c=relaxed/simple;
	bh=nIvLnTww8XIMMXnglMHTCqwltEDpbNGx0iF/RnrkM8I=;
	h=To:Subject:From:Message-Id:Date; b=BiBzuSVmM0V1VixJKFXDDBQtZpc/RSGBpyKny8u7NCGrODzbwC1OTgv2Yh1tHBm9lDSoWUyJzEk54DJIIfOR2HdDtnGHI/eCpTgclAGNgRvOSVVEDoJOddMOfoh8/HbUGug0jxOI5iWnjiPM+r4fCROm3eUFVHA4vmySwoOgUoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hofhxeyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hofhxeyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E374C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752813593;
	bh=nIvLnTww8XIMMXnglMHTCqwltEDpbNGx0iF/RnrkM8I=;
	h=To:Subject:From:Date:From;
	b=hofhxeyTrxI57lcgjYuoRpoqDiSh3Gcp6zd7+wMF6ONZb5IHdIftVlPNh47CbvFEa
	 sUFEjWi0x1FKVPdh3BzwPfF5PgOKYYNmgfOE+ODppmMuzSaQ+ts7P+TuTQWyHveVLG
	 CD/D0Z5b4dBHezchXZQSELiqwkxH0LwtkodOqU5eGGzyteU+6YdvfcqXnQE9pe/v3x
	 CZ57S8kNYVNCglbpGSBh/GO2pfSvBC9qJ1qwhbTMA2s5iDszpG2xiGitQelTZ3ATyl
	 cQewm5F/VkB4vsQZDed4F38l1pz13n/iPIYWImZ5BwEDl6VJD5CdfCQrNlHVVAu4sT
	 tQOanbw9XxxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900DEC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281359358.31523.15058763451311265900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36210ce62e03cc8db08186514cf1f4dce8695e2b76fbe37f7a8b4a82d489d8bd
Date: Fri, 18 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752813593
