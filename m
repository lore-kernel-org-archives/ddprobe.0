Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB552171C9
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762501793; cv=none; b=NI3DZIJCUFF3JwcpIQHlgcbya65aNqWn1SmndSfogcAaP9Wqp+wYbFUpuOsYgknbbifQS2kT9lZwLEn6bnyXTiARx+81rouidbQBQQ70tGdZuZMrhbkJnBAb0kgX8S3WdJBt4N9aYOScLk/mCNkrX1suqPm0V4mifz58Fqdgxyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762501793; c=relaxed/simple;
	bh=CMbibcT16GnLkLNRXJidFP/YglfcAFRnczK4qpd5608=;
	h=To:Subject:From:Message-Id:Date; b=Lnb7FqGoBmvq+oFRJazpU2oU4saz+QvSeZA/BiCvQNQVGE1xFDII5MEnteHs6Arut2QoRjJz5/pGsEGIulzRPSsXitAHpBZq3RXBJz2tgIkYuX31RXwP3U0q3vLBZq0PUyH4sUgbv9DdWg3NCWMQyvGeuqCLw2ow4reOgj8qTi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2HEd43a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2HEd43a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B129CC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762501793;
	bh=CMbibcT16GnLkLNRXJidFP/YglfcAFRnczK4qpd5608=;
	h=To:Subject:From:Date:From;
	b=s2HEd43awnQ+2l+xLQaDT2FT3iSmaW60zmPC9Hddrnq4Tc6C5rlM+/l64Y9qRtxRE
	 kJ3ER4QJdKLoKwQ3rvwAmhe4G7O/dBxUVPqj3bFcvpDiDqyhpBn0rDHA5JL3DEyHqg
	 whpuEA8tw5YwBPHjD+AEjjqZB5w+61FEVJop1TYF/JmCtQkF+/81Ef4yQTrl6ZDszD
	 flaO8gKymPtbYstXRWw11sy3o7WYlblDVhPWibdpb0tV7fOf6THqNUnvCwmTrX4+2j
	 8axz3eM7buFx4MdjaEuWtfRPYjv4Yqv0Z3gfrTre0VNhBlC+OWsQ69LNLgvFu99btX
	 SSdlU75nB8Xow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF3DCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250179362.14255.1528317920886257514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499f264a8c159da9a3c37da0b5677e3dfaa570fb3a3b400636ba0c7fccbe1602
Date: Fri, 07 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762501793
