Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF92F28137B
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747953593; cv=none; b=cYvNpP3NA77Xr2u5IpwZML2VUhKfqmyOSIFuQS8HU3stMWpio8lSa1vQSRxZXsKvWPmZdYp+ptHtZZR7VlbIv0nlSw8EEgAm5sZYDOyb0nzQEekxXrlq+vPPghCca/GwOe5c+OR0E+r/wObCUqHDRTaVNvaei9+4OFmUIuTYpeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747953593; c=relaxed/simple;
	bh=2ZDt+kTPWxhy1fBP+Og4Xzx1j/HcETuHZChjkM/XV3U=;
	h=To:Subject:From:Message-Id:Date; b=jgzIC44+CVOJAhwBgTnp1u+O5urM+B6BHMpf3ke1oslk77uNUs4pYudjpACItQ1f2xRmwaMLUgqmxJUFr5LIdUHYLpyAzKneEgpjOeMoXsx6mi1AaRnGEZ57W5U7qw9XadUE9y/2Y8V2L/kAC021f/IldcGLqBPf31s/0C18VOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bux/4v17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bux/4v17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C19C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747953593;
	bh=2ZDt+kTPWxhy1fBP+Og4Xzx1j/HcETuHZChjkM/XV3U=;
	h=To:Subject:From:Date:From;
	b=Bux/4v17zk7CcltTCs3RYmuiAo29EYudgSSBEBzNcS9hqK45LidJmTuVlJEeUeeOe
	 R7NMYwRF+OzWfe26uZ+iV9u0nHyofwMh7OQ4yUCFQHWR6C5fWTuqK2W5TE/m7W+lhC
	 ElG/wWd4LnvUgWQzr+U97No+j8jUfJpg0MQeCmhvpuCnq24v5Pifjr3xXlt33k7WOK
	 oRMWBuDgB8cQxArNu44+bX7l+kKyjF//jV6WapeMTTKJl3avTKi1QAP845ncP6Z3F1
	 I8BQz5yZJY+zQVKrKti1fNpamPYrk0vvAwyU9ooDankxRglztXF1HS+yjnIS9kONfJ
	 N1FKhm0Vp/lyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927AFC54ED1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795359359.24292.362208342792343915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6278adfb85223330d9c22005cde2023a27f04d7e65fb6517a1aa58390404a60e
Date: Thu, 22 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747953593
