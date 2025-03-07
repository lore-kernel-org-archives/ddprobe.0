Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C411FFC44
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741339734; cv=none; b=jBiuizwymakeO5dADC0vpdMvq0cnHLIEL8gCOAmVGVDyNrlz1MDexx16CatROH8KwFDKLTmXtB6jIV1f+Lnyk7lOMyWgaT4LDrbKvRtQfKiqGWCVdMSdMfqWYoA81yDJL2h+m/aCOnVxFCZPJEsCNmZF7nXEJswrVrSCKmIHWRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741339734; c=relaxed/simple;
	bh=fB7oAFjBovQc1l4WFJ+6r6WogRrySQJTmDKkZJxqLwE=;
	h=To:Subject:From:Message-Id:Date; b=EfzCPmlMGyzzJJtSeVXvYeFD4VFjt2m5oR/b7R4Ob/kx5iNK5s5gx+4Gj8zQk4ZdbHkH5GJPnoVQi5vrROaOaWkEYsaIE+e7O3SJLxPu51TlNv1LLJLGE6Qbt0pqCdtPa28a1XbJJ11FqpErwjTXTpIGJJP2tJRrQrS+tMGVzx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwxRxpN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwxRxpN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5B7C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741339733;
	bh=fB7oAFjBovQc1l4WFJ+6r6WogRrySQJTmDKkZJxqLwE=;
	h=To:Subject:From:Date:From;
	b=AwxRxpN+pWottgn/bSPt8FkZUVXrGFzJWBms/hYfP4y+zksuXF65wM1pkW/Yb01Kr
	 dZe+M4VwimRm1Q5k1Xf9gNVjubU4wBVa3LkVzWaZ5c9vZv8ZjoWJVvbhCrtzZ8ijot
	 +ojOUvH+fKuAA8LoaY0SvI6HmareXBTi8HvklrZznSxK2hYZu5KrzBvgRvKOXVG+oB
	 doAK4se09us5THBM71XJ288pWGoPgQyd7bl/MivzQOmfgYYGxEBQqujbXcD27+5Sic
	 2bvcBxwHYB0hEzPze0wHJx2i+EjKBLsAlzR+wiRB7j5q99lgjZQ/+UXYR9zRvHOcIv
	 GcO3Y4QCNhZZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94070C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174133973359.30283.13499676304843556081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ad0ded385b46892a27e57526378f520ee793813968b3814802609a6e4ada6b
Date: Fri, 07 Mar 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741339733
