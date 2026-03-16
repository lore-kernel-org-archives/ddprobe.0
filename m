Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0901B27702D
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773660294; cv=none; b=czovABWMJKQCvQrgpuQBbaaF1HYNcMrryaIhdqmLa7PbXZpuKDbEhffnlDidlJ3Ki92AXusR4/UiklSEGZflpbn5hqzg7C7T9mEzlUWSOje5cvzlTbve42DdFGnMalY8wgs31keWFPnihlLuOrD2QglXu6rSNjeOEINn+Cf3FQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773660294; c=relaxed/simple;
	bh=yEB4jdXft98JRgY9VST7EFAmXtbhXvkMq0foP+zNoA0=;
	h=To:Subject:From:Message-Id:Date; b=Fa6SlDBlUWTgHwzRvbdUJcL19cAkBCZGLLxB8fAxeLQbdjqzm43pd2Jp+mn8R/fy3ZN6yyjsfVS0N2Fu+R6MwC8zrIeYA3PowwcHSjzwfzl0YNfz6lgcXSOar8SIZMIis1ypv2jxpiH+XPqmew7r7VpIIC4h92s5gzTNyTzdxsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YT47VW02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YT47VW02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BB6C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773660293;
	bh=yEB4jdXft98JRgY9VST7EFAmXtbhXvkMq0foP+zNoA0=;
	h=To:Subject:From:Date:From;
	b=YT47VW022u4NlGhUMeuvfhKCu7rpjhLf/MUfPgvt2lb06K4cnP1k6PNUAMVxrr+BC
	 BpuqGN6jYd4NLxIBfvaowxDEBD7xtPJCM9QulYhRQuTpgpOs5srpj5drKSZnjXDJaW
	 cASV7pI/DODQl3F8UzI6INuYlqdkBG0mpU0d6c9TjHVR6dmfrUdDH4g4xLUZHnOxN0
	 bQ2hE848csj64WFhJ2e7BjyBrLtq21eYpfomTBBQvXjPwMfh8x/olxeEsh/r4ogMmS
	 wnWetcsMVaJ2qDrOxAo542w/tjR8IRKNEADU0nUUB8yu2G3DPp+5W3Sdt9nTjA4Vfa
	 I4HAj59fq6G9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D6F46452
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366029357.23286.2033385431471930520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cce16e6b987f5800e3b83079372fc9932464e868ecebf29e837d1714b42bd3d
Date: Mon, 16 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773660293
