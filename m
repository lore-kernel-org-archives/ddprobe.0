Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FC130B514
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775199334; cv=none; b=c+hTupxM+c1AT+kiQ3x4LtLdPd5isD33hGq1iaiGnSzr+naF2Ukd7eHtbAjnaVB2UE9UWfyMl7UNJihWx2DZfVUd5TxgoKieMGXhDDlBN1+495LaIuzpWhNK5joYIDRDRlxV/t05xBwbCHKJcK7VZ6b3gEpHOeazRX0VPinIDMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775199334; c=relaxed/simple;
	bh=VcoMEd1Qzc2U7GBTBjfsryJX/3LuKEinwDYGup5B3zM=;
	h=To:Subject:From:Message-Id:Date; b=LEzOFo/jNR+b+joHEHh8Sid3RRUdu82HTf1+qq3EXYA/Vdbs8WGOorbwT8IlMGrhRsbxoNFgVJu5HTTF0YuRhOT/FURkZYkGLasBre3rHGh6raKoXQBtwvUvrgtrfytGBLb47RhbbJ3N6cyoWTKTmwJi23zFb+tN2xtKi12Z4jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOXRRC6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOXRRC6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFE1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775199333;
	bh=VcoMEd1Qzc2U7GBTBjfsryJX/3LuKEinwDYGup5B3zM=;
	h=To:Subject:From:Date:From;
	b=LOXRRC6U3f5L93JIDPZ/u/JTNQualYx6w9NO3goGO1qztLMlkpUi9uN5hatYJd9Eb
	 2N5jHqnP/eC6wbrN+PT24+qagl++fmFWMxefOMuNjfPlRbRVLx5PlYB/Sbs5hJUGzG
	 cpG8IOEaYy8Xu6cdzHLB2+mAlgJ1HKylf8b352qG68eCEWDbKsHmrf0P/mkzpuAezv
	 exICdPKv+SMywMgtNFtvpFoZqiMxF6urQa0imv1rXoI360FRX+U8EdviEV82a7ffUh
	 AUKaBF7I9KH7ixBxHnJpAWs+xMO3WvJSSqPw8VdI/I+lUCnPf1j56B3MS6FuxLw+Yf
	 myO1tCNVpUTaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB096D730A9
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519933369.13309.9365165528370286840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21e42d12a53071c0108f033bbc4cd55ae264938f35ae3e1fb05fcf1e80c0e92
Date: Fri, 03 Apr 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775199333
