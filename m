Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3512F1EB5B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743692394; cv=none; b=Yu/E8TdWLvCxVoblLSq2EyAuV7SUOsaOS1TVcQ1dNDaz62tgPd0VXs1LaZXljwxxWP7DGIPe21Asq7lsoRQQ+zhcWx8yr7YZZbDKNDaStxDSVYS4L/dolvUqZMpHtQi7eaupJMTBQJOUbXPNZo4QpOYZcVn0YCoE//9Jr5ONjqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743692394; c=relaxed/simple;
	bh=u7y6x5BOu81NJHRkkQDeY+8fOsKzw1EcESrdcocsTF8=;
	h=To:Subject:From:Message-Id:Date; b=ArS2o5rFwpaHe8k9lpCRCJQrn0YMQCf2/k7gfHckxjNsjnnfahwel01yHtuuNDq2LhXZIWRV5FB1BqsgAOiWSgcVuAk6z2blINpIfCcL6cqAg1BmPJJoxTmFBFWUGm2Ew7LeJFNmazF9aw5MVejbwk/WZ98Y+LnwIVo92EiMHeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoSSqcoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoSSqcoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA275C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743692393;
	bh=u7y6x5BOu81NJHRkkQDeY+8fOsKzw1EcESrdcocsTF8=;
	h=To:Subject:From:Date:From;
	b=eoSSqcoT9HK00YlSJz0aY6ndAeRsS68UEGZXSrCVGuZRTSlv8EtGBibFKpjRqcYZp
	 iN9tnMFAu5WvpIcO91Jp4lvv+Gs2Vdnx/fl2781wZ3wB11z9RfKm1RCJF/nLu93vCg
	 57ONi5ed7CYQC/dBkErI/hROBrboY6xDwdd0cC9uhEZ10jRcHLM9VAeJqEIP/t1X17
	 9Hg3KkMzCdqrcBzD3FGyB6ANQ8p3mKc5u8WabkJYopq4BgSGctkEw4tdAFj116Cvwg
	 notC7e8sKj0ino2xcukMjoyV9Oulb7uDj63ClbNOvlTm3qtLhZMOe+WLo8vjaE5DNH
	 RW49CWJmjnUAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B55C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174369239360.24396.16222480719467754978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e59168cb95ada75a9c221d307f92c90cd7c9814e9b5493ba79aced8f5e357b0
Date: Thu, 03 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743692393
