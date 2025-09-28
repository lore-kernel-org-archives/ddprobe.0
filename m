Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D80194137
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759037994; cv=none; b=S4cYdtQS2jmtbilRbdRxJ/A3dxaP5FVzgl5DkZtAufVWRDlGgWERh2SROol1PQPUIZIdQRUG0yK1nZbuSEhMH0ghwZThjumiA+cIYMQxk/aT+UNTO0LFTr+KsT4mR2n/JyhlmioFwYSfPETiHZzZLxkQe2Z3HkaYYCCnbEI4v1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759037994; c=relaxed/simple;
	bh=Utd+IveFTh7gyt1sm8xEUQXUkykCRsXbmzwgBn5p7yY=;
	h=To:Subject:From:Message-Id:Date; b=B6PoeHK74nQ5dJjsjEBbt6BXPwefhaup5VbKJ+Q0pSmKMHZs0ig2GY6eDlZv6W56oLeqN0vNTwBkYw/sHqdnTn4nhRECvwFAAiROExcnMzbkkgdrMVS1cOXK/X2Ukz0Tz4SbMisF4emnm3ZCbc4WOihsg/2RKhgA2+l352vsfCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dzb3OqAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dzb3OqAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92ABC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759037993;
	bh=Utd+IveFTh7gyt1sm8xEUQXUkykCRsXbmzwgBn5p7yY=;
	h=To:Subject:From:Date:From;
	b=Dzb3OqAbWizuHkS3adjDNcbG7jVe/biDua35yNoftazjG3cDjGh6fCfmuabCZ8JGG
	 TfTXGTQuN76CxD/aaKDenof3gGKhcHdlK2X/Crf/hQeVdKrU0lnShsfMLCbuzdLG6z
	 xaVTtJKp5dpNANOdIefB9p6gCou6Dt8xHho9zOmAHEAmgJvaRJ/GXsjpYtYvWmpJb6
	 hNMxz8YZoZUwfNC4YdfDWuqSmCDZHk6oF288Sfp2ENlu6vrpq61/tmdBHTH7u8ca+u
	 Qa544Yi+Z/NZxDcAxzA5MFmOn7F+/m2rDBFWuLssKauRP+LcNTRJLlk/cBHDZ9QTVo
	 ZeVLSMZ7wG10A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CD9CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903799358.7026.4834260873881472000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24562d1d5620a498db6dffe5ae2699538a2543c9df6f4ba97d3ded07fab68634
Date: Sun, 28 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759037993
