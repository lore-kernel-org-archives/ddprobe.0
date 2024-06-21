Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49016B72E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718948543; cv=none; b=X1GbOhyndN/LFgLzsMbgrWtOGEEKKGAy/dvXZcUEcgJ4eZ20LRAAwADCJGTMQ+vR32e+cSVuk/Ii6YjN5nFZaxEPuHwxs0dabJwC3/yTEJUOYAAMVuuPYfj4zvK4sYfwdix3Oj7METir+oC5N6djDh/hmKF0ogoqhITsHDfWjqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718948543; c=relaxed/simple;
	bh=xV3Ekd0uY0dZHRCyc76ZZHL9DuqG3Mz8xXSRNjoFwOM=;
	h=To:Subject:From:Message-Id:Date; b=hRR+PdJ9SjsknDWpWVeIGDW0gfLVwYwQutgSKE0EqITb3eYSHsypaoVSprBDTvGKz9zgTqeOSgkUr3g3OZDslO/jWbBA1NiIMDkr6L7O98IyCgAznGQvkshBTbAsvX1qXFcQsxe2sRd/q9lYK939PkoMhq8DxTfXqL0lCbkjNUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNpAYQS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNpAYQS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83C8C4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718948542;
	bh=xV3Ekd0uY0dZHRCyc76ZZHL9DuqG3Mz8xXSRNjoFwOM=;
	h=To:Subject:From:Date:From;
	b=hNpAYQS/C3WB/voI0JzXZGn01lKM8Xce9QHMIOz/6suoEy2HLYNCLxAd/8pp6YgWX
	 D7TIaSet0flYHUqCZAwPFZweDsobVE5QlE+mPpsnQtF1Vx2YbEEpXa553Pgnkf78hR
	 RwqEfKtKCH/ZEp821e7A9uQlPFTcRHHYhsHDipwhCsqjSEbpKv5fZJ2+ajgDrsCGbg
	 M639eg/9ivuoXAIg+uTLOjdw+2ZptgeIfKd1I0sfVKOHRuZgI51e99PLxJR4M7ho2i
	 xXiuTViO77O0eVP21Lo0JuR6wBnndQxQ23p5qJ91zXDzcxZeVhmX7mPQMMhYrHivin
	 31nS2jTEffZEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FF0C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894854278.10564.9210762158042297936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f5463b5b00e7bc97fc4722d2bd76939b8a5e92011453a5d52a963ed4b9294d
Date: Fri, 21 Jun 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718948542
