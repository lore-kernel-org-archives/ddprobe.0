Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B3850094E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768695834; cv=none; b=CXUiq6kyz2cs0oVIJy9MuWEJBL9J9IIl10kZqnh7dVvERnrdAvla6x+2RUHNux7ujvkoSHITm2BhiAcBsnaw6OBXsqdZB4RuqERXIJ0L9ZkgDaNjlsYlBMhqGAvP00vFp1d2fAqGYe8ZZ2+i3VjRTafh8B5c135wuEv5lWOjGeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768695834; c=relaxed/simple;
	bh=pMEvA9CVWeCa5LCjZAhotApY2NY413dDPn2i82tgnNY=;
	h=To:Subject:From:Message-Id:Date; b=gynAeJwaDjC5pZ91eSQ2JDxTasJdlrS5wY55Dr6t9UQJR9F9LvvYwLANAKs0HeK2QnCNgZHddJeOjgGlsLzPFqy4p2qu29WV2gAudvYyN6T8jYFATrYPqzEUQY8GYbLXOc179A/3fVyGzAL4rMIDID+hvazhEMVNqpPXnbBRnvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEFLdvDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEFLdvDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E88C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768695833;
	bh=pMEvA9CVWeCa5LCjZAhotApY2NY413dDPn2i82tgnNY=;
	h=To:Subject:From:Date:From;
	b=GEFLdvDWYKgnEsxnhU7UHAnp7Lzt63UFzYhCwNgMd1BLTIRrFauBdcGvLnfFURPRL
	 EnNJB1zJJKyiD5N1YToqJBMxBtYyD75gWiDNgodY2nuBhfMIBe6tIM3WT/KxthBekY
	 6hPz0aHnojjvBWmb5NhUA1HT0yCTIPtf81cxKWrYEKfHgeBcraVs8YeUi+50ueVwbf
	 jh9J246uR4WCKQKbddjgxrOaJtCYCpE2vj2z/7nxGfnFt7naz/GhmKSe21i9ixCceR
	 q6QQK2qnwspyF7jlSbtgQGmO4D5ODD4V+ye8vkypaw7d5Vs1PP/8HIG4I5bKmUMuHZ
	 QfUW55uuHBWwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96298CA5FE7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869583358.8706.262997695933533084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac684cfe29e399db3d87ae55d19c098a25ce6d845d95539e55d3e5fd50133978
Date: Sun, 18 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768695833
