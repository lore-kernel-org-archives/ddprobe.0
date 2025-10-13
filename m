Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9E81C84A6
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760365794; cv=none; b=HKHvbDBZd80cBLHnglEfAducOJTZiyvjYLVGtAMHUpm7cj/maAR7Wm42HvmcsbIjWHrR7EQiTQGucyKHXsYWflTxsn3Uvtzt9Gwkaibw43M6VWXsKukhjh2+EClHNAND1/R2sn43ICVLhkUYmrP2WCAKFVUelU5rJ5/LNDAeaJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760365794; c=relaxed/simple;
	bh=sbWoT0ch83nJDOYrGTXf6eAaaLLo6cVGY0enhFtgHCM=;
	h=To:Subject:From:Message-Id:Date; b=b4qpxKPYTQqGJgwj7jw9X4wh5ZW+4ZwOEPzbeXW8P6fpxqY19x6gwJPmoKzk0d8TOzLTkrpNFlPTLUEuG/2bzrsOOKkMtXP5/z4hGY58+Y45K8rppTzDg1uP5iLtZ18WLyUityXq3rt8vV0u6syk1+0fJI/Yi8FrTks2dri8ESc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojwuyEor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojwuyEor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3E0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760365793;
	bh=sbWoT0ch83nJDOYrGTXf6eAaaLLo6cVGY0enhFtgHCM=;
	h=To:Subject:From:Date:From;
	b=ojwuyEorpZGJo8TUWoFn7g4yLu7l+u3SosB7P9l46a7TmD2JpiTBKvj2o/3nGH1H6
	 RZR8HQ9oDLausfA1FZYz8mVV5bIWM9FeWXyJojimezXbuMIdjQSWyoKIMPXgHqKqER
	 flDpmAkOzpSPfeYuGF8bquTWLXsPVbeO41MYlpsQEaPlSwvFTZHy1xwlmo5KUNqu8i
	 GguOuzOhIlnhBHcqsnpBt0h/M6Wc2hWjq6KdxH7d6waWxzn/jZP8PVrW03C2E32aVc
	 El6gAbBZHNhHxBWr+a7n+y4hI/sI4g4MESSCwUSpj7wJKrNSHU3MDGuwLoE9X0ACGd
	 9QcDgDT0W6tBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFDCCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036579358.2300.6366392786298986638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85384dda9f23f49e240471efb8be47b43aaa51c36ea90e6a3948d83951fc8146
Date: Mon, 13 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760365793
