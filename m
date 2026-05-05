Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32295282F13
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777993054; cv=none; b=E+OmJVIbpmd8bVxpHxla66oixq3kGNliAyU6iFsjXGkas6jjTZE7Ea4Wa8mmcA96VgS3vzefpGmUYhFuKdz3ZZTcgncNtYiFe1pQyNSGwp1WM8ay1msPc64IWnj2yGzFyBTKlD6CFPYcwnBlT93wqtN8LyEVVAdjmO+PacHGuS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777993054; c=relaxed/simple;
	bh=MuEdm8eOnj1nZMeVaDWf3kpjrSqYxbafN69dwTASbF0=;
	h=To:Subject:From:Message-Id:Date; b=Ue0xgfRYKPZndrRBqEw1bgPX024A3yDnrWtcM08dGnrByDPXpwWkmgWvMVXRQzWrpGPgN8TOtLbIWddnLDd5yRD8pNiHvQWL0Eu/qftaPRibNWFmXcEHVucOwkQXDB6ibNGVYNpcld4KK57+ucl9tg7ZRgo/nNtglycp97tYI/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfE19IlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfE19IlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8C0C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777993053;
	bh=MuEdm8eOnj1nZMeVaDWf3kpjrSqYxbafN69dwTASbF0=;
	h=To:Subject:From:Date:From;
	b=jfE19IlB5kvzwttbbuGNpT15yp0HfjoKNaENXrRNZ3OKnoBFhPFsSlFpUomf0MtY+
	 h/xJ3103rnQWJi/NDHVECEAHbw5sFSHJQKyhhVDhHHgNyUkz6CePwMRRRsZEw9DRij
	 B3uHTb6Q8NhkEFHo0nQZfjZDNLd4kz0h26iR1lNzEDZTiLK8Ezf/YDW0HA9im9632G
	 2unqDQ66M5t0oWYcKdW/lTzAMY/dzwICCpA7Ice/AOhifmQky2d1Y392asM4InKVZz
	 RpQyElVSaIshfo9Ggp+TYLW2NvZyr7iEu/ibfM3TFQmwOSMLki7TRZvzSwXTGis1Xa
	 NxS6h4WTg1ckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9500CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799305368.2852.17445339543034089065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92320d0ffcc22fbec8840cfbf6286d7eb8be2053f2151f81d4b50bb71cbdadfb
Date: Tue, 05 May 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777993053
