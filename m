Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E4929993D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780191274; cv=none; b=Zz9I5f0dnA/Ejz6kJY1HPnbyz2W+dEfdngZVp89DgOJW/p9IttTUdCG/bjjstF0daFdFd/6XsNMGvjUxZQ61hjAVPbdqcelQIFJIgqVuX2y4kC3bQzFBZWZgYoDF049yUp4m80NsffjZNfvo6GyCSPvMQuWY2N39DBizHeR+45g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780191274; c=relaxed/simple;
	bh=6rJpcZAor/9Sn9loeCWvfVbNjP8p1CbUSRhENd2v+zE=;
	h=To:Subject:From:Message-Id:Date; b=M1Nka3ZW3PPzrf5Gbj7Zz5zWvHuYkD3qliOk7MJDFHOUYrLiUhaMMnxOPbnejChTdq6870IYkg1U/Lysc7+zBgUdyulmfz6WbWGnJz2WfyN3aes8NftzsOoEd1xcSv54jBDctN7ax0rC0Vc23Sqof1cSSHp+PmU1vHfJNkFAR1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oab4vo1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oab4vo1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB758C19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780191273;
	bh=6rJpcZAor/9Sn9loeCWvfVbNjP8p1CbUSRhENd2v+zE=;
	h=To:Subject:From:Date:From;
	b=oab4vo1b54NgcQNdccQqq1NX7oxYoprENjSnJesy3t4VfhQffgQ8X7S7ecB+25ku1
	 gjc0g5n/9bsSTiS8lGAFqZDNciaf68mDSHafLr7Vr+xTfapkcdahU5+zKl66yO3vbf
	 rrnfPXHyHUpBz6jxHhuhTh9CoaqVjJqcufAaRphpBc+7h4XL5gZFR6elb8+URVl98W
	 OaDNBF3TKhf91sS3aqmeibjJzwrtMURSAFMdlgDPVXAGGXnWCivpR6yLS4XAP8M9Zv
	 dnKJkoOhT6VJcYVyFjKi061n2oibZOgh/2uDiP9me7X6FwfzpCwBktERMoR/HGHwzr
	 MdoN39RtMOPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC11CD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019127368.30883.13923465137302288830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251598b6a2b500739a6b491252008416e0558c796b7ca258d84aaf78bd22b206
Date: Sun, 31 May 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780191273
