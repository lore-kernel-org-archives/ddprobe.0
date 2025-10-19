Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195D0194C86
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760879994; cv=none; b=uWg279oI7sRI53GTQcC+ehlBoirMdB6H1tRXSZmhB+1c/KQZISpQl3nWJSoQgySdGnU7qlosfKactdRdpOJEGInMeL7F+kxshm8KhIxIvxiZMmYmWlCF6QM1R9N5IbXSdhN5TLyQsQhIT/3XNhh29tbHqWAaXvZWWTVWtalw7mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760879994; c=relaxed/simple;
	bh=Aykzg+g2hmVIM2erRxHTZMB0xbP/6n17Mawy2DAh8dM=;
	h=To:Subject:From:Message-Id:Date; b=lTwehXGi9qEG+ee1F+tbxUahst1nVSeSt2SPte09v4cJjOgTVh5TbtNEzGDb5QrepCenP8S6SKI23mTbyhmLuXbth8XwnqfqwEtEP0gQdyBq/y8qe0nOJIM+grV7ODB11bxiBQua9CB2SrtYFSd6wqk2txIvuxWMRP56boqZEVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNhrq/Tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNhrq/Tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3688C113D0
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760879993;
	bh=Aykzg+g2hmVIM2erRxHTZMB0xbP/6n17Mawy2DAh8dM=;
	h=To:Subject:From:Date:From;
	b=jNhrq/Tc1QFk6DQ+QhDkgtVZPRd61JooETDJcTLVZKwkiTPg94Hu1//bJvLOxraAA
	 x4I/M1fyGNeiljFQQy7gfdM1z8gfKmI6+iaPDy5qFsLGDhHhAzQmXpuBr1MY+t+qeR
	 y1DMKc+yi8RHgPu2J/8IW2f+cNmuw1CFs1N9Hr0EYolyxpRDQqsfWhw2ZQ/eDgcehF
	 iHcl+VPs62wJEYUi5VHk4bVwYKXiC1I3Y7Zrl04UkwCAc0FVzYsnF/LrcMWUzDm/JE
	 F5wWCtL9bPfCyZPkIcwdRPeF5GW4skm0VCNjo8tIboWRDVyrqFyGuA068AF8H0JFb6
	 plEiZjDt/rzhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940E0CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087999357.21308.2502368061522267526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e359dce2c672cb480e981b69d808abd50f84b516d42b56aa9bda8bcfbeb0236
Date: Sun, 19 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760879993
