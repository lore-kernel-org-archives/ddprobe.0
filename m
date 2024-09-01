Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2387A1CD2A
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725188754; cv=none; b=reGKMdw1yuL7An3BE+QMvVmoSBpTvDszjUAw3AQAWhnPF+8RxH5VoFhyZzW1xUUbk3lZP5IPbc2Z9AvvQ3ysIlPjb3gjeyjamjPkcFm9EYSCcNmnrdeVFBlZ1ljQZBGgIYrOXPj+KU4SFxlTIC3zc3piN111fdP7HnpTI/qEzh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725188754; c=relaxed/simple;
	bh=dXoU0ys7bYC4RFEEQylPS1W6aXzRnYkQwUeIVbqclsc=;
	h=To:Subject:From:Message-Id:Date; b=uoPjSsP1kbUn2rwQhifeZfnCPCu1HJTU6PQTUzeWrtCWbloM1GgaWXjvzYkXcIl2vsM3L1KYa0K9HnMeSUe2GbCMFVu0cYsJtX8MX2J7QyKplyaFZZ1jiGtmyGK3eqvI0k7tRTMPKUSSkMdWQMEPwN/xFziLSQ4J3U9ipg9Ap4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBPn6dZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBPn6dZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C9C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725188753;
	bh=dXoU0ys7bYC4RFEEQylPS1W6aXzRnYkQwUeIVbqclsc=;
	h=To:Subject:From:Date:From;
	b=eBPn6dZ5IhTVqGNT4dfZVgLYpByqfSXwIyghVChUh0X9LWAEFg9w63uaPVGu/6dDg
	 ZJ3Pu/YKS3DlvFaxvpmiKoXTKX5nmCXasP6cZ2djw6uOL/CTGPNbkyQox5fQl06RWI
	 HVpRWu0UPUzl7CQwhPMIzb/4Vuc45gdmz35Y3+UhXZJmR/ohjrbVhTmNXC6RMdGI5A
	 0uQUF/m9oTrKG/GTjp+hlwabUrdXpu0Dpnva+YkX76SKpD90wSmjL9LBYHqm0UFBdc
	 e4pCwOzhNXkC0pRFHOXfoZmMakX205ZC/ae612JqdIa3F8piwU1/3YtKa9A/G2+dnM
	 NEuyh4sz9UtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93383CA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172518875358.669.16925522605959594470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135810dfb173d0bffc9722b330a7890c08f558dc5d7e04172fea793170db12cb
Date: Sun, 01 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725188753
