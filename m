Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFCF301472
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764582174; cv=none; b=YuPYESercsip1KHVJY7ZA7MxTN5xRh9eR78IR3duUFBt0+Y2YyBOtKDz8IkOR0GAe4PQ/XDJHubXRVH5AFqrcgksowLboGZD6OAZtffLAsdU+zQMzrzEy66yFIUhJwBnHD3VObgD9CXHFIGUHeFWJ4C/RQsoeXkx/m72qFAReg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764582174; c=relaxed/simple;
	bh=fXsB0OkejIsBD8ByQENHBS3sYyVwH5erk4eEvgfuW70=;
	h=To:Subject:From:Message-Id:Date; b=IHDCdbmbUAi36j05V17VJslIncAHs3yYWTzbQ8j3R2SAlMAUlZxA5ylIjOzsOW+BwacxiAw6EhqCKSwSFoNY5L2nuPX3r8W+Saux3hxZnRFlHwdsMHOtFvIB7XxUn+fnS3KZQXYDuuHxv8T/iK8jg4HORY2jtEEHQ4rLrBI48/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Td7zjkQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Td7zjkQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05CAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764582173;
	bh=fXsB0OkejIsBD8ByQENHBS3sYyVwH5erk4eEvgfuW70=;
	h=To:Subject:From:Date:From;
	b=Td7zjkQqlNiy+fNNZP4xEYCWJcgVg7fx0FGbjL1v8MEZ5oyuO/gl7ysuru3ol2Hdh
	 MMuj30L8xANDN2/oDuSTr5jtUkto+MO9fCWkwmRwWPUXCDX5k/mYpSrzHAVihHLg60
	 vTLYnHRfNDv2vJ5tABNI1iLgOkY3SfC2SS1sAqDvFa3kyGu20NTpf0aQdPKTwVQ8yZ
	 DT35KOzKJ5We/d6KloelyKyZrKQQGmBTHRaxF4mFnyxgI3pcOEN2z1ecktbNOW2+nE
	 kjUEdw+3mCEO/Fyez2wBfkF+Cr4wzKc5ziW7RlShR4mLQiWB625FsNjN3KgQNMICav
	 IlHDsiC/2/riQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A16BD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458217362.9630.7728988707653295668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5d5481c4f26b78161a16e333547a80e601c970dd31ac80f28c00f8e5bd7a0c
Date: Mon, 01 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764582173
