Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEC12F7EEA
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778967634; cv=none; b=utEf0u97T8K21Xvjn1+A0HHiR1Az6IJYaAR9zD9qhUdjhR4mH2+m37180iyZwk35gHGg3gsl8CkHGAXUtd1w0PfA52UHf/wpVQApsOOGYdEn6I9P6yHVcXzgspvQtnnaP+gw5srJpQec1SlI+NcwI9691vtasPtZqEaWjAcaY3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778967634; c=relaxed/simple;
	bh=BxyYYbq9LdgsVwsJExdOEq0V70o5NRTHjuWUmkqPjYI=;
	h=To:Subject:From:Message-Id:Date; b=Gu9bE0HQurxehP8iZWf4Ysgl8MjxJExAyfTDGM8jhXOUAOvh/x/SKhhINIirlD++6Cr5lMEwxZ36beFONcVgZOHfIrdeGm/g+TBzm/Q8vbGA/RiXL9aaw8Mfpc6w2syVXL6fvSgYNd9nRo+qt/4sfCMIhB2u2ZrW0KSNLRu2CYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMHyOeGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMHyOeGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E7BC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778967633;
	bh=BxyYYbq9LdgsVwsJExdOEq0V70o5NRTHjuWUmkqPjYI=;
	h=To:Subject:From:Date:From;
	b=uMHyOeGC+z4jgCRrYzcMR0L08jDQpGaYmChIDyg/lvnum9FJx/To2z0eIR/oGNle1
	 6vSFGXOH+8QouGZdEO3BT0sscfqNHu+eTZIdhfgLzde7ZvO79CgSTRg8dsR8FtYcO8
	 BaUzllv9g1Kln/gTFS+k9a5r2nnTW3Dr5NKN6imNrzTypOL97SwqP9+HigruyYpg1M
	 KEmMnuH8OG2BUkDr8nhW/dSn3hGv+tApxVLr47h0QJzVHNW6FdV6PdzNc9OCLB8mPU
	 cRHsHZlS8nuFpdpd43ZjBouzrGvF8J1uajo2vrhhF41qlDFzgxFO7sDk6anDK2+V7c
	 YQlwuclM+ntFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC3CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896763368.25994.14005185266076678805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262ae9125753164a82af99ece51a23a1876b9f83720ce8b267bff8fc65b146b0
Date: Sat, 16 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778967633
