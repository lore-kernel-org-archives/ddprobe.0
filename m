Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA3A4908BF
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785129634; cv=none; b=lCoTEBScohmdyqjAKyEcpckFyF1aMeBfl0WDE+9L3C8q5pEnd1JACHE57wHYTNX/AcKwLmb0HkliKzDFpKG3RH2zj2bHj9AM3w/7jx4pk0EE/VtOwSCYiS/z35SQowIkAqbfpkyWway4eWs0CaKxBLm4lqw7t1tEGNyAwbDqgKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785129634; c=relaxed/simple;
	bh=WBsEJ+S7usmvBqRvH+sZqkimO26k2bMDuY659Dv2J5I=;
	h=To:Subject:From:Message-Id:Date; b=lqvONSgolSZm/Nmq/YSRtTWGpkp2f9AqItoRjGyZ7izVbeKrZybqZ8lVcmIWHAuZ5Si11tAhBgwepETc0RH3Wg7Si3wlpxduMQCm0/mphP5MBKFGj4+sfggRxhfpEV40GY35rSiP/VUh15kKh4gxgoXRrSYvFEfvVWJFxwropF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUiW2Rks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUiW2Rks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78EEC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785129633;
	bh=WBsEJ+S7usmvBqRvH+sZqkimO26k2bMDuY659Dv2J5I=;
	h=To:Subject:From:Date:From;
	b=GUiW2RksN/Lu+w0w2I554Fte78G6z2Lgfoao41shlzdBf8JGhmcLUzF+oyYSYa4HB
	 KnWNg1qxy1XXmpTlmvTFtL4+hXltrJ9XK4k9br1A+3jiYgaAE+Xf8CB8iE1iThce43
	 xV0U4JbBu1YNrat3gjPqq2r2htR3eoQU41kOSw0AWGXf2IpQYcAqqmnp1FsqcSpy3g
	 klcGMd1WwLf2UoC+mZutToRJpsZzjyyyLDgpypZGyihnSAhE6eXsLSOO6rBt2Tib/c
	 8HVOxEic7xzxmuASbcQY5pVffdwQhFO2y8kIYnhRpXO3AIqIF8AxcuBiD5SP8CeTHf
	 XkzjLfFst6Fjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E1BC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512963372.3431.11289089462358590335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be42d71314f1df59d5558d8280905b2d8131d608803f2c09acd51284b06aad9
Date: Mon, 27 Jul 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785129633
