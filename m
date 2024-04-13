Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD01FC0C
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 05:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712987963; cv=none; b=ejals0B3t081VbMUXOkHRTjwH1SFhhFXFfEr0YdQidYyIcROK4bcYY8aymHmc6VKNEgPhgvDjf29aluwDYmDUWdVQcyACkq+IDAtYtjAF+iLTYJTZ8Czigpb2d1nEIawFeuK1fyn4iMTZ6sii7eCcY/0dJI2JFoqALaE+vjRo9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712987963; c=relaxed/simple;
	bh=obvdf0Sj02CBiandSvH0XXpKsuALlqcyfmpnjwmperM=;
	h=To:Subject:From:Message-Id:Date; b=UsgEiokIC010bgsfNf2PngLtzo/ieWbD2kM/VbfkoQvxqj2afFVFf9TanbSHIPaZEPNCSR6B+VTc8gEsS9w88+cUtdMfSZQGWSOuPr69oYRXWcDS4Ao69ygfErIeZf7dgg4Mffd3c97rlGQBNWMum5SaY32aUqhYjj3Dzpn35Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/yuDbJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/yuDbJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0787C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 05:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712987962;
	bh=obvdf0Sj02CBiandSvH0XXpKsuALlqcyfmpnjwmperM=;
	h=To:Subject:From:Date:From;
	b=i/yuDbJizZSz27tGeB1gScE5T2o6lk8riHaAlSwMOSBAp/GmpUTRwmeqdeZXpiEzR
	 3L2DAHLHJEk3CXbWcxakoeX0F6mlrEBQ1i+kVMaQclSx+MvP+4gHJJ5O5+46veEdRQ
	 1Ojl1asvdiUDI/FTiqsc6Ihh8iHny+JdrP9phoXKyXTjJAOEVdpgozCxSYXX9qjfa+
	 P+a37rXNrWY8lPisMusCcmIUGEmUi3RLCugRPLz9e/lykOyeG+hgRQqv8AwWhruY+2
	 DfJkTvrzxhH5UlXLXnwATZmfzqq4Lm9B2MXHIdCcfezzNlWGjCnaSCwDdfw7Zx/cXm
	 7OD7p0Twd0Ojw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26A2C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 05:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171298796278.29940.11770065806413013815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe72e601617ea4d956e411e0603520e6bb2f9e4bb14bf10c66c9c00d1462a9c
Date: Sat, 13 Apr 2024 05:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712987962
