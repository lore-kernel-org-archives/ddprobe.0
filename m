Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB623090D9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774921494; cv=none; b=OibzJB4+GQtIQ7dHHOPjCySRuyixOmD9ObF1/vt7FzsgkNgtkDHgU3gcxFAh74OM7EHk+MS2Ms0pg4IVUqfEPllM21D3gdIGPtd++u5FpqDJqYQ1xGM5YOPtNT2GbExiguxJZunRgFgEa1nXwjaqKvRPWZLX/r+yLxnCT4wE/mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774921494; c=relaxed/simple;
	bh=1FLEcf2cfsm/KhsYN/gf+Sjn4/HcjC81Li9biM5BJxo=;
	h=To:Subject:From:Message-Id:Date; b=VjN2hyOh4gOt9uZm7aEp98lp0awaWcqCvl/9TxEQg8IP4aGBRN/bfRBA3umIbV5bEDWJLGrYTiKdB6GQDJURHn3ULKCkGgzo/FRpaUSJ9snN8pxVu2g7MuLiqaR8FuVCf22MmbpFSufGo8DY5aozoaMo45SIQ2/+NkrOmGI1M9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4CUBfRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4CUBfRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F70C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774921493;
	bh=1FLEcf2cfsm/KhsYN/gf+Sjn4/HcjC81Li9biM5BJxo=;
	h=To:Subject:From:Date:From;
	b=e4CUBfRwv42COCSPzcoRzFemGMuJVxEgXHu/UnP+2BIzEh1684NigdQHEWmYa0BxE
	 ux7ORTA/Wx3AL829KiAKE59om7vEs5a0Avj/8evaQR9BV/r/fJxxMre4nMLPU6mmGB
	 CH7NRjy4qNogywW8j6AeyxeZ38j59MNKghv329HpmVtsxShqBoQaYay5LMv4A6jCVa
	 D4xeZhB0+wD4lX1DctwGo7hYMooaCTpevfEnr31Pt0V9fmmtVF9F2seasYopooNhh/
	 2PRu4e29c72KzWgmraJM6tnf3Ee+LM0lsJVqyIiKKZILWdep7Xhehxr9dRFS/j+soI
	 9Xc6gzjd9ks2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940301061B28
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492149358.3351.11912646886202913840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a8be7f56a686d9b2c90505e989bf44e5bc8c073d4dd2355ac1fd2c031c4609
Date: Tue, 31 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774921493
