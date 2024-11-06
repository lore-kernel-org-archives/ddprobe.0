Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D7210E5
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730877354; cv=none; b=c2f8+H9dyhoPn9K8WGx11tZQj3mCPDVV6Z/IcZ3SMAXtSk/tJVwjgvYLlcg90khgvMUDc0eal1zexdlTR61ZtD+UAASkWWtAAek1aaBMQpJLQ1QTl29zinsiUyx0RVAJrMfXTIRh1aJhyZk5ns027HViOhGgymkzRCd10Md2MMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730877354; c=relaxed/simple;
	bh=7wxSIDS075mG01BcED4AEl8OQxzdtvfXTDexfZclfJ0=;
	h=To:Subject:From:Message-Id:Date; b=eJ6zOvH0BoXHbIY9vTPpK21A2tiKNLj8yHPk4kacFWwJicSETCpJa2DcsCOlfkcuA1nZsfezCIyy5dvl/jeR5H5XYF15WU9WCHSLeCbepX9xr0ZWBkKquUqrQePSoxlGLinmlJ++cph6fPKyfxdDgunFxTQLXQ1trFuZC8PXFxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hneBFvjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hneBFvjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FFEC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730877353;
	bh=7wxSIDS075mG01BcED4AEl8OQxzdtvfXTDexfZclfJ0=;
	h=To:Subject:From:Date:From;
	b=hneBFvjz8m/wXIS3PYVI1KHF0fHyuBmtwZoL/MFS9WCcASh6KtXhfMops165mrN70
	 ZNxCodfDx/YrvrKv+oFVOCl1BQAbHZgBQZl+k357+eVqNaoTxAXThH65ZVD9CWnnjl
	 XHxhto4ec0F4NMu9zgcxGjxOJv6wZsXC1hvRIrhMRRQTw4r9OM27FIQVRoNp0sAzoz
	 suZp+eNZsJyWKucCfs6WUrLh1FyUEbByNkJK7w1A+dq5JzS/GHD5N/WZTcVkTmoLEK
	 1sMdSgfHSFHwYcAdjzlgmlwVqpvq9TjlNNGKYAGs0vo+HOmON5NXz1UYji42b3z2Rb
	 uEK+0H5K1calw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92847D29FAB
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173087735359.5701.11492794904849531313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308e17bb9cdc6194184c24454157f418354c365bf0f44f2f4456d51e05e5ed1e
Date: Wed, 06 Nov 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730877353
