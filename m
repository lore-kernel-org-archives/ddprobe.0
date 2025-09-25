Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A77528E9
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758773394; cv=none; b=egjxpjhuo4i6pERUQ07Qyi7AlDfBmfMvJ/Mr2E6mc8Oj9ieDidmHabpYUEeDNOOm6/lGwFCDe1/Q+bBeOGcupKNVLQkweKLRjx8IHKj577jrsBIH2zuBb+it+1Dy7tz9G3Z5x2mwEUyOi5nmknQmdaAJDE1YM+tHYx5nbw8cVHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758773394; c=relaxed/simple;
	bh=Go3hwJciNLVrUTLbg4xWCl3f4LNGQ3iQjpLlXgN00T4=;
	h=To:Subject:From:Message-Id:Date; b=TLLcwafRHILsppOBvzI3ZCNW3YhIutSF/FZzLg87NU2vuPFb+Ee7keO5aK4AYkDtua3tBtaa79pMA85uSsAxKyWCoujSwVuM5EUpCUcrdJfbZXk7EmVJCbMnotuMDHt6TtscHX3u+f/lphX5eZ7do+AwV0JHSKiuxD13PdOCJn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOxPT8dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOxPT8dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A821EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758773393;
	bh=Go3hwJciNLVrUTLbg4xWCl3f4LNGQ3iQjpLlXgN00T4=;
	h=To:Subject:From:Date:From;
	b=HOxPT8dvUVdehD7/OjLD4R+xBU/weYjmnzf6LN3WpZ8B23U/EQjzUlvINeCPuDC5s
	 AdZMjSlFPaDUCm+XKEuDTaH+L6XW6WAcezcZnIvjhD9v5n8BO576O4EPDrxHDLLZWi
	 fnin+kPa64km3SqpMshBg+OcM8+z4K+1yHoFgs2PKI4pdM4wEUbcSeH15lwo4OQ9Xt
	 9Tfm7I7bDjbRa1MuyfM2iyTsnaAKNXAwgn77qg1tQx6jSfeqBlmMGwptr2sG9si9UZ
	 S+24i7DuJAV0gncPU+KK0+lJyoEqGl7XaNa6JzRkCQrTDgY5HV22upda/hCxYunxC6
	 b3pxRiJ4BH0YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EFACAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877339358.3570.13776505307082275536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225ae373e0bbb5cd9c9433d83c4e071c9ee911938711349ba4fa557eddad3ad8
Date: Thu, 25 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758773393
