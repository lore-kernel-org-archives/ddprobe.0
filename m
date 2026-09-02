Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B993AAF62
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788348034; cv=none; b=l0ADxq2S3tMSAbb5VEKtkCBcHfrnVRxODMbufzUUesuqRIt+FDBQhoOapdwst/cYNgblDBkCcDJApXTXTs2tBUashmEDOBZi5ojCVxDPikH9zQ7oSSbl3/in4fBB8YDehsY57Higq655XT/gfNVYa+FBlHw2OLVjGr3VnA9qESg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788348034; c=relaxed/simple;
	bh=030N4K4tzKZHkQ2Zv/8YFn8I1VWsmCu88dZTgAUNBkw=;
	h=To:Subject:From:Message-Id:Date; b=aSPY/0v+9/KQW3cY+DqhMLlAajK7x2xoSFOb/DpC3VoRYkBKUUK6KL8jy2mTaOyNFKkZVlchWXMwcubfm6t3qYSRfNF8rb8C/8Unb7iaCDR9vmF5xA5rOzoEpszgB9Y99gH94rEX7BWbpnYW/VuxG+5PeE3Upj7o6/wr9rr5lOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSuXYSIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSuXYSIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5B2C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788348033;
	bh=030N4K4tzKZHkQ2Zv/8YFn8I1VWsmCu88dZTgAUNBkw=;
	h=To:Subject:From:Date:From;
	b=BSuXYSIiNIdU41YAcD/XYBN53lx8mNdbdfqVll6/8czGB8qikGRz1wHJ45bTBiQIF
	 3ai/fP8tyttme9wzaNRV133J8bL9Um/5zYTX6wZ9HDIdX74mm29eGFmoF2Xlc0v+3h
	 BH737EiOOTMSkzJS95HitzwrlhZJyICtVQ2x1HNGm+o4P4X/HF/wXBjciza6nn5CyD
	 q7eMbH7ZaU5vSW7RQuOjLJo6yc4a6BP7NQM2MjnxRHow77TD1z8r0PKJUJfiVxIAc3
	 uLDBFW/yiukgtADRsVVWxClwBhFtZU5zbem51vUfIjRjBnP5dYhaUplUcD9EneUA/N
	 A+QUSS6HgbfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E2C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834803368.21512.10023286626493688913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cca93af721556032281290d697f7ba2cf0d846a361b318fdbdc0313f31c741d
Date: Wed, 02 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788348033
