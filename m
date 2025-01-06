Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59C1DB37B
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736205954; cv=none; b=PQCPGiZ5H8cJciysXTjY++/hQYM03uQxyrwIPUWIV7b16n9GG6YKo8z8sxnADoBZCzmyD8mDtyf2rdsdYUdFQBv3C8UpWP32gzN4EMn2oMWSrM7YX626qX9K2K6I5o9cElXXFGyCY+Ofbee2QV4Rda0298bhYjxcg/drwfarnFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736205954; c=relaxed/simple;
	bh=CTOOGgyLhp3w4HQ3y3hMM0yaCC6LWBLDLRyR5z+Or14=;
	h=To:Subject:From:Message-Id:Date; b=OINDC4UNi3sYC3lvivvm8Y5sR0FpTySJic9phtBl9hRe53GvvUz2bpyyRsPyf0/jwEWKqlAaY4oASz3K1HUgG+vUX3/CwfbG9u65Bm0GvBPM+jnHmu7oGhyH9TPE28lnx1kgReUgG0BSgDMbBRloc4Gpd53B5KQvKmHIKx7yuck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WN1zJq8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WN1zJq8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA433C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736205953;
	bh=CTOOGgyLhp3w4HQ3y3hMM0yaCC6LWBLDLRyR5z+Or14=;
	h=To:Subject:From:Date:From;
	b=WN1zJq8oP0DShsnxG3z/oHXNrcYTUAef3kDdR9q8ehuwLl0hkUPPS2q+86j7FooGH
	 N37h1i50154mMluTLXs7RycgkghSaxVACO30OMSShtr2R9Ecqb2iFTTurB+e0ZrvSJ
	 uvSZLwsj25Pxl4KsANgtXMEGO36bICead6FRwigEnR2q1HplqmOWtLRS0Jnz919ean
	 ih9pU5B/ITMDWrCXtb7jY5/ozyi3Yuu7RDIVf3IZ6Bo273G1ezskO0PZUyJS/XNbCr
	 0/B1UpTycpcGgua9zT7BgBmNUG/him9l8lcdjOrndKSvn9/P6gw8VChhLxi8057nqa
	 MpWVvbt4tg3zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94666E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620595359.20641.12381405910338035059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4f2b0a004a867fa3ab8a25d65d15e2f86869ea3cd5d8f3a30222e456670b51
Date: Mon, 06 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736205953
