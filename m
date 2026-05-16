Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309392745E
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778931034; cv=none; b=NPGvaqCANiq8ccfpUdkdVJh4GFc3azU7vLNBKRWisrg+Ay5NuKOatbbLNKfKD9tTz13Yvwayy96+3SsSEwAORcIfh9e+cX6fIfTeVNGeYLnId48mEWdxD1OB+Um4vhob6cl9RkBbbionexOloyGt5dx7S+W+E8olDxB2zR2zDZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778931034; c=relaxed/simple;
	bh=p1DBPECR5P5eJoCqr3m/1WRPy6iJbJa4EgJEjhAJqA8=;
	h=To:Subject:From:Message-Id:Date; b=DfkHt7+YJdCigAMmznEx8tedMfJHvkxhyz38n42Z/+os4cN071axC3V5BX2be5MMmCyF2tDBpjIJNytDFaLBPKxHmNPI0Ny4h7hUWUZ4mh5lsFd/mLb51v4ebcQhhW07hIQS+ukJkTGvJNx/c0h3sHUI/QQbqwMRN2RCnaQYNoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZa/bwP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZa/bwP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A5EC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778931033;
	bh=p1DBPECR5P5eJoCqr3m/1WRPy6iJbJa4EgJEjhAJqA8=;
	h=To:Subject:From:Date:From;
	b=BZa/bwP5us7u4N6HY4X7F6a4zjmBJIHX9jSgedWtARpK6y9OQKoNqZ2tP4m8T7tmo
	 Op31OlmQSd/B751inKEkEBLzLw3Of596x6ubRwwbcWvyLbMVjJ37dF3IVSPak5Ex25
	 Xn48pWy33UI9PYj5cguzUTaLqHnICJCaDq2ogMxZ1d1vL2emwHjkcuhlFv92EIUD/h
	 El1ZoIGn/PImiHvujyzCdgdLyKWdP+Og0ikR9IE0eUwxCCLHErpPODDvjy1/uVY8Jz
	 zoleY/JwPsPVFVItfVDfv1ciqDCAj4xJ9ZaA5m8GC9SgrbHNZUTisQUdQhD5eTc/iy
	 BgtE8p2KCSfSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD177CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893103373.1977.1736042559400515363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d09cccedac9629a34a2c0d1d27621c4ab9996e51deee87727fb33e786b2819a
Date: Sat, 16 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778931033
