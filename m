Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316CE322DD6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769181834; cv=none; b=BVaIVAFeC2Kg9VnoAX3aotgB3SjUgXYTXQbeGMGyFw44kXmbVADhmM3M4xgjan1Yyu0jfSQlRpRG3zgiDn5UFu+RBNmh0LtJRiGAVgXQzeEWAr29hwxUDuaKoBT19tjk+HH8jtcgRUcaRUv1n8hXDujucJECCVL5NTNtO2oz39k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769181834; c=relaxed/simple;
	bh=YTXS+ksXiKLEnjgzZF1ChPVas3u9bRlsAf9yfLFLWX4=;
	h=To:Subject:From:Message-Id:Date; b=WA5hMpf03qPCJFyKgmMT6luQHskKj8AYoyVEP4pJgI6/jgw0uHNWl/dK+18nfsKc+QlUtXRcaEGH+hoLIsHaUmn8Gcsj4TObKD+O44/FnjRgjanEVIQV7V4Xa+MziOw/9XuRL1GbYrC9HViCqj+YL3EAT9dQfhHl/Xl8jl1uW4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2uyuntd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2uyuntd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D900C19421
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769181833;
	bh=YTXS+ksXiKLEnjgzZF1ChPVas3u9bRlsAf9yfLFLWX4=;
	h=To:Subject:From:Date:From;
	b=e2uyuntdwgb9de4MZROhusi0LG6iTL5CkHjxmhdzUkQ4VY8DuklmhLn6RXInEfVbv
	 bz9t1w4POQHGWFcHx6/C4pC7s75+DHImsFm2pfUamcgilMp17g6igZ9FuCG0o4BjJz
	 CxwBUAlPGDCB8UkhpxIkwefpFbWL1uCzxHFOzXJgXUrnxdwSj38WfLj5KN+DWl+I9x
	 RqgqdWa93kBDJOnhSQdNzBHytKG0H6sMC9/Cn4w7utWVl1AvWAb8449iKp+D5HyEuj
	 svYTS6F/+z+Hu3446UFG6LkmPEsLxMVkgFjALF5BbJHCkxITtWr9tALc8vUl32F3hz
	 NjX0DrXG73p2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA7D74EE3
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918183358.2050.12921931789151973277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff576d1183106a6de963cf52f88a0c7d0e559428caa51703cb4284ced34d5826
Date: Fri, 23 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769181833
