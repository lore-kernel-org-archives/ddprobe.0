Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7DA2E337F
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742792994; cv=none; b=m3yZPSBP45jwo5vd7EXXErKMJ2aVnXZMSIlCsPBuLUQIIWTVcdQS/IbmSw/qWudpj//g3B+zPeyyZhkN5Sm/YpG85zfrIPAPaHOWlu0JI8ZQqnAQTDaeb6/mptBfZ8l1sA1sLsnmp157v1NL8IMABVMAGifZd2KRHRirH51MZOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742792994; c=relaxed/simple;
	bh=n8pPsmmtW0Wi+XzY4i9A3agSwcJMuSYzjwcah3X9iGE=;
	h=To:Subject:From:Message-Id:Date; b=YHYww3scn5HQWWCRAZZGbZ8t7jeFdibdF4jvx9UZJerqCTUPekirpwNvHgfpFIDuljae0ICFN2YAoDSm0bmQO0ZXoBNoEedF41Kfd813RsNcr+5vCl+ikpfxB86JgtyvzgmVQd3KkL/BQ+A4REXzoOHZU4qn6KI7IVndjr4tOoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i63dNhqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i63dNhqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4697C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742792993;
	bh=n8pPsmmtW0Wi+XzY4i9A3agSwcJMuSYzjwcah3X9iGE=;
	h=To:Subject:From:Date:From;
	b=i63dNhqLJLsCvMIzASdLPzXQjqDvOPAtBXZGvt5PftOuwaCAX+zK/HTIykvCO7hfC
	 WGpdia4mbu07VgVEwu8U3o9WpjtkTjUCm3hZCoJOqk/0XfXok3cCtql+AXVGV7KfOR
	 +yHNt8gLUFoCCVSZ8LCzzBImeURDjf0WcRibKIczA1ifkYGIR1LZXrE52cxxVYd0UQ
	 2T0v3NHXwWZkeRMUwFnkfzdhK7ZLXRfLC1fLLJGbrYHWcag91g6tnuf8ZTzyUK6w+B
	 uGsZIxkUDKofCndAau3FcDzi6wuboUwjiFm6iKaUe1qAPkgGnXmvIEZwu4CNNMDXrf
	 Lg4TD5uSXh1FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98399C36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279299360.32547.1741893979551662320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8640a6a2c3cd2c620fb5552c54b92093c0b1df606cdf21d1e0ce07a82bfdef
Date: Mon, 24 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742792993
