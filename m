Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AD22BD013
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756040394; cv=none; b=ruJ0s7iAUP6FtPUvzU7iaa2Mpv2KZVfdrqBaR5SKmnZCKvI2+zrLhxFqynFll7fnLf52253lX8KFGoWwZJZgkAWcQuOJd426aJfSEchpvLY6lEQmtVMLhi4wm4gt7Ys/WoXydyc92T7dLv6y2VHWWDq+fPi5YRb8jshZH0VjQWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756040394; c=relaxed/simple;
	bh=GyliY1OBDT37NmYxjMvyJ68JJr5jm0LAQkJYITnWJF0=;
	h=To:Subject:From:Message-Id:Date; b=Kf2ewrVv4I2tjfgcEJTlk4IcrlUoLpZNeCwt1m8Lt++auqQq7rCjh2yCpTfJc5/lnWwmGS14wI6wkZjtUfgYR2uRGDy7ro2F0fYV1qaHirPVuytDg4jvTIFAIunZPdgk8eUmxOD8LW3uAnFFYy9pSwS8QyzJfEkdsrIPbCFFz94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCkM1Xtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCkM1Xtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A022DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756040393;
	bh=GyliY1OBDT37NmYxjMvyJ68JJr5jm0LAQkJYITnWJF0=;
	h=To:Subject:From:Date:From;
	b=SCkM1Xtjrsxr9itmZz9Ve1NDv1CINFQnVU1Z60H3VclT8GUweAeaLUkDTPeIJEo6U
	 1tsVMEjnxJGf1XwVBdUAMDxR269YtILnTPqM23XG40IxC1DF7iennUma7SiNSE6Meq
	 XoSQ0rGwHG5rnqRI5CU8tk7UlqmoWtvjBk2zjEj8R8c1ubC2+rPMadAEjG7s3fsPO8
	 PymhLsEizmGfHmgk5E9Ijp1tA3gdqhtzTD5BLMCTLpMVGNdEuhNNzIWVD7B5HgJI1H
	 W0zoq2LJg+PcmjqVkwumy6dORnc9/NxTrHUPKVwZ4iXOhX7w98YeUyqRZnXIgQlOXd
	 8P8nWTc9D4chg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85ECA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604039357.6213.17255709047246570086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0c213de93f85a7a147d9f983c67881504a12890a8787ddc41ec3adc067442b
Date: Sun, 24 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756040393
