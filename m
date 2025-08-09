Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD27BA36
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754773794; cv=none; b=qw4ycLe2eJHfFqPmeHtXsguW9Fiu/Hn1RCjlGDZg5IBfXhSnLThS1USOGSFd7G1k4aPxZ9EKPPje2BkiW0dFVerXNlsgZ+sy5ZyAaBTxB3b74I0q2m7SHvwOfIcbQi0Cktq35jwXh5l2pNtkk1lkSHcUlgDpq8oWz9jqvsWd6K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754773794; c=relaxed/simple;
	bh=ouu1Ih70UN+KJ5JcPu5tgj3qVkccPLFHjbcdN9KV2bQ=;
	h=To:Subject:From:Message-Id:Date; b=UvBVegs16BAzfQ0cP5nJReskka/jGABRsYUYaew/iYL+Rk3KIOeJfAsQCMhwTzteVcGNRV+5dKFZ1+ROQXW7pHb1HNvCY8JAbtCgByYBEJwbepSRVbTWhv8SYRToejD95i1mxwgiIy9Too57PpCSJX4/phsd5TFftvj8huQLC84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anxe9eIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anxe9eIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E52DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754773793;
	bh=ouu1Ih70UN+KJ5JcPu5tgj3qVkccPLFHjbcdN9KV2bQ=;
	h=To:Subject:From:Date:From;
	b=anxe9eIO7d5dqI4ooef5G+Q4n78ciTLnipb+Qtp363O+AR7UBUHL279rE/ozdR/zR
	 aLZaUXm2HlxFtctfDTe2I3S6LStmB9dugarNh9MGony3ST5pzm2w2mdbXhF9G/HXJS
	 sre3TfySkEeGT0x78QalWZzSTaZQKstj+kdknIKnwWAx9DYNjgJS5okHfRPYQ+dW/0
	 QSnUdssacI8RwrcyB2PqZd2CW+n3vquAgCNcuAPWL0VefH4kOsciqqLhumrB6XOXBN
	 O2boMcaKAM2y+0z3DOQZxZ2jAJMxM6N2FOIc2jO9cA/Dy1UnEFQ3/DiwtCU+qQXwEO
	 eSyTcaPOiy+BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4BC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477379357.30793.7848311203215199906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6012e494fc94747eff534d362d7798747d06c566688b10a5e2f739fba2823f1a
Date: Sat, 09 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754773793
