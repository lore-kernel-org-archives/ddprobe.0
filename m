Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F29EEEB3
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754366394; cv=none; b=obcYLBoOLUfQBgsHx8F4d5r17YD2GbflPErtMerwjCytughnlb/9pqul22L2MnHtG7f4uxFcJMJJwRsQP0nLNILY0eVKAwTxFUvsUFnfkrCa0rUfloLB2EDu/E5h4EZd3/GRkgx3wLNT65ieYvXo+zH92tb6sL4qyNBI3dfevms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754366394; c=relaxed/simple;
	bh=yr+I7niMADO0eRtmk+KqODg2u3NDI5Gaea5sWtyNY94=;
	h=To:Subject:From:Message-Id:Date; b=na6rSjjBQxJyxIXcdOdhCXcCQiqZZrllAw0ZbG6hse2J+Jp+usF2iZhyOqz18J8jLm4J6oRaynN2usg2hi83X1f/Cf8LF6iQED+ICvAJICzgl6tqigqmzyqjxULHp1b7+xsiSTjl+UVvldthAPUWKEa0AgP0B4sA3j6lEsmZ/7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft650tAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ft650tAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B1BC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754366393;
	bh=yr+I7niMADO0eRtmk+KqODg2u3NDI5Gaea5sWtyNY94=;
	h=To:Subject:From:Date:From;
	b=ft650tAxLI+JNel/tXNn2KSkkX6rKTsRoHzSsS/nJj+GDSdSAoqJIi356sU4D3Zk4
	 LTqjC70cdUSGMrtHJ89J8iezi0On5k8niirVJh0el8BstCyL+f3GEon/tgqD9ir9d3
	 PSEs3BJQqz0S5qAbq2QsRWjXeoJZ6yXcWKx17iar8bXzZ4bGBsS9uPHHTcSr4lFBQa
	 HswY4f9N23X75TF6ru02Xj8/7yMw42kMtcHHaUD0RZAXFIdYPg6FeotcNA1nAKs3KH
	 tYJaAxSaVLJBCg2wDJoM0f+YM417WWr49S+e4yov+bw5tfReleQbQjJ3ZAm7g19KAD
	 kidiYQI9DTySw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E856C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436639357.29090.11670906178887825882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad1842a4a6d3145871e007748ff7ff1c2055f28feba43944cc9735f57fcd594
Date: Tue, 05 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754366393
