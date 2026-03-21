Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DCB175A8A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774059894; cv=none; b=E0Ui1N2eALc3zcq4CUZ5f3LGU8qicZaKnKdo6xRW3CXE5qfAlmcEtZikM0Mcesc0KGl0Iune21WPbq1eo6PSnAG7Sd2XrtvAevgzWnMaCAZa/mx7mXFzqcgOe1lGpM8apl1Vta3D2KpGC7GJVvArNWMoP5aFok23VbllCFOaoSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774059894; c=relaxed/simple;
	bh=264eCvf03Rh/E5d8sWkaP3TXqptOrWeLkLaIAK0MjLU=;
	h=To:Subject:From:Message-Id:Date; b=NMiYbs1dPV1cMTQ8leSgIiYSzcrBcoumVpd1o4SPKemo2NQA+xXxEZKGy0GFsfui2+UwzpIychsDykWY3vdCSNPSf+wyINN+lfdjHkm3Tbeyp1ujaBmE8iXRItNbqdbP1V+1OgitvV96VuoTrDmEFtSqe/9RQq5tvwIhHsn7hzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYzbyffN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYzbyffN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3D5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774059893;
	bh=264eCvf03Rh/E5d8sWkaP3TXqptOrWeLkLaIAK0MjLU=;
	h=To:Subject:From:Date:From;
	b=HYzbyffNh4J4Z1yK59HVgMBW9gTkjp31gPGv4axtpAJROV2WgYHmoBBbXHQCiNJDm
	 F6eVsZ7uqbOZ0CbbJj1m8OyIjgTNyGzhiNH/7plztzy70vU1tr5UuMAzJnpbOOzsOD
	 2sV/dZ9pln5ojPbXyyToltCPCnm2o37xuTORjazymvVyqxpowjV5PNGTBv1ATwUgoi
	 lpY9WFDp5POhChr4HNnNi8+Z1eldXW+LIi8Q+eQuLmbazA4hoc/bcTENGHASutj4fd
	 5jX31CDoIXUtj2g8jA+pWSXl6UQmHWovfzE3NCAKyEO/AE0Y1Uyk0YfZl4A4kLwkfV
	 PQWxnlTibE45g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D71099B5E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405989357.16773.15208858360008967933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba0a9fc97d5eb5e1fd0ff700ab96d45c67c3f0e4a0fe53b714f40bcae0b276c
Date: Sat, 21 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774059893
