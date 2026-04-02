Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF5361FFE
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775099134; cv=none; b=ofC2m2hUMcKODVJ8CgbpIUi07PL56Fj498FdbMB8MYTct7OSGu816GAuHlBQfSB5TYjY6MmDEQKUrtFRJd5bD0/PuXt6FzSbqXNSD0ZBapNH48IshznIMyO1rNA76nZ5yKQBvJJZBbeqQSSkVYaqJaeCkSpvtpVjTlQsKvmfEG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775099134; c=relaxed/simple;
	bh=Drh6BP7LVREnMl+4ncZfKTQ0Rkj32Hni4EwtXdJ0mio=;
	h=To:Subject:From:Message-Id:Date; b=SAZfz4gYL1FLZeEPsK1tMNjWOMX/O9UhWdvPeVmVg6KxcBlkyAPWTw5VqP0EyAw9YLrnbIvJKILIIPCcsJBU3XwQwKmJ0h29rYgb7jlNaI16snG2mKM5ZXozIs8zikVLeC+YiSMuM4KNQC0hPuouECm9M7xMOJwHfeqxgcnM4dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDry2keV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDry2keV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B5AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775099133;
	bh=Drh6BP7LVREnMl+4ncZfKTQ0Rkj32Hni4EwtXdJ0mio=;
	h=To:Subject:From:Date:From;
	b=qDry2keV9L1loJlWJzmCb0GtmwNRSEqiwGAL6oTb4oGoM6+W8cZAbfygVCgi1F3YB
	 FP6eL5LTGqlHoK9eNQgmVFBqecU0mXl0zfDV65r1xKRlpPc6Bunenzrg2XYaVvYS2a
	 v5QNSpiGgTeOX25xOJ4HLdqMFeqDchtLMoBiPNCvKsP8lMVzobgTaCCMHLbuX6N+HC
	 aXYfAG+8kz2qFK8f6B3W9gcHmt6vLnL/OKw1QhjwNfGt0Z9ZZFwoEZV1D854/QHT+1
	 njOlYeMl6TcuBZMPxVUyNHDmBmIPwnEKAC2AyCJNqsf/cIqvtoQ8EZn7cVM59b254P
	 EfwK24y6R7zWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24F91112259
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509913369.30304.2923628627439612480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c4ec169268b441dab7328cc768c6070529b0fe738090fa1ffa90eee634e6a4
Date: Thu, 02 Apr 2026 03:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775099133
