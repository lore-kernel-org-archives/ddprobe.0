Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0DA288AD
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770419034; cv=none; b=CiFq6f/sNpTYBsaF/PY7+yJK26XVUyD8yK9XBn0uPwdQ2VStrPzS16A2ZPv7AbKCTPXXSReyr0Bu89p/htoPS12k3Ytrv8hkm7/JpM8rxhK5lSFKCmvQuAry1rq6DEUwuh+YKIIAyh3f9L+SX89M308ZP6ntttNZG0cSppGrImo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770419034; c=relaxed/simple;
	bh=wfb3KZ6Rm609ncewS3Lw8UBtnmXQ+l8rFlBhDqAlMZg=;
	h=To:Subject:From:Message-Id:Date; b=HetWQawVudTppMXWANM7vUuTC4l8LeSSRVr7L++pi0ML97DIxwzvNVA005VIkqmkx19cBLn5Oi7WmyTm836imwHEYtGgDIiWB08UAIq+Oo69IGZ6bT8goelgwrhEI9HEFBhfNaWt9NzM9EhmFuawpOoXAhoY7MhLlOt0erMgofc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRrXm1DB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRrXm1DB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9994C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770419033;
	bh=wfb3KZ6Rm609ncewS3Lw8UBtnmXQ+l8rFlBhDqAlMZg=;
	h=To:Subject:From:Date:From;
	b=RRrXm1DBPMAztgWnPXugjHjXD0S8WC25YQqa/vXX9XKfmdCIb49So01E1Jk9E8UYb
	 aRLIO6WKhGDuA0mx49jL6bqwq1CrC00R357d6QwSNrljZniVupzM8Xbd+T4pUFz8Qh
	 f8jzTZVTrtE9S8UMvyb3DV16eGWY0965mOqANSogPagxyE2fNdythrfV4HJ/XPLpdc
	 F/aiNmB4zLJiz2HS1kxv6dk3dxkQhJNF7E8zlWPmCwux2qAFBC7k/sYaTdQySB19Mu
	 Eq6yRgimzPIji0MQvvxKE33WeRil1R7PZkzjnmE7actifauG9mF/biO33dIP/jEnCz
	 ns7VZvwfs+cuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99755EE6B66
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041903358.18533.17972055968698633231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0448056939b919db961221f9ce36f91116ca005b339df35cc723a60c679be021
Date: Fri, 06 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770419033
