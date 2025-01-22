Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ED12153CB
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737574554; cv=none; b=ciqSWwxDKJ2/5Wcv1LxF1rg580rlI2GJT7/+2JFJoq4ejc4o4XdLPFopDHtpOJDorcCaJltQ1Y2tGL9jT+3awUSQZ59XHn3LIxPG802TKG/Io97sM0eIWKoMPjDqEGeNBeRYx1XRvgLlcdYLWRxWj/n51RQDU3fnI0oJi4affRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737574554; c=relaxed/simple;
	bh=2m2tvGHcwby4LnvE4OjBlLgWtnXFeshMxHqN4PkxBkM=;
	h=To:Subject:From:Message-Id:Date; b=Ib2ZEOqhuaVEKuFrTC2sogm3ouNgEVEalJVJP1+rFJiOOQhYE4UEMAh9m24asN5exSiOFRZZ5GBiVrOhPYUEKlRgr8l1KTkKJhJcmk3aD+h+mDfqQ6oiRSqogz6fXRcYG8lBCFLWqGr4dXX7W43nXues2yPUJPeH9IsYnoZujF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rayHphi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rayHphi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1609C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737574553;
	bh=2m2tvGHcwby4LnvE4OjBlLgWtnXFeshMxHqN4PkxBkM=;
	h=To:Subject:From:Date:From;
	b=rayHphi6bqwRr4ds2LUSJE+i82aWGss+QAx4XR9UOWB48JbIc5w+VXu8mwVvHXS9e
	 ns5FpVAQkhG5+XCAAkDIz+TD8BTcwlBUgbVq29JoJVy+XvWvX9TQhgEMUWwTjnK37o
	 vwwMTHMLcbGjECbTbiQU2dDja4VkRx+g6LiDPLiUv11m+O9SY7xeUrkphDExQ4LNsf
	 FR2GwP+ncKN5Tv//3Jz5I0vd5BwxsaF2tkuA5ko5b9x5zCQMblTz17GKi2XKJMyRXu
	 SzSmpIilRW7D66DXE+GS4iWUY+20t2MNw45D7ulMLXLIoa5xSPAZxceKNj8CerrNfd
	 sv2ILiWaVbz7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2266C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757455362.24619.4125149496538078850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4c257dfb70ab48f70709afd5256c01303d1922613c3ae86062e2257390e502
Date: Wed, 22 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737574553
