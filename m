Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0115A3FCB32
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778254054; cv=none; b=lAllOli3fqI/sX8/KDbrxCVEBNXlzUdB+wo0mPVgZrgpuPgNI9c6zyfOYUkTOZoVU7KDrfMWA9oQEXGPes8kaf50dpNwko1mkfdaQPPIVsNTGCPop0ee+/cbmPKKg/Xia7mIW5oE3+dhRSbqE92p1YY/Ma1Qz2q3cGkkQlkmTHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778254054; c=relaxed/simple;
	bh=j+VGWji3UWujvq+FoZ4CoHkf9+SUJgsL/OHZl8dtE00=;
	h=To:Subject:From:Message-Id:Date; b=jQRCFfUuqjDEI0L7wXdEP/O9pLROKrxqD89S9OCpshVnB9Pdb6CHhSmqB/V86pKO1aqHWwYHoPBuB2mZOzQSELAG2mh4a2oeZfmbYhsyeF27eqkS4DH0mR6gbc8DfBckJGa4QDW7nN1ZrRzO/4oAlwOrntE0i1IktF9Jhyzhfd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvVp6dS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvVp6dS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3193C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778254053;
	bh=j+VGWji3UWujvq+FoZ4CoHkf9+SUJgsL/OHZl8dtE00=;
	h=To:Subject:From:Date:From;
	b=DvVp6dS64vHfAZf8bUJQOpSIo6PCixumAF1EOmmsP5FyzGxXolSOfBdgjMWlo5Fok
	 XlKlbm+8RI+37Fd8WVEi4iOKZl1zgdghKx/fiCGxsj/bS2pgR5UH2e2nyhnCc4CAfR
	 0bDZvm2artgm14JaL1128DuHc3bMGvfJmi1feJmI59Lr6jjeiQxv4dR0h1a8fRAJwM
	 QbhVtCB00HG/vjN2F6aAqAatB0ERNfhCQAjMzQDRx+swfbgnONxGFXXBL+tf2GsfJp
	 K1xBz6tGx5Xj2fszFmAt3lO8MCwoaXitASMHj0qF89953zPZBuX+EVUR6WxmRec46U
	 HsqhG663JBQlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4ED0CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825405372.26357.1864486787879369819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0ef604bf4be460ce06f5ef69935a06400ff3cdf3c6828fefddcb5ce7ce5281
Date: Fri, 08 May 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778254053
