Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165A044C63
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764595974; cv=none; b=MHC8kbObnqJVElqMypnrqEnqPTOEWECBSwbGcJ/4S9NTKfbqrjr8TzdTIEdoJ8E5OgCAwzZszcF3zShrdwDaAVy1myEv+7kiByl/MDjaKUPEVCRJcQgvmKJd1UVOERzkhfW/I7hnPhlUoQfhUKnuLyHJUx+vgI1AcmHCo0DHscY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764595974; c=relaxed/simple;
	bh=zmB57xsNGlUHfEb+rO7BfXrfd05X1KFovcke4hiZ0nA=;
	h=To:Subject:From:Message-Id:Date; b=pc7RvEQbeDlI1xKPaAZYZunDeu47q79CDNk4wuy+GCPfjpapH+zlZxRHk/xeFCoKslFHDL5XMNUPfIouixS230gY2aaktRcYPeZ9ZkZEJovH4kquZzuevAwf3n2e2lb0s3aY811jTX3oaXOz8zwJwPJmPu5+YCQh7JN+YNrm8z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaT9jRNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaT9jRNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A61C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764595973;
	bh=zmB57xsNGlUHfEb+rO7BfXrfd05X1KFovcke4hiZ0nA=;
	h=To:Subject:From:Date:From;
	b=FaT9jRNdPxsn1XHbpCTk5DQpbFZHAUyTxGTrH4W7aDAnRfAo+IJmagZ4DSsrkG+HS
	 RBgttqu4SSY7vLr8rRBWySNlArvdO8Gl/y2R0/Jvcb8e+Iau+hWeKogzCsJ5dPMSQ4
	 Z96M57LWymz96KcBGUJDZPahWU1JQ57rasE63LYJHp2V9FG4r8SUvOAHI5wEIuqEbX
	 23c4dGm00gD0LDpzhv1hz6AOLTDDeSHNwtuEEpvrIdC5/sWB/fPvbeGDTpyLaW/lA8
	 Qe1PQso9UsmW1ceVjFwl2G041vpfYnqT7W06+jPyPY0w1Gq0viYld1p6Nt7umg0BEg
	 cX5jkpjnrahRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC2D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459597360.1673.9635216924624279058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6facb6b5bdc2903119a02b18a453ddfce2f8c383d6ce5ce14205a8557d3f7469
Date: Mon, 01 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764595973
