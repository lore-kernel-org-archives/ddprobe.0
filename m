Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371891E8322
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747682994; cv=none; b=BN2M0zlC75KhR66eJgtyfvpzAOwvoUP6dTCbh4xLjnBwbtrADzOAjc3ONzx3sTs8w7962jxzzmLLqbdFeVyT2X40lP28vRfvhT1ZFZT/62Th0nxYAJ8jsJUfhSC3D/Kn6FXcP2LO5t+f+x0448fUUb46vjKNvZ7ocrA+SuKYAuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747682994; c=relaxed/simple;
	bh=STT8HvPD4iFG2OjBy/zkufriTyw9RxI7DA/3YJkHFfk=;
	h=To:Subject:From:Message-Id:Date; b=Qq+5o2I9noahBgr2uI0rALfQARRqOH7WYR85yD7E1tiRlkGQ9PHqVY/rIQLMOXWPHdQSQGhcSJtuP7+LZHK1jHEh5VM5IJFJJQFTK2zA6R0oOjS3v1zKTpWMI+F66PtAi/9+ric4i2Ra27Y7qdBBSCdUZbucfUEcBGqOuaZUb7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWX6Ncwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWX6Ncwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4959C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747682993;
	bh=STT8HvPD4iFG2OjBy/zkufriTyw9RxI7DA/3YJkHFfk=;
	h=To:Subject:From:Date:From;
	b=SWX6Ncwp0ktb9hBain902B6E39GMEBirTMH1blRic5KQtzAFg1DrXvuR4r2KjWw1j
	 IOGPpfkki6jbR6DC07B0HKdL8sm601ER1XYUz2j1oNt4NHHu75gTXtgv4/GRsMyGW0
	 ViCBBhTwIwmXcW6J8jcpHwpZd49dLkQ7wxXW3DC5id8aRNJG5rEQHWWZDRCMZ39o3r
	 RJpDf73hsJrP6bCbc869G50mwSggfRLXw9Y+ZYcFoZ0HCpMI+H2o1WA4sigHALpmtK
	 o1givIw+ZHB2gy7P/hBtfj1PJg8V22iktM5Bw8NaymuERnm/SzJBkTRp5zYA9egIBn
	 btox6uYLeLyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F469C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768299357.16639.4385512977513357717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d683128213d8105db9f4d2995bbf8042a6054143f88215b563494190b023e8
Date: Mon, 19 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747682993
