Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EA923CB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751240994; cv=none; b=sZ4/wLDnZivGFk6RGO3GXYiCzpxLLUiQ928I1lf/O+g7nHsnJVVSHYQhhUKHxoKuaJhVr+TVoEMSk57iFhiPi0dQlP3ltNexMRBxS0Zz6DFWFkYZtJ/ntXPu/kNUcy0gtFzwIVZF2cGo79pWY+BD5Mt9IAdI5zBoVrbgRTIwp5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751240994; c=relaxed/simple;
	bh=IAnO179ouQrFBPih1zW8qJjpabqpLaP2at2sbenT5jE=;
	h=To:Subject:From:Message-Id:Date; b=FJIuHMEuJNxX11aAf1GrWPrN0VOAmQItuYFlQqJ9+caJcqMqyA5Q4Xxy/TfxHOrFhDfvbouvVYkkC2ECiq8e1m5k3Wcuf9PUYlNPM6oRxjy5tFSHHdGwY/fB5HW8jx+wmW7wfTGThM/YmTBhSofWhSxId2TqwXojJzu3qI0SpZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcFlz8GS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcFlz8GS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EDCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751240993;
	bh=IAnO179ouQrFBPih1zW8qJjpabqpLaP2at2sbenT5jE=;
	h=To:Subject:From:Date:From;
	b=KcFlz8GSsOnCnwpcNCYfmzXpbmBdbniIV2EAh9+QMvR01qixPm12HKQ68r0LHNLrA
	 Jam04E/WBu6xonmgHwPa7oKa9QFR3m/DPTPIOl/UzR5nwmf8R7APSKg/VifdXKRaOq
	 p5iN/W3DJtMhGtV+r3447oKB+9h529olkpajSDJq4WonLXg2QtmuacKkp+5E633UkH
	 D73DKJD0TazfCmUsFyDiPqsqdd3bvj80LtvgfnFz/BljeGxcGPfFPAHWTvQakyqL+H
	 ZClobJNvRuWw0PBjADNmj9EspEuZYXgUfnERUA1wTLNSMSoPJrGFKoPGZYWDFRZVB3
	 2lQ+Ta0q9DAVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C5C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124099357.14375.12218538701385471612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3308d09a0ffa8a9fc767588ba9fe8afa7dcc14371d8880ab290305c84c3d40c8
Date: Sun, 29 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751240993
