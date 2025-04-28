Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD3F26A1A3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745848794; cv=none; b=LysDtjnXhoSR7bWfJjLBtDtQTt59IH9i3BYDyI+2kKGUHQuSB5HElLWR6/vxjH2L9KQ9WZ3nFDZF6EwI0buuptknTv2l3iReQXb5ppIDWY7SuECqsbmwzjVhvH25e20NMGRYWiwcMfm/VW2kSR7tUUnoqLTJdPvOqysw4wDr9vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745848794; c=relaxed/simple;
	bh=hm8MpZmKnTOju7bPSL/hUuQf70QY2wCGBBy3GdIM9zo=;
	h=To:Subject:From:Message-Id:Date; b=gUYed1S7ZxCHSAbl9cHukU1JtFawoP2Ll64AfCrfVh7tBUJFa4OUSSePNAPSTrbih0OL5Qir0P0KgdIKfOHDI/Qtt08fRGxd9+EUepJ6+ujaLBED4neg5OESnTFhh/OMXr/z36TWdh2PcO790oEK3uwgVa7tUuPSIXI1+RGTe40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuZlqdQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuZlqdQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B33C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745848793;
	bh=hm8MpZmKnTOju7bPSL/hUuQf70QY2wCGBBy3GdIM9zo=;
	h=To:Subject:From:Date:From;
	b=FuZlqdQJkS1Ey9XFB7vrfj3/9TesXXSATVQqEEXCoLgjadbEQO1dcZU83+d6lTBRd
	 Pr8SRoZRezTkicn6AWO8TIqedyVoWSzYKp7b6Qtl7yh9qDl4Pu80FL56JjO26ot1JK
	 wjyUHU9xqQd5/weP9OTlBF/8I8LiqCXrDYccY8Tbt1RkCyhfDoeiTTCC2PXtohHqqH
	 0gOWZH5FTvVp683xDSfiuTjkGAHqgM8wKkC+8ldy7lyE64t1vhcAYb1TzZ1skh/q2o
	 fprrZ2zbUPJGmFSyEQFRmrT9i6lh2YNLolA8stSQuxayqizQmFY1OZ6Lmynt9SWM1x
	 1IZO5bv1zogJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F871C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584879358.12782.12592652144102606344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9d5fe7d3e52723a20781a9615c3bdd508b63775fd7648b2597e1a3227a64ed
Date: Mon, 28 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745848793
