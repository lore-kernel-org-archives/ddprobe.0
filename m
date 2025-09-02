Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D89532F761
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756835394; cv=none; b=JeMB0O9+AzwEHaATvzf4xALQzL8aPaSLyH9YMxGqn28r6T2Iy+i80Wt0MkhqtJTpKToyAEntARlE5sAE76gE9gVZrG1XKfOdLxx13FMU3okSKKAxohTYDcWeAQaQ+pBYunV+bOcDsZXYq/AzIWrG6Rht0fUJca3axG++IGPVy0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756835394; c=relaxed/simple;
	bh=1GfInfUsT/1/hQJC3PLnNHbCxwKiLzTi7/lgIusVVOk=;
	h=To:Subject:From:Message-Id:Date; b=jmPYnZfNPFngiLiRlDSzgx0GVI2EuiPUgepNUM6M3lidg2vfRGxeHLtBCsvRzhcxC6+nSZ+fl8ZiyUd7+hAJ0aXTe0FdZvc1j5GYJ93tNnROZsitgdj0nF9OqHWDpXKcvjImL14kzP0vMQNcSE5OXR32AhpLGWUUoeZwHk8mPPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJ2ii3pt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJ2ii3pt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0319C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756835393;
	bh=1GfInfUsT/1/hQJC3PLnNHbCxwKiLzTi7/lgIusVVOk=;
	h=To:Subject:From:Date:From;
	b=JJ2ii3pttv4T6JcuLH8235tH+/gDV+w0goyblCNigIohlyzIgnWGc9tCsWM9r2iYY
	 VsCq93YL32zsGfwHvmN9frKiVhpngX1/4GAPKK75Ig7JzM0EqcaObenuIRh/kIJ1Tn
	 xB1Fu897LhE9n3k0m1unnbDjRe0O1Dn5WuKWZpxzxGbV/dy4ia7YtJ00cuo5hXBNyp
	 RMFcmrlPQy5D1rPysPsbbsWRNjCJ3vy9Se0yUk6o698Ayp77Cmpm4fWab1ow/KxN5A
	 x1+nBS7tc/Kqa4kLqp8kOCrb3J6+7d8PyNBXnvlVCmjLvKyyK54BDo0KPx5g/W0JSs
	 Fwl0m/TbiIkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F3CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683539357.16359.16123906413881747204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8602f60cbb55fef8aaf976a8dae1714a9111ffdf6e788da185dd2539d681963e
Date: Tue, 02 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756835393
