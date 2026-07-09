Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7054840D57A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783597114; cv=none; b=a+bhQ04gdFxVTBREVLDKIKC6yB4P0G74N8zJx0a9UmHdr+rvgUdve5oOetJSaYbyRJS003PEwwr7mwFa2pqVnoMkl1FBS65pbv9ypOAO1kNyOtHRb3EG2ak8NOiVQeFI3KzCMfQ88UqVsHEGVo7T/6iSzK1GpP2PSTpAWSKb88w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783597114; c=relaxed/simple;
	bh=fuQipGArimvbvfQhFcGuiaR/taOEgTpN4l8kid8kttQ=;
	h=To:Subject:From:Message-Id:Date; b=j/8htE9TSzZBLDZv2hZcYmwbF10A4bNx5SZnVnC1WpOS91aL2+TywLiGhE1PvxNO5ZwSOum1HxAe1dcyXCvL4XIPlZtOvKWVNBF5yUg2qa4CzOmJ6ZaiH6F6s0V1wSsLVb1FtuKq1IuduQFJblLUlQl2XDi/LD8sApFCytJG7OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfgY0quk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfgY0quk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91DAC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783597113;
	bh=fuQipGArimvbvfQhFcGuiaR/taOEgTpN4l8kid8kttQ=;
	h=To:Subject:From:Date:From;
	b=jfgY0qukf7N4vaPXTCCRFzvqOOXjjAqXkVLxKIrHjUAPoTrRPb3ejheo4LFttWOsf
	 TzzI8+SATD24uuIv/bT6f0zhX2Ikbh0lilUrYYBFm0/b1i5ATKkjhBnKsyba6NmgEn
	 xzgmPaR+x8Luln9WPG1XKgYrBvhgNr/i9VgMT7JCjqA6ocG4JgxjJU5JnPqgeKdUgd
	 x332o6Kx/bNOJDevaEPtw2JZ5gbMHn7APUyUIx4ug3gJooIsK9YcRJgrbeRXcfQ6mZ
	 SaOwEZbXerVYHDRzeoeiB5OB2VboQX+UdTTn0Bh5xTrtV2t8IOZ0eUFXAgLmF4UP61
	 S58JKZHAY3j2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E33C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359711368.6348.12912557440407147101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb59baa250b6a35b0984c71420cff30e9663158e23da1ee9452f5ff0221c63aa
Date: Thu, 09 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783597113
