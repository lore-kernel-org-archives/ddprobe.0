Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08351F3BA4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766747034; cv=none; b=Klrf9axylwZsIMgdXRZxDKkuG6996409s+/DbjmZECA13/rXmS14RIZlpifRSv8RChVBUz2rHNI42aDt/2xmRzkGTDvuZIzgHX3kyyPqSPD0z/jcURFyEG8FdoUrRv/I9xq9hL6Sedc29pxm4Xf0N95sh+dWpn3k5rFb+1vLvRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766747034; c=relaxed/simple;
	bh=gnzBP5U66u+ZlrjaWgPmt2L700rTjYZteI8lz1bI1LA=;
	h=To:Subject:From:Message-Id:Date; b=ks9nAWhsPiYNlbaQG8R7FYtAlmolvMi36PnWgFzEZE71uiCdZBByteFcdpc9gzswX1H5G5ylcaHHYAOnFDKduO6QmAscNLqpmiIaKfiOBezYNi66U175so5M4sO8/4YlDlCCrjHzpwumPEPLLG84v/r4rtPdJoGBAe7PvLatY+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+4bg0W8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+4bg0W8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9EBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766747033;
	bh=gnzBP5U66u+ZlrjaWgPmt2L700rTjYZteI8lz1bI1LA=;
	h=To:Subject:From:Date:From;
	b=G+4bg0W8w1tU3Xy/GjiTfWNIBwfFrjG21Oy47Xg7HNU9CDRk86fc0Tc2GeX2/6CQa
	 NjKO9pmudvVHjG5uY4frftPY3lElBJGfwevxXNjbTQXMUYwZUdpRPqFog9YTQ4vzTs
	 fd0YOk2/4AuWgBcUn2SLcUgPS7FSh6DxXIdw+Fbh0sjmZ83zGMZFCkMOT7G3A4+nGY
	 xaz6t+tDjxxtGffDljXyGvJVdxQnM4qL9Vpr49cNZvetQc6nwyyjbuB5MUM3P5EbgL
	 GEEanH5DmA1HxQuk9PBmOjJUs2J3fVIdFuGU9V3LK6YMzuTTZu7gJkBlFinXpmVomN
	 10mkUZsm7HR5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA2EE8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674703362.29532.7098961200378625752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91124d7f4ebdddf6b7ae58b7f8372d95f1197f43429476e2089c663e46c11b0f
Date: Fri, 26 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766747033
