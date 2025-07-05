Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD7B1E0DD8
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751709595; cv=none; b=u+IgGEA4ohq+KI6gIMJSV9LnorFf+H+VQt4CgJ5Y+PGOlVysu7xKMyRImKV9OTobiGnf2sn2/f++qe9uWL4Wu9pwpc6mDfZUSjA55zyaQ6g520lzJEonzNMbyz8+4Tw0hXesdRJAAGTWgycGSW7FHBqDY7egG+Mr//CpFKLAzso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751709595; c=relaxed/simple;
	bh=QejHUOVExHmBCo3fmb5dqkPtYAQ+4EtMTKPl5+cpSGM=;
	h=To:Subject:From:Message-Id:Date; b=QHAz2oKiM9hSEHQj1nubd4Ml58ed0GnEhqki+VU4/rJi/cMWSmdQiHNJyspnMzcDZEPGbu8CTBdg28pKCjg6kJ0LrZgNJANdpAZW/MzFULbfsWvIH8q3dsHDWsUlajMMhUojZfyEgW/Fzk2tMpubrRuLpj6ksLRdOyBTompLQIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LN8aJzA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LN8aJzA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A129CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751709593;
	bh=QejHUOVExHmBCo3fmb5dqkPtYAQ+4EtMTKPl5+cpSGM=;
	h=To:Subject:From:Date:From;
	b=LN8aJzA9Ea3A2Qog4W0PvoBuGNaL04Ol5432uMHfg+8I7EMgAxzVFHbrmoWr23B2Q
	 ruL1KJFC1OIhRJzIOvkvxjcvnGNCwiAvUHNUyBCPnjPhclR1BO46RWDQ8J1pGp+okE
	 mJqGjvhV8RsZ99nevXUTzXp/jJIOzOmx8KJqwpZ1d4M2/j/NScV0pGPhSzfhjnt6D8
	 EfyxpaYONaZM13gbjk6sGy++6TWBQWGVov7aMB/FHUOPerGtHf+cPora7RCRld9sMY
	 ZeN1pjfyoJftPsG5IwcGvprouksq1ptCpUGRj1BOOHnKFqwayCrQIBjB+acj3POZb0
	 RdwrRzUhiVVIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E762C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170959357.12287.8506697108386437261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac7cec35de1b439059294cf593d89f8034c5c326225ac8a44e28529f4c0753d
Date: Sat, 05 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751709593
