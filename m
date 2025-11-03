Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D35165F1A
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762144794; cv=none; b=erk/FtZEtJX+LPaEuqFJe8QD9o3MNv9MZotwjWYVqUSaw7gKGayTz8qp2RucweN/31UZrGLEBAzXXntsOoR7U8Mssh3AEC3qbcCO6QsbuXCqCfnFV1LOSk2i/K7WFsk53FVcKwnf8ZIOKv29UMDYvShjqS1mA1yh6gpBy8eAZMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762144794; c=relaxed/simple;
	bh=yMo0Zmqf4BLswO6ujKoB3shFNeoTv6ht0d/kOwKV1aE=;
	h=To:Subject:From:Message-Id:Date; b=fnEWM4LyERvqf3ZP9q4Hb85CPFL734emi0MfIqXHGeXgaQnHgibWd4o1vE8yqqr/Bzas+E3TBeFYTjUFWrvIYIidxgugpyWtHAF6BA9qecOIqmmHV5Zq5QhFJqHYiw+YSUyRtZFYiZrraHRSQejdh0fthNWnOcdWt4HyrDb7COs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkOyssfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkOyssfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E27C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762144793;
	bh=yMo0Zmqf4BLswO6ujKoB3shFNeoTv6ht0d/kOwKV1aE=;
	h=To:Subject:From:Date:From;
	b=fkOyssfgnOZIFxgk9WL0dsjnp1plQBRkuEO+m8Eu8BM4+zWbX5rEp/xOQTIF0RuA3
	 /+z9uqcSa74k5DhjriOJ33iPcsCwv8NOd4c8ze/mDRRYB29BaJ6PmVm19+nBucWnFc
	 FWRlzjJhJ97iOBnnbv8okLH8ve/tBAOcUn65yqYgpZiGxPuphgwrY88fTMnjI4JPCo
	 tMeCUTigOqw5JBdXD5CFi6OEQDKJm16fj6+3O2ptaykbqJdcMpLqtiPKIA4U3xSnC2
	 zFib6KxFJYSEMZU4VjT0LUzRlTj+Hak442qQw8fMyOS6m2uJUu7PPjl6fqps8sONm7
	 UxkrZw8ct2QGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDF2CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214479363.15970.7256514813208168905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edfc63162db9fcffd35f58d38d9794bccc2d08c6dc007ce71130a88a0673e70
Date: Mon, 03 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762144793
