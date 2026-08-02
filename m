Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496693955DB
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785691234; cv=none; b=rms+e0d1XDilRfeociIXkA0uYD6hBJtTzHwm0NsHy8oRh1i2wzpLAX032rI+YkbQCXIoNHYZ0UCQyibSR2elkyIJi7YHLoHnhfeVsykqRC+vShxGWkO0Bstavg+h3wIyG87+xZzDawKALmY+dTvxKVEJEgSg1TH/0TLPe9r/xqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785691234; c=relaxed/simple;
	bh=y5Yf4EedDSEGyOWDEpOvLTELVQ9cg9MES9hnX0SXBwM=;
	h=To:Subject:From:Message-Id:Date; b=hwcNODfGBqLnhVYyxughh5WyIVD2hNI79C1QeOfs970ILajWEqhBOjMpkxvRDyEpN4hAZhovA4q8CRj+Wae7WSoZzP+EKBOpuNx3o2h8ha06SQk0/EM+acQGbyuBXzqgxF/hDxqO9XS5q7LMgSQkG2F8Z6GhXir1+JpMMN6KYeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4YnzSoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4YnzSoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5F3C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785691233;
	bh=y5Yf4EedDSEGyOWDEpOvLTELVQ9cg9MES9hnX0SXBwM=;
	h=To:Subject:From:Date:From;
	b=X4YnzSoM4LdVYFGPtSWZIPw+m4nhRgDfoRwAZlHJCpX8CYolhEkInebb1RsgYzKyb
	 f9p60jWeLPwNoEInvEvq1UIxyhf6eLLdfhidCTZVEys/Zv6TD1YivSufpLiEdnoFwG
	 IL3AOcApMqJqBLvxVda9zpZHM4X9LMMkYZg83Q4fGqK2hpVGS2AZFig3C1Kc3deUO9
	 qj03QgmhNYG90cZ0xtlKDRZ34ebcl2C53vXzUscn4zyrXvQyM9wNiJfOaEjZgZqwD3
	 +N49jHpD+45oRu3o5cefUu8Zv2/CRNtDqtsc6j5DQv5Ogx+NCJUflD5otenboVbEZv
	 ebLLNdxdt5teQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A5EC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569123368.4419.4579636617009066865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90dd289cdf52922daa7405512233c57e3bcf0dbce9482659c47d81c5b5161cd9
Date: Sun, 02 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785691233
