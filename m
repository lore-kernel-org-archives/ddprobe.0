Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46040DF6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771737894; cv=none; b=AB854Ce5aLkyD2tReu3CKUj4jvDfYjbSrerW1KJgWE1u1Db0x/qUTKbLj1K/i5DoKutqAc4FpkN6R7WveFLi7xeSTYDbQC2JjqOHZc01PnIlXGiz7NpaXoCFTTjwZFcXQFYGvtLSbpXiNoZdgHxeyGnyC6ZhA+FOU+Ok38JWJlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771737894; c=relaxed/simple;
	bh=K2itDuPA0FwNhMYXdqWqUQ5EpFsTWoQowPk78Ou4NZY=;
	h=To:Subject:From:Message-Id:Date; b=iX9ckEVYWjOQQXQDr+mtY6qBxA2bk6Yv/zSbwoWwG7TsHnK3CI4jCxJF4L/mz/eFNVbmsEKmM/M3wd3whsVVBFliZhhHmKyMCrqfphHRqdTdlgreN/BZxPHQT/d7Rdlj04JkFP99exA5DuGfWja5qbR+uRRf2XSDfjlDFd7X604=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RubEbArI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RubEbArI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAA1C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771737893;
	bh=K2itDuPA0FwNhMYXdqWqUQ5EpFsTWoQowPk78Ou4NZY=;
	h=To:Subject:From:Date:From;
	b=RubEbArI+GRSq/i1LtrhcBsH4DkqlXWPS+TdQWXY9WDsFWeqpEqPKyGE3m1vz1mBN
	 xXKKvI7TOVpq6rLWp1I+2XXf2KiMfnIg0Xy2qJ6mUl98lKynVdBXRVWJGUGRmdyiGN
	 95BzaqNjoVb2wciy3saJPwMBwg9/dTFI3RUMcSaMM4q8I4jBB8e+uKyCXZnOlTX1KM
	 fHYPVpK6r8u/+0X52BUpmbB+kM6ZwgIIDidbAp/jaxsaGyQwGFoXidTcQa0K0ztTZz
	 ts+i5UJlbZ5VSCHjX2yFwpukdlcRfNhMgiadlvswNC5dsICXLb6Ac59XgKGwIYMVFU
	 4puEqiP5tBKAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA5E9A02C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173789357.24406.3337469230263129053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7788e8446f15724f4f1bd448af4d632b5d3a32c72e207e0b489f3946a263a14
Date: Sun, 22 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771737893
