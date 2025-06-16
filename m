Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318912BEFED
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750108795; cv=none; b=maRcKO3i4ZPn55ez/gnLnCyrjTcA1OMCZ+VcLe1v24GaklsallifAflH5peCkBea85/V/5NPaKRtXwmaPG/g2+IfXMNtX4Cq2sgL3UF1lrTokTgOqEIAZLYHWIYWTL7fBRsSw34dDmhsucoFSQ9YDxO4oi3MIEwxfA8cUScrkog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750108795; c=relaxed/simple;
	bh=aBK9dU4kNCq4RCf9xVkUk7GaYF4qNHirbbWJIbg4NdE=;
	h=To:Subject:From:Message-Id:Date; b=CaikaB6sr66k2gKX9UNBWN+RvOxIaKMXys8oXV17AYlju++28uk10K5wy2zEI/5EBxVTVLZxNbCcnRYsPsV/CzqaiGczpmtTCUwZsfqNUrSeQbEsv0xTrhA0HmM4e+ed6lHZnWhXyuhj8/bdTcB4HT2AbA0mVQbhXBXDJiB66NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5l0LxNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5l0LxNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE6C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750108793;
	bh=aBK9dU4kNCq4RCf9xVkUk7GaYF4qNHirbbWJIbg4NdE=;
	h=To:Subject:From:Date:From;
	b=k5l0LxNZUBmSfN5C9gCTzjvIQ/NuL0wLv54kXFj9+W/5M2mMnxZ+D+GAwLOrXaNmP
	 lNBAASA5HbsPIuE284wfKY4h2s8DwBs8hNqEUdDNud08NRXY5pfLx6SWdZq0sTgBbr
	 f5P4/5zeP5Ftekzd/TxrOtmT71hVscbjguWG22k6CaleDcB7ZfYWpMx6qZc4UHXD4v
	 1ngwN7V+zKdGUmnu6KDcoHVXHJa6+0hX17vqsaclyeQo3C4d/BWCsTQ7QMGRfu2QtN
	 tJYGsCI0gKVmu9RSQm5Db2QZSljj58LsPPo6csSw0ZOhv30juj8wGK5E++Hn3BHogl
	 mVhOS+4LyVn7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FEC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010879358.6537.69977167131674620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b917b767c25e768a95f2ed69cd2b86f82ff104fc0bf6ab1576defaa7b7fb152f
Date: Mon, 16 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750108793
