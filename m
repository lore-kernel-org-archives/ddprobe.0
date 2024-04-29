Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE177E0E8
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714402943; cv=none; b=a4ikI60nqJec+NL9uvTtv7GaRgL4CIhEbZda71dPzRqIdWqJtGSHZGHpJnXl/lBYCch9pvPg6//L/Lf8AOGZi4qe9LolbzTQjSCh/Jl+DK1k1cBaa5+Sk8QTIDQ/odz+F3ddzaJEFDc6ulZ5MZGnKFI2HIMS0IZ2AQxHMj2yPeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714402943; c=relaxed/simple;
	bh=0CKXaMdcD/G/xEutuRzqm+rymA8rPi+WiSZ+/+UB4Ik=;
	h=To:Subject:From:Message-Id:Date; b=ii5RChw2xdvxAaTNXFm2ef8GA62Ern3eNFrNiTPSbwgGCuze7nbiqeNJsCK/7wMtgCslPXDTLxIaq+LAP86EO1yAcHIfdAC/U6ospOstGV7qqPp8U8KZOYLx6kk2pl7wQnBcPmy4J4/B+lpV16bV/OvZRaz0jVxHGWPO5UqDImY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJGhR8Y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJGhR8Y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E50C3C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714402942;
	bh=0CKXaMdcD/G/xEutuRzqm+rymA8rPi+WiSZ+/+UB4Ik=;
	h=To:Subject:From:Date:From;
	b=WJGhR8Y6QmgjmePdugKIjpx5SMlhAD0g5dYoL3hvkZG7MYkkcd71qxmMfoKPZkgf9
	 Z5V0BhVlEAXsfJiKCGkS2vppi9p9sMLFUISOJPNDjjBaNNI015aUhoWrN9gy+lTfTG
	 Z+orzr+utNp/GxQ/Dij4chD5pqz4+gwMF49Ae5qBn2ptomWhJelQGBAd5KJ7pdQqby
	 /Mj1hqV7in6BbX2UVzdPKfkl9B+Ep048Z3DidJ38DPprIjTWE72mn6H/tzv1qh8Fzw
	 N1FThF9cdVZ20isoBApGcFLkJjiEUDKeonJnZroNKgZkTSODl8Gr+y8PuIjUHTH6gH
	 DJjo3wbHUT8bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD734C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171440294283.9661.6816987529490841952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330591745cbf645a50146f0ee891f4891aaa70b73eedcc61cdb0adda647a2098
Date: Mon, 29 Apr 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714402942
