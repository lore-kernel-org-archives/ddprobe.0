Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262BE28B400
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759157395; cv=none; b=r+z5ONHjq5H/McPqAVbQV7x57p1niWr+ipBHXn5K+k5VOHkG/s4GauxABZ7ZomxnblR0Mqpcu1AC2WEbOlSPxtAJCxoAbUHd/u/NbNdjYP7oz/SKhHtK4fWkZOeTDqKzbhR/fKRcWF22abR/f1UWrWFJthZe6bQNHj8WEFbYQqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759157395; c=relaxed/simple;
	bh=Qn09I1MLZxyE+RQpVdssA255DZyDfrVgiyKIcBRl0OY=;
	h=To:Subject:From:Message-Id:Date; b=DI0d9rDIx2KE6H0FYQnXd3sguphfAP7R9jL/HRU4gGirTD3EWpfSlMqwKB6TofFH30GZQ7osYvGTmuO0e1RkqSWypekT7pTAlvxSt2371+/sfu/4TacHLPzqc1wwCrl+vabaGHGYNj8th6bYUiSDisb9cZS9RdMGnEzmGK02PC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPn9hq95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPn9hq95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8226C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759157393;
	bh=Qn09I1MLZxyE+RQpVdssA255DZyDfrVgiyKIcBRl0OY=;
	h=To:Subject:From:Date:From;
	b=JPn9hq95HBxPgJHAXWB57deVmhsfuXJjH6T+bhw8ooyvvL0i7izzrhMXhd+JGWuUn
	 t42WTrP1E9jshy3qQLrt69BZDcheVjPZCpexmcntLAizukjXoKrfEYsjbA0ZN7+Ut2
	 m7CAFKyR3YLYoUZCNxYD7sf7BnSiO3ouaCAiYrn3BoY6GMLc+Eb797CHlLmaVFx2Is
	 uxe2pj7X/+O9OO/rfKus80kJ4CTJ0iir6V0sfaYdsqOCORYJopOfOkg/NRVdUtW7Gs
	 uHm9UQhMdwZrXB1mrk9KppeiFjc55t575z/+606zD1uBWkfr+D7MQfDke88gpLwAtF
	 tiOCvOKHNyDsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94481CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915739359.24585.537207111431193588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a703bf15239578fa61739cc5c93d559bcb7affe83add29de37ee43bafe0d25
Date: Mon, 29 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759157393
