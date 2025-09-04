Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171342405FD
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757010594; cv=none; b=gfaLqV94f26rLn1dhFL7LUWKBMy1Oa7IqfWScgmaHeVvDDSf0VOOARKFyUKnz2KwC0Bv57a13XpFl/SDyGlSRsFtVbZmER9vTQ0+vS63jpqWcGi1wJhc1ETVGkwk2YGIlFEKpfcTVafXSv+yNRK/Xg/w4Ly33KxwxK2qPqNSs8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757010594; c=relaxed/simple;
	bh=PMsT3EUVZc+EDEedguKcj5rFXatftjjX2MpA7vMc4AM=;
	h=To:Subject:From:Message-Id:Date; b=VP/MFd3bZaAlaXNoq9FkqcR8M2i+G0C0XYycnnEGTVsD2NYuVhzHpqTSY9nRgq/6QcfVj/0L9M3P/2xmH+qW6/dlWB8jkj9z1p8YjLGRprMT6x+c6o945KsUW/FywCoUyY1gpzJtR7oi3f7SOWS/vjGfu/s0mCftysIAV6zRh6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIKQHO/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIKQHO/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8441C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757010593;
	bh=PMsT3EUVZc+EDEedguKcj5rFXatftjjX2MpA7vMc4AM=;
	h=To:Subject:From:Date:From;
	b=lIKQHO/x6uzkWa/NHEKIuSO5rRXT0uEBfbPoNJK0yq7nCLkAGr2YKoL+AlgSyAYtN
	 3PGwHldr3PtUaRqZeKDayGcXWFo7P4sVlrfEbN1S0MaL9txtrJ1V0GUlXxJbIlKrIi
	 aNkQo3TEpRqjh8za4AsfI9j2ceY4DFxnIibXTWNGbheDDVSMta46F+9bOrQMZnHVsp
	 gOnoTQGgbIFYPrnfifplYKl2VVdcVwpSVCqqCy5f3fKt4Rs6t1PN8RCBQNKnUOsfI1
	 NUvJzXoI9OgSRmBzT7aC+vk3tLcPAzxC2kkUvfc9yFgpFWvjfMO0z63qkyQFneqYnB
	 jYoQSYPzFVnXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96456CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701059358.4083.11400540420784325132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804cfbf225a7c3227d2eb06a69849e1aa2ce7f30b579c58c10a23d8aa1c6aca3
Date: Thu, 04 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757010593
