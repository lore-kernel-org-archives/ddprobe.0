Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61F02DEA99
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755041393; cv=none; b=fflQruXkiYWoLhhempIOgLTQ2s1vD+nrtZKavp207GCiiXmcImtH6EIWT2mdnRvIwzDx211X+IJ5guDs4IpFj0FJtkvS+uNUsd9+FxX+RjCaoLKcSkkY/VocFsooi+zGpTWp/syg2MUhDjnpNdI21bWDL9YgkUO9gWp27j+YPm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755041393; c=relaxed/simple;
	bh=wqW5VD/pgWoZD3m08WsSc75BmnwKP4TrhYvn9SoP0rc=;
	h=To:Subject:From:Message-Id:Date; b=qXxisOZrpW/jQLs8T4WLAsreA2tFM9Y6fhvxIVKGzHR0+j/C/PyPPq2uDi3xFuBRirRHAqdTV7zA8IjmrIQdjURLPL2GGofXADyYkBDXr/XiaZcTKqEFN/GdXMjOw+BHm30bwydtnpLSu6xghNIqcsac12XQYw5mhxIdYiy2VKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCvAMhxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCvAMhxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3160C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755041393;
	bh=wqW5VD/pgWoZD3m08WsSc75BmnwKP4TrhYvn9SoP0rc=;
	h=To:Subject:From:Date:From;
	b=mCvAMhxPjGCFbY5in4hG8AUaRGWHygys1otH1O868UEw7HwmUF7bXgdmPcFBbiQE8
	 qkrkxKERW+aN6i+ikNpem5MeyJbgaugDYP8WTZ39MRawowEKuWjWk1HPsfd/fRJizp
	 CH7EbejWiwppqiVsjdz0Waz6F7YuBRjt8LKbp5KZ956vbkMVjhFIyygcpegp6SJnK/
	 1bXwyA6SDfeomDCS0GmMLCKiNs8y5kMUuINYM0Zuh5azCFelzSsy3tQm/oRhWpTFMz
	 4uAN+G+j93direHKNP28u6FkLFcpKXmO2Lw6an/nqL2aqrumRFd5mZh2KaU7rhiy2m
	 vJCVfvnRBGf/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949ACCA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504139357.18488.10117900085061243043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486562cdf7d5f41a59b29ae7d1e1e15be5f0a475cb9193189e7b043e6399bf06
Date: Tue, 12 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755041393
