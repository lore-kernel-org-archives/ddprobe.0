Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B02A14A4CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785037834; cv=none; b=MWvE8+6hnNlT8sj41dc8rcoo0XAmgMAiYm3WRFWPTpyyf9oWwHtaKnKCPuuq9FiIfZUX/u78H8mz4pP1ZiQE0rahxjRjcfHHFem7AkOoY4/9kDCyZkdYanHoq4AGw3RYtdYHaT/P6p5k8NU0bruF3eFkdAf6u4/RKypT55StcXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785037834; c=relaxed/simple;
	bh=JMs5XrsrADxGBzAl9q3SXRcBiHHDfW9nbHCs54pICFA=;
	h=To:Subject:From:Message-Id:Date; b=s1t1Ugkyuo8TJP0zZW2wIgMudjgnq4pbV5L0V/by0PMUQxjCS3lctVM2JIm/TCTTj3tx5TiCxEEtGIE2SpJ4C1ZtpTVrFPBu6Kmi89X69uQnnPi9y8On6wmfNw9KAc1fIUX6Fb/nRKclk5Dpxmnr2UjixlwDzy4CGr/oj1ovGJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZzxyI7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZzxyI7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82CBC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785037833;
	bh=JMs5XrsrADxGBzAl9q3SXRcBiHHDfW9nbHCs54pICFA=;
	h=To:Subject:From:Date:From;
	b=LZzxyI7k951sHFNWAlom9nLr2TvxvxI9eWlcV/miCB3OTPEIlneOFVjLFEP9aaOf7
	 18vZBJpvpcUT7rpsKKy/Eaw7+dYHwUS/wsRyAOdDCnUMXO4ILfTDKdu+I/Pclkl+Q2
	 uv9vUFeT0hKkGCqN5U3QuEx2J/Tx3WZVzmYW8nESvLNpZjtMaVaDAQK/tIyUpE0F2x
	 6Hoj+HQETDXW4+mnbkHe2tM7WJMVHNequMDFHAQwcHASHdeZwfGCnyo7+t1U5i58Fm
	 TqWo6ATDQEPm9HSINV1SCXzRISTN3qtg6d1q6fz7VpSXi5EVxydyjoB3pJRjY4O0lS
	 MbkZzskC4J4Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2FEC531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503783368.24473.2507164647304147600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0b65e4e63b064ad3f3d6ad70b1cc8ac681f7f26160dc824b61097d32d42060
Date: Sun, 26 Jul 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785037833
