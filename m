Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FD333E7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746331194; cv=none; b=L5zOl0UE/Cpfzzsg1JaVDwcWsoYBLSd0oOPkaR3rhN4L3H2ETrvCOO1zi+bDRzza/SLQnm3A/3PxbdA9AoTJIZQWNnqA2DQlvV5BboWnheY+7B6iyZaUmX5Wk6fEnKy5dwukR1ldplD19nJ/AzpHZgQcOEpU0OEznej3tMqSXCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746331194; c=relaxed/simple;
	bh=/sm1mUDqlior6rIK4/jk9iQ8DtjXZUFMQXm8wsfTixQ=;
	h=To:Subject:From:Message-Id:Date; b=GOQSov0rIwBXYz4aw5X17A7dY2aLrfvXxf6sqEwSgL8W0b8FMzceJuBl9yMJ30dol6sgzqzkdBbK2XEH1hseyxfZ3smVnf3sxaEIKL5LajviUqZY62md8vuW26o0rMCnk5LPvkW2MasYq2S316wReiFhwVW9pK0GxyY7N3XJ7/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zyl2PbR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zyl2PbR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC3C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746331193;
	bh=/sm1mUDqlior6rIK4/jk9iQ8DtjXZUFMQXm8wsfTixQ=;
	h=To:Subject:From:Date:From;
	b=Zyl2PbR/5fntXpQBfSC5xDh1XAPzt9nT2LbbiECtMGjOF8/03wWoys2gA8uTm7btU
	 r4g9ZuQDlYpxIQ7zxg3QBSFwIbVsW2+SRSStbOaK5zhPUA6e1Wt6gzxnEbXuEoqF2K
	 ck+C+zqcRtTeVBRF+/82EFigH/rg+fl8DN1OzpPXh04RAtz34D4gG5tXFSOLJELMop
	 LcrSasJ70i/FQQt22vjwG9JobYSLo+bEywu/hvf6wPkIpguLAwpQiVHGohWcqPXuiO
	 0OAkZohYmGrTD7/FaBUA3DRFBBuvPQhPA/ti0JPQ7sh3gFSuYKiUO8rjqyHSFTUsoF
	 sO3jQ5COJ4f9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A5EC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633119357.27941.9835491530584717401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a1de980d691062bd96833d0aebbfea417abfb4b15d70196acabbf281ccbff4
Date: Sun, 04 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746331193
