Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269C8255F28
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759384794; cv=none; b=RiIMO10eP7QAfeynsGjLvyOPwa82Nm0VDYHJnaL6GOK6adejy/a+XQoEvnrb6F1YTC/dDwY9h1872DYl8SYj9EZTIXzKh6jFo0K/BrhvNq1T8RNbYSFIDWc1DP2C0nh2R3GTigKllC5iMSDgG13zJN0arX60EEJCGdhHjUPoX/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759384794; c=relaxed/simple;
	bh=qXykEVY5d1IArH8MwRCoe2JNjdSqMwPsTy7OHEBF84E=;
	h=To:Subject:From:Message-Id:Date; b=Zm7pb4NgOLuk4I0dKItIYF391OFWZk8Gmk1Tl/AMoGPfLbM/Vvbobxt75Rz5fmINxijBOYXpZti76ZIBS2utMago8dGMdK3iNnpP8z0bqGhobx2dVK1Q6KHKZqkf/QMFmTEjWNwqFK9XdT3oNIa8uFQuEvQNWyLz2tuKF7AXr/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6w69r8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6w69r8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EAFC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759384793;
	bh=qXykEVY5d1IArH8MwRCoe2JNjdSqMwPsTy7OHEBF84E=;
	h=To:Subject:From:Date:From;
	b=N6w69r8MFjR+8AdPAs1E31AgnDCpEuU89dwmqW/MA1EcJKHdSWTu3nd5cKpOKnOtg
	 SxXyxJpOYhrxkPiNnArvG9xa4fLDNkBAn0/vTdaog5uodBzvAUT+J2nngd6SxgSHWJ
	 uNHIwZjOMgqZnip1NqXzOD55lQ0d6fwMbwO5pKLlPnVchrHZ8uSiwKTRs2H/8sVYAa
	 fu5q2LLOOf8BUuGEc+368UG98DyVURkB7ieiAmEzeXrK7jTbGEyHI13XV++vNLenfe
	 YUXhgkP2YNbTknLL5fqmKL89WP4hVEAqk57evG5BORBT0Ac4USuP7f6Z+wz306yDay
	 +gRLhY5ZYppsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCACAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938479358.31633.4556945568325448067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c182b39680e94f054007962ea1c9b258c3469e76b08de92e6501e69f644fd1
Date: Thu, 02 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759384793
