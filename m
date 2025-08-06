Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DC815624D
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754455795; cv=none; b=D+eB2C31kAf3j+dfo8vWl/LEbMcNNPncekhfyvKyZ/n2/GhrMvJJNF2ixckceB+yqP3/3skdnxAMsSI5DobqEMEsHpCS688AvgJhKwXhidDx4wdvFav5egafU1QBvm4LGckgVKrAalpZoKNkf4JRMNsQIPU2so1DkVhFwmoUEkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754455795; c=relaxed/simple;
	bh=iueMmsO6w01z2AtssfwgWMi/joSx7WIrrbuOH0TEt7g=;
	h=To:Subject:From:Message-Id:Date; b=PZHvY10LNDUiTPBD+lhb5EjaFdEHImShQGDtwTCmh9PB4ASyg8+X6bbbbSSK9AG0ipM+4BTS8YiHHW04oq1E8GjnF2tTJFnR+bZJYS/lgEyputKghqGI2QVp7zYI+vLxJfKP7fPbJWf2eC3If9nk2SVQJYA0dAcvqG7briPDJDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bv+XAJWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bv+XAJWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F23C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754455793;
	bh=iueMmsO6w01z2AtssfwgWMi/joSx7WIrrbuOH0TEt7g=;
	h=To:Subject:From:Date:From;
	b=bv+XAJWqK0IUYj1DQhauoJdHsvtQoO5vSkckg68fvM6GVDwQGCKD/nSyFoz//MGXc
	 UkbobYOrgJdp70rPdvspPHOzO2I4+b9+a3DOErTzGVUCuNsI6lXKSyDPOpmMS7mHGz
	 5psqRjiBSOCkdzCU9EOrpMGwF6UXjU0gXZe/4W1n/n9aSE+nJfSjo68g/zRvkEjfmT
	 W6oWF/yfAbSv5V/atSF/KCMcUPHJEbty9eo5v8xaMqYthn1dlf12FMSVkWEsEgLe3P
	 5V9jDr5Q9cCN0PV/BSMlm4zJ4QsU02bjKeH/wnwj/HDBa/SvYylOMSh5ug5AKLqvS2
	 p8YUNIxLKO2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F8C87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445579357.19691.11764190614879071216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1a72881bbfbd07e4571a075060f78c5bcd849eb3fa766f8a6be03b02b049dd
Date: Wed, 06 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754455793
