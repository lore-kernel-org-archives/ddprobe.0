Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583523A7F58
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787019034; cv=none; b=eoZ+RZJPzyCSSowLzn0rhnhZ56qAnuzm0B2prLrvhLuvpY5rsJbt59lzLE45OXTNxNqRx/meeYF9vbmwFthwjhmgUfX1GbudzPseiXZ1P5r8QO8IZUNLATb3BdTekZL5/CZmS2+iiuJ8OEQrM8nIVxoLzQOJcKUnYgVZ4OphtS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787019034; c=relaxed/simple;
	bh=zPRlDUeQqz92j/SGGh2V3utV4zuCbaec8vhDqbsLtS4=;
	h=To:Subject:From:Message-Id:Date; b=igWXOZ5zM8NKw5a3Q0N8wDNnuACgS0SgT/gOxbpt7o4QgpwXl1rpGWcI2NNR6aEjO67/4VSnN9BypYxyyHfvVSE4o1cfnwe+xon0gzSOA03V9dniadxZ5dd4xCzH+GlVTCHbbSJydqgwJLk30+zsheDf/9BBB51AqXmsqWn9Ig8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+JT+E45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+JT+E45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA714C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787019033;
	bh=zPRlDUeQqz92j/SGGh2V3utV4zuCbaec8vhDqbsLtS4=;
	h=To:Subject:From:Date:From;
	b=Q+JT+E45d2EtwIsBx9f/EYDw6P4K8Dd/y/0rtEaON3R+N4xz+mAVlgQg6DX8MhOPU
	 0KYy0OW/ygaLrF6sDEPgZWL4DIvwm2dotxpaRNxA4aj15x3A6BIqeV+AJaTfb22ppZ
	 3cV/5ZqSv/oDnS6JVnDT2T/Yl9sBYus9LYqjiBjAXj4kH+LCSh5bmli5Bhmd73ulrP
	 pkHVX7NKvJMh9cajZww3rpzdXkkF38saBKELh8Ec5M6eD9I67azrN23a7MhXNETb4O
	 CHPRnC3uXSDTSQszJYCzKWS3+hDsV6NsC6WkozZC9B41M9sqlpSfI4m8j2k4VOx5Zg
	 izxMEQQAP1K9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4127C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701903372.9574.12396230949992826163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49000db72fde6de03655e6588fb153c17d268d2a7bb83f59db8790d6ec77ee0
Date: Tue, 18 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787019033
