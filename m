Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409882566
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746301794; cv=none; b=B2o7GoT0olybvWScEDM/zoIAtGPKuAw1ANVX7+CjnvZATm/ItuaLoc5Cb0IThe9JxIy2XzJzF0CY8FIhM3XgzGMomOti52JDfl6+sbzs5qbi/fSiqIEXUrUnMUs20d0sz2IYGIjIL/Y26POcVgctZ+Xb/fo1k95sAEYrC3rTP+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746301794; c=relaxed/simple;
	bh=H2024XY/N7Sasv3DEXSkuUQiJEEZ/rVaGHHYVFMEYRc=;
	h=To:Subject:From:Message-Id:Date; b=uVK3EeXXgtsa+rKmFjEnkOgYEsSbgUYqj3bq838qOBS8zz8x/zvWMIpLOmnZTHd3z1GfuLcP/NOBLcKaOTShv1ow6HVfwMDjWzcohqSvw4QjnlnoGz9dUGCUbSJQdJVtzQQa7nfJlJItqjj+oGXphqLsuo0exrIk68lle7GvW6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPA/FF1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPA/FF1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B1DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746301793;
	bh=H2024XY/N7Sasv3DEXSkuUQiJEEZ/rVaGHHYVFMEYRc=;
	h=To:Subject:From:Date:From;
	b=NPA/FF1xmKce3H37wNZt6TJb8dECiFxk8tBfIVEs5bTVZ/sLF80qPDPBHCsOUX+Lv
	 VIE2msmR738JXrj4d24xkpH4+eBxKeNflOLSQ4wwOm23s+MXtrR4V99j+zdtub2XaO
	 a6exCm/dQ0ws9/Q5K6MIhhoX76eWsA08lVTztJ6q1Q4pxxSfpOJrXrAvNX6KLN/Xnf
	 zjuul2fI6xEOMJGjQsR8rwHFoTpCBc8xo4gUXUGL/QcoDpI3cepKFGar0aIMymGBLd
	 3yjRWyYptH7DWQcRdxVupZwUMTQvKXl7M7qSmA2LkjAgzLcb0B6FX1/8iRbhGg3MdV
	 8kFtty4XvOIWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BDAC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630179357.23281.13091663789158394349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478e563f9e2469a924700dfd209d512e34a1043815a0bac64f863c7ded4db436
Date: Sat, 03 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746301793
