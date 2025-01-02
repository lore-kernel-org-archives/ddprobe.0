Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA218F58
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735838154; cv=none; b=qirCmcNoT0a+Rf4K9Scd/d1hPc66GGasUPVyDVOaKaJhZhAoteVRn8JydDXl2C2LZ8nzWvQakQ1I2uS2wbIxr66qbHvOMeFZm2AjlNl3OnW40eCIT0m5ht6tyA6xk5VUIYMvMDye3LxGT2O0osoM1cSpCHTlwnAacLaTkt09y0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735838154; c=relaxed/simple;
	bh=8albcB4Dgy1mkGkGinv60MDtVcgLl2mKOU8NlN22fGE=;
	h=To:Subject:From:Message-Id:Date; b=rz+HfCGMK2/eb/8nl/To+7Amds8RX4Fwkx4IcbS9UCzuCXIXCLRdn/O7/8tqTMfVtWqmztXz8g06sD96IjtlJLzpFWUMR8xtXtdaSi0t0PNzZmRCoCTBcQW50ykZoX4w8LT7pwZYcCqJ666u2ITsh9C5I8UMvq82IbqKAPwffV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG45TzcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG45TzcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF751C4CEDE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735838153;
	bh=8albcB4Dgy1mkGkGinv60MDtVcgLl2mKOU8NlN22fGE=;
	h=To:Subject:From:Date:From;
	b=KG45TzcF2xVYtHvkaS0TrYc8ahMLI5IU/Dm2M8b4LAV3KGwlV3fmWY0m0rXukZD3l
	 p8RxcRwo2XjZxMbIUwLQfZpjnXThy7U/jzkMIv/2pTCR2cY+dg4MY8Bs5Y/jdEK0S3
	 +ntkn2FhvIEOwIbcBirAkmsRBUEUZgz/q7SufI/cpKIc/WuLfpwn04ldRnch1y2e/p
	 gUvzsPqVHtXwDTFHs/AXavnW9tvyx6zMewQ5zVVBfddRYUVF94IHDh2m4kBxvbyWxn
	 qRprX5HMS6OG7HUDliHiZALv5k4QYtHR2PspZ7wyDa1/YHOlrfeVNtR1vMMyrwqFGP
	 aeOaqN90gDttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCF9E77194
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583815363.19720.119581074995802770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2731a663d4a040d7998a768834800d2b63dbb3a7f1a5d6e000052d528f1a2aeb
Date: Thu, 02 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735838153
