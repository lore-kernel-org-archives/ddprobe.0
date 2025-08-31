Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D46261B78
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756645794; cv=none; b=Z5onDWoj+wnCkAaQPuspd10iWtKvoYlHvYUULGkts8/lEzCBYqnsDZSveZo3kPoaJ094jLF5IE+b8ZDzJ7pZUgWURHlYK6IlOylniW79PrId8A11NWQerDELTQg4wxRZqXztiO+sByEcCtvlziptFKV9anLQqh1G9k0/cZoXBTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756645794; c=relaxed/simple;
	bh=PcU7PX2TmXO+DDJ+oAnbdZ5rUBoP9ogZH+CeWzPFPAo=;
	h=To:Subject:From:Message-Id:Date; b=fsID/E7zCRKfZLKnTFmDuLr4Vskg6ykvS+TvnqEOBxdWVNFMzXMsYGZ0Fd5jKeHvm+1GRYWB//i0P7og4DUO3sLJOlTwIsO1CVkeHfv3CDVvB2f/TNKq9RhC4Xs9VdyVzbSZs/BiXTtAZiLo7KDodqNNlC2af570U5gPStR5mvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YW2KDdgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YW2KDdgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A8C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756645793;
	bh=PcU7PX2TmXO+DDJ+oAnbdZ5rUBoP9ogZH+CeWzPFPAo=;
	h=To:Subject:From:Date:From;
	b=YW2KDdggP+Yr2VeZN37UjFuYWZFFUV7VCvMbFsq8ZQliYCwjmU8iwjlqqQzmeD/O0
	 SJbUj35MvSHPm4EqG329diPVbmevqaEz7VzJKITpYczaAAHqFzk7qA4nxEEdg7g9JD
	 3DWLf7T1+UcvC6fHmv1qisofUw/Y3i4pRi/0B8FAuZMVwNqG3/+Y9oEBXOy4e+aPcD
	 QCbxrk4zs2Dt+P1mXaZE8VAjd3SNGNoS00xL/B23zrDSGCSvh5RNGRlCE7tD6Fx5mL
	 +MZcnM2bkK1z+CK0glR/mwyr3XhKmlbHzwqxTzBQIK9zJRl1KEs5LyXYBLsgBw7wUD
	 Xfn527t7W68lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA9CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664579357.9103.5127071105180319277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8a5c521851e0ce4bb44c3ec4916454db69b9c8dacc25995862b3309139f9c7
Date: Sun, 31 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756645793
