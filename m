Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078F816DECA
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715109743; cv=none; b=e0xXL0l+BFroPANG96iLZig4ZCicCQTXDhUGtXbqccQ/PDARorugrf30ygHDOdL3ntCtMhS0kJsYJW5WNeq5W339JI7/j88kMy4Y3qkefYkqwXc6YMm+3sDHFWn4Lx+4CgZqUhe6ZGJKux8r/3HxnA95SSMnCWoT/MtZXwDuPvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715109743; c=relaxed/simple;
	bh=L3mn+kQr9IEogbAsNgPaHWaVCFCS5Wr2gz5oIpfd0VE=;
	h=To:Subject:From:Message-Id:Date; b=rHUaRqjYqtyQSB+NK80GPw7Lgfb4kltHFLTixD9kBiZwanhD38ccBD36pxvS0kirTBwFarfbJiTvEnIDh4JcCn5dRuMvv9jR+AJ2r0HgJCdZYzLGiAWD9gm0sY5hA3RcBARk9IWMf2GIp/UjKAbejpyx+0J06uqv5WrcjDA5lHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyR6Q+RP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyR6Q+RP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7691C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715109742;
	bh=L3mn+kQr9IEogbAsNgPaHWaVCFCS5Wr2gz5oIpfd0VE=;
	h=To:Subject:From:Date:From;
	b=JyR6Q+RPhMQfoyAzICb/gbsFfseFcOUAd7FXq4YlEw3emic67FfDxcV6Y368zALLR
	 8Qb7QafHIhJMRawYdAPooPMBXyq8mb5hOedzu2swxWobAp18L2rQ3sO8ee6urOchld
	 h7JjHJA9POwcMv7jViEUcGaKEnuYsMjlGYzwi5eHNnnkKw1gB5JvxTZN/vBmCn+TdF
	 azgbVjoUxjWJbE8rktrBZslHBpuDU7mIGeOnFNBTOh6GuIQvHszB38idanxYwtXyhH
	 yrwkY8/6fPO3l/m1sYEXhcOtJtb2eRQ9w/VhEgjdc/5Gi7Gj3dOo4jcx8zttCkPvh7
	 AimilPNzqwc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5516C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171510974278.6074.9216954449942698529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e369d9ebee8d20ba9b77fdd9e88374a6424c99e3501f17e3a0cedef1b9931a82
Date: Tue, 07 May 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715109742
