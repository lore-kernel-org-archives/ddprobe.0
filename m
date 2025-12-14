Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9D93B8D7D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765705974; cv=none; b=EWV8gByJZGCbGy3k/bryzmlBK/3Uub8dxLd9FGiRdOjOaKNRNGNIeIALLY96irei4BKqatjuh5F1L4ALm54jYOmdQps1wv+dfQkNVhl6+tNP08WM+xGUx/s8JwdYAjbThwOODgM/zrv597FPxSKJ7rZTMl+48mH6woog/wyZ92o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765705974; c=relaxed/simple;
	bh=MfuOk9IUDbzIkZDcDlePr2ogw17RvKwZs3M0eDp9XZE=;
	h=To:Subject:From:Message-Id:Date; b=UixHCksoPubaGdJVEVO1tM7SYy2Kb08n8JydRQ8OWqeKF45Q6hqHDt1kpvaXZh+rCMiZdABWHDzKBF6N8SvUnk7tDETSRGifTHkTZF/34nE9bcipbZfSToR5isb+QJY0zKsmiNP1M6/WnxFhk8wHXiIusenprftwiWZi7SzdCB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnE81LGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnE81LGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC825C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765705973;
	bh=MfuOk9IUDbzIkZDcDlePr2ogw17RvKwZs3M0eDp9XZE=;
	h=To:Subject:From:Date:From;
	b=UnE81LGv0vj2XZmqUnduRc10YGkf0O8X02nzkL3KbjJEHy+oaUPU6KXt59imCJX/j
	 JUtER7I0xC5JMFi39gSQcW2Y7bNWidtFny3kwJoV6bqnPlg3O3hQ6OG1wf/d1xJsz1
	 diipVZ0XJgrajqHgHzdKocI60DZxwK0wbkQ5o5X2UChQlNEfCM0MRw8ETB3M5fDFE5
	 MWfoufncXlCu5wGwnPuc3cQ3w7oob+HR1SCPxbV2KSTNZNKeSxqTly+lBziuXINp9w
	 YCZD2cxCqHt2OAdrn8DLGi1dXpiXlMbcAhVO2cbHlpB7mXf77p6nFGhkttBD4r0lNQ
	 k4V+XeHr8YHmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A706D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570597359.11508.10439997136817694094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97659a1ff5543729f3b3e7cb7169b0f2823176b4fdb5e2052a9b43537c50ebe
Date: Sun, 14 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765705973
