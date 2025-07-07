Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C7428A40B
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751875194; cv=none; b=NhLv4UlRTRy66TCdC1UWvfX9ibPlmTBFjwOshzRwWlXCp8uZ70Gza8Bn7TSUhWfqrJnRHRPdGDs6rkP0E42zdoW53lv3bb2veISfsggp0/tlNf4zxy6ntcsWNGZUR5kM7xVf8f0LUzAM9rzj1uKfGbY/hYt073ctVcSGwmVk6Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751875194; c=relaxed/simple;
	bh=v3HXqtXDXG3RL1zDk4Mq4tsEzx+DMjzOOZiUzvklM48=;
	h=To:Subject:From:Message-Id:Date; b=iXkFJBOD2Db6jzLO8I7MLNe9r/VzUh5Jtk4aWNdG9jK/32bJ7efMHgGx5Nb0ciBt3CwyLNpRU0FlzE0Tm0WEtZx/64gDDl/IpgX2LrIuuFDoypygGcCJmOs9at6+33KsEp5r0zc7ufCCaUCcQRHaPOvX0BWNvHzPXbGzL1EkZ+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUeth1+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUeth1+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9EEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751875193;
	bh=v3HXqtXDXG3RL1zDk4Mq4tsEzx+DMjzOOZiUzvklM48=;
	h=To:Subject:From:Date:From;
	b=lUeth1+s9ns4bWdRR2ZjfI+fUmbXNooIpfUfLpnjgOFfnMf1yvjqovLjSeb71FDiC
	 OZMg0T8Es6lQoBRRkeNaI84BNS+VoNHpHDplx9q0X7MWjcLV1u3uWTPsvKNH6uRudT
	 2ZzS0uceOPUHHaNYHdDPnx7SC7LpXR8djsPTvUy/awOotf8z2pEaOLWY/8xNhCOr09
	 s/aOHh0mBiKcLbFCPNifoKF0vvDngMmoN7wIjuskuYmi2ztYamh8MOEia+t66CwuTh
	 o9Tbq1j2J0bbu3KcOQHi25gSPRCaQYye4AOS2IQuF+hH5Zj6aTS3Tci8RM/LwJWrSX
	 GDnZFDaURinSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE82C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187519357.11711.16374382798156970154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332a829a8ce2034a699d8e1f15e6ff1950db951f468f33abdd3695d4db4f0bb5
Date: Mon, 07 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751875193
