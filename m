Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A99520485B
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755506995; cv=none; b=PAdJlVQ4CNcdHUc88J7Rbw9IXI26emoZDhBABKWaj+3i3Tps6LlPjjXg5zTM2eNcggEO3zjg1bgxZEpZJtZvX4/zskXZTfr2S5liiP1Ca4w7y5XWtKy/qcooX7tqfdjihTZf3JPCIsQezGElI9LOlURoNp7zU0k4Yu1X06mipts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755506995; c=relaxed/simple;
	bh=MHH/lNE3Ebtoa64pzYlhHSxEyCFpNv1Z9v5OKw0pOws=;
	h=To:Subject:From:Message-Id:Date; b=sPyUEpMi/VxKT4mXOGODhHvO3xac5dwVZcoq35Oh6FxHgsylgEE3LME7Bri2tzo9kmltxRjVj0dgHTPxkgFzN+uFgpDNwmS2EYYgYsE8Q7zpJ2sJYQhwcdAl0Sotbqex2MfEXuk8NJB8Cd9ENPA7C7vQ+iTheIiB3rNI5rrl8Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3VV9jWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3VV9jWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3134C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755506993;
	bh=MHH/lNE3Ebtoa64pzYlhHSxEyCFpNv1Z9v5OKw0pOws=;
	h=To:Subject:From:Date:From;
	b=L3VV9jWSK5UXWb8O0lzueY/ZKnkGngeN2FhMFZ/NkjaF4Og6mBMb+3x3WpZ1Z5PGg
	 0yUbb23/ZgSKl8hWXthQG+Fs3+FCm4mtcemQVPQPRpE1M5GoWlpt6HdYtvljuFmxf4
	 9P1obsu+kABvyehlilfKWOWY8ByGOaU/ssW2YEHLmMC4p/HrU+m0isFy86xLs1Ypuk
	 vvPySbb2zH5ua+W/MSOJbVVmEWWVhCBgQAxLZ2mKdpuzSs4Ct4bzzAjQR32eTX/Clm
	 NXwCdzvPQ3biB5coehMR2iSu4rSsinDTkYNDrWSEmeKoxmsK40Oa1LV8LOa7NYBwyP
	 6nX56xxtUs7yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F42CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550699357.14081.8385311876876191477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfff1637caeb762bc5acc12d0173568f3334d7a00bb07920e14d3d417f4f9f8
Date: Mon, 18 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755506993
