Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E516A33D51A
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771654494; cv=none; b=f7ri7DuHO05PcsMWw5QoDjhGuvUeT+uAqaLFAJe6oA7QIWSPMYWsrN/eZ+v+XmpBGaA3pFSrDmn6/jYevzWEwjt4qmtcCE6+x0dkiJDnQMkQC3k8gXdmCVn9pU8KXq3X88s0M34dybZYPiGI8NsKp1FfZWcA9kjTO22mWVbXHDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771654494; c=relaxed/simple;
	bh=pUXgeHLjPyPdGs4I0VozefWaKph4WBD5Nvg5AzB2/Kk=;
	h=To:Subject:From:Message-Id:Date; b=IzdDSpzXDBN9WeuR4Wvh4ZpHG8xB0JKDYn9G23UqfjvglwuicYsCLtiWuQa5I8HwEgF8BR92XVoPP60MM82ycOoEpEyZ29fpByNbyQ3o5MzFB8pxhxZH0wlbK29sLdvZPV1DTPPZ2i7hXrRirHaZrGw94HVPYqjW3tg0jrhkdlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgrzJMIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgrzJMIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3B4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771654493;
	bh=pUXgeHLjPyPdGs4I0VozefWaKph4WBD5Nvg5AzB2/Kk=;
	h=To:Subject:From:Date:From;
	b=CgrzJMIXD1NHK8zsxlOTT53AbcgoLBh2O05xDbjv17aeSTmCJir1R62Ty+PIwGk3P
	 vgwjjBh1XMj4to1hx2GSdWuZxKtCSJIRuaiA2z937QEX8SEDyjt+vN2QSrdCoREbuQ
	 0iQ5Fin4ObKwUvwSBU//1nLGv4rEUhXFCAZ2k6Nyg6mNjSgvGowfy7b4sC3Pw8ZvTm
	 xDVCmQBuVn3PA9AqghzbcHUVMFpJxKjB37nttoZS++jDRv4kIu547dDooIusqKJvSJ
	 xTng8QnxAcPRicYjtfS0dOztRu0AGKR8lB/xIaZxIaSFo81yA1YHFtM2pBz9cGfK7B
	 cq9ij3u5VwPpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4A3C61CE0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165449359.13043.15556931644286592583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df0bd3d0d742eba5300bdb4f494d4cbae00bb2bdf04ebfbbd22baa3f58d60e4
Date: Sat, 21 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771654493
