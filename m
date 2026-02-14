Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132D5277C86
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771083294; cv=none; b=Cj6FvoSgWpGe/o41X2hqIRcH3brdj4wiVTElQ8wasEVyv3EyePzkScukB1BBiEQI1mYpZE9gN2C5LX1a9l7f0LkWQt4TlUvEcmAR1yXu4Fk+PpnMH2JyTH4hdNFcFd3JvXjEsqAXvedKMcThTOpTIwJrBxVYMn1ksGg4cAt8mwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771083294; c=relaxed/simple;
	bh=ZwQ4ZkeiyPPouQDe9SdW6+XvNGVfG5JmliGPfznwiGk=;
	h=To:Subject:From:Message-Id:Date; b=ReB616efX42XaQKOXQY8oVPyo4of2uLYCcnY72dY0L94YD4t34YIqr2T+RwrkRTJdqzLzrerAYjO1Lz7or5TUqpNJAjOJRt9rEzo6iwZ/PVQA9KI3hR43xdAi7E7uJZ2SzzL2CADip9D9tso0yYtwJDAZOKEkY8IynSKMwHucoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHb2sqY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHb2sqY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EDEC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771083293;
	bh=ZwQ4ZkeiyPPouQDe9SdW6+XvNGVfG5JmliGPfznwiGk=;
	h=To:Subject:From:Date:From;
	b=bHb2sqY0iBJieY187pTs5pHyoJ14uujD1srNtwouq98cvC/qHbRcAw0PYlLAG7XxN
	 sjAjO/y1lYLt6Qei/HnhaSaJOMguh5JPfToXAqm7iyZApIpDi9O3osE5qx7VH2cxpX
	 aMd+L52YaQOsNsRvokZlEoHoDAz0aQ6ok7nyq2qqE5A/y3lqmg6beOujE/kjwBOWQF
	 H+a0l2H5n6Ty2bDhVc9AEKrNpVd2Fn6T0AlXmwP7mh7R5KISLmtLQE7GtxvuuWj3xD
	 LJzDzl2lzOLE9yr+8v9UPgk+Q8yjg5jrAREG/a4oyLbX2R3Gla2Lx2EEeQlS6qB13v
	 qvcdH5a2vm9dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CEEEF5841
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108329359.5668.13722413876208382893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c6abb7fc32b17f7f7a0673d797e39668eb9879129e1790dea4f558f0ac4291
Date: Sat, 14 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771083293
