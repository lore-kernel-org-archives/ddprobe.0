Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0111C1FF1B4
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762267194; cv=none; b=dheE18e/6a4kRU2BEMtc0khyF6QTs8hpy3KFxKi2N/snZIZIx3ah9zH1k//FxUvjfKSnuRPVe7OszGSCvJ7+9SUiS1F2Y2X4I9RFKVDqPwtLAtqsmttR1bp/oq4Oi1pEBirfwyuZftBAPHPnJVa94Ee3rUKtAVtA+8TNW4yQVS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762267194; c=relaxed/simple;
	bh=Z7eAEEyw5J5/fnVP0eR/xUWy29QLVqbAMe5mBiHiKhc=;
	h=To:Subject:From:Message-Id:Date; b=nXVB9jydelEpMI/fiGZC7TeHnx6lO7PNf3ZuVZpAdWMN3vbu48Z84je7Tw9CxAFpBgGFcYGmQPbpUA1pMyy+Hp7rqAgTOJJWgRt0kd1Q5q9xGRmqh0YneyDUeT57yS8iP89JripIdynte4egqrehddyL5BqJbJoqo9akwN0Nz5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIvkYeYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIvkYeYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC98C116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762267193;
	bh=Z7eAEEyw5J5/fnVP0eR/xUWy29QLVqbAMe5mBiHiKhc=;
	h=To:Subject:From:Date:From;
	b=YIvkYeYUi/HibWe/lAEQDXvs1MC7WlwSUNaKdc/VdaNvhxsQ6LeOQQk688UP64hA2
	 fObMBjJL/Ji2jl0urpvgYNafY5TWCpa03ON39aBkMeFABnFgy/MwS4CFpFq7lO5XiV
	 VMjpsTd7HHpKp4gLnsVJsNNGuXItMpZSGXjU+2B11V5iqblu2CfLEhE/5QTbRldspw
	 AlFrcf9S4L210TcWIrwc4WTRRLTtCa1q4aYrGiasH24iR4iGOSshQb9dKxmBWqb1CB
	 Pm2FeP5XueAdhEuKchtMLJvWh1u/v3MUrIc+09QpUEGv4s6JWx/rMRbPTYTQPfQKJ3
	 vEPBHskCrgpmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9099FCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226719358.12460.1009098152826956469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b452ecce6d024a1b9649e25cd978461f827dcb4d9d85bf8ee05f00f803af671b
Date: Tue, 04 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762267193
