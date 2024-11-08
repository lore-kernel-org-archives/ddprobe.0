Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2048B23AD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731035154; cv=none; b=BDLCelp+5Jf9zLNRjHYhqcVTcIjVRdcOLo3Ei73KkeiBgiXubLssbtaEaSelyAzRuvF02qW5JwehWx3/by9fLRV3kZkQgCWy+5tAtJyoRFYHQLRK4CEPV4CJN4AJvnYtnSxbDWuc6HGUJEjElVsU9Chorn/ZSisrxkd8pKjkhZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731035154; c=relaxed/simple;
	bh=Du+0Py/guqT3ornTFbFquFV9FNLQSJM5X15LA4b84tY=;
	h=To:Subject:From:Message-Id:Date; b=cXzYXNGLANQIgDwq3w4oS2K2WZyfPz2DPPtDwMdIBXHHuTcJu9LmLraBKt99oxrP8+lUbd41G1Ra68omhCaBYn23b1sqVz+/XxrEBx+Zvovt+3Z4zRLhF9MnjxVl4g3H6Rhz8sbN+JpdjDLLmALCjZJ58ELdhY6emrJ1wHd8P3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml6bFGzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml6bFGzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7720C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731035153;
	bh=Du+0Py/guqT3ornTFbFquFV9FNLQSJM5X15LA4b84tY=;
	h=To:Subject:From:Date:From;
	b=ml6bFGzD7xcDfcQm6aDc0oD44KUU3h9edcYcTzGX0CIOtGvfuZczCvQBY4JEljo5g
	 rfdsTgnWJiBgL58xNzyTJcr3WUEFc8u6TbiplD8f9wOkLYbBu6kyUrCYM3R2Jl/fjc
	 VZnDrp0nS2w3z8cizcnhc8N8Ffb4ARXKTLihUbGfEl91zDHBkoNzCYFlsjJr7JVz0J
	 TCzjLtPHzO+kcjdYlfEiFpkkzVewi52bDH3C47l7Qf8z63dKZ6DujVgLxl02wV9/tV
	 BNSOFbJEuFfj2QxnmGs8GSMzdPRGIerWNykEF1JBFsKxUfPx9FsECY+3EfVszVEZt3
	 75HzuEfKogj3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A60D4337B
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173103515359.12146.8654458018325784736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2670a134c387367758e46c3e3adf6e8473612a45ebece431a10cbcafea0dc91
Date: Fri, 08 Nov 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731035153
