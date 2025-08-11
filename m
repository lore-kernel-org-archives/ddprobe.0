Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2106629BDB1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754930994; cv=none; b=s/cBYtnMYWL2Xf6O7Dfuj3eNJdZbTt995Ol3hLBwKHMl0i00/1eBEtCmllXUykLV51RW8folWbAQL95GZCM/C3oC3RqCZn2j63DS1Lp/EPCC75uWpN3nosBHHvFRGMG3curPWRS/LGDrKU47uCHK0CY6quGyyPPVFxQiUS7vIoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754930994; c=relaxed/simple;
	bh=QrWOQy2RlaCTsdq5Y+YA71kS9c1s+eFafka3Ul0PbAs=;
	h=To:Subject:From:Message-Id:Date; b=s9h3q3vTj0eCW8kC4kDe1+pCU7gdRIdJrF2hmgcVmeEj/PisvRgZT2GmCQKsOnfCwK9zJf68Y+P5ddUdjtOVvHcn563gyA1UVqtLOWZGfe5df4UYD+8msO3LP2L1xO4fGUnvVO2VHE+mdC+ZJPxWDsxVhCLh2DEyTRyF146nKrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXgk7Jec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXgk7Jec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4161C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754930993;
	bh=QrWOQy2RlaCTsdq5Y+YA71kS9c1s+eFafka3Ul0PbAs=;
	h=To:Subject:From:Date:From;
	b=aXgk7JecFTxpGuwRNinTaUWQQnnUQEUv+E8aUMrXuj1hNjBOgO1YKrYtXePpSY77S
	 u+8luCsnXgrFfGFv1lGVaEMKFd/kL8FRzGMd2ec5Raur0y21/9cZ/KVzRGMVMw7vdj
	 59Uqzz/H0JLpnr6xWwpCma3AndBS5/F/BpZM90JzUag9nNngmWzlhujhNswoZXga3F
	 zqDIwAUbcs2XNFij71YxUhEeHoGte4/PFuAa7pSQA5jHrR0Voit3aId2VB6N1e1/c0
	 takipE3m8bBx744ydLTxJtmso5jzrK49Mj8IbcdNW72EXBfjk7ntRxx+u2RhFc8kHN
	 4WL201+JLOxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE3CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493099358.6286.8303046385063357368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e41bf87ced151f7aea345cc39c015d0d50ef31d2c08dc2385a7fe5dc752b50
Date: Mon, 11 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754930993
