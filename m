Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2336419309C
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770528234; cv=none; b=Uk9Vibp8x370IfuLYzUcVFvv6idVy/a1suyKJYP2OZugkgE0THm9jrsZFVjW/9twno210+xtGUMaY0lD5JCiWRszQtMSywBppjR8jOhO1PErTtnN/h7k0O4qXIQZxS7kxDA4Lwa1xOhR5tvr+wKrktTWrez8fZCSOTZ/2EJIRZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770528234; c=relaxed/simple;
	bh=p4AQRPE7PQwfwAUVFj2rDFca2dAWBthZbZZ5h9rF64s=;
	h=To:Subject:From:Message-Id:Date; b=OL7LmiLwR1AvGTi2cuEih2Bx4kf8DREKS4Z+9ZddYVXcr6n0+dF4KxeljYLBnIPVzdkHis/VwJ276rDvQx/W9DNc9Rb1+eq+WboJf/g06xhQin9WN1Z+/ml196H3zWmzc4oc+UG/UehQ0+Fyg30aKJTUH454iRlMyPTnidc6MyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUdUBzAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUdUBzAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3F7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770528233;
	bh=p4AQRPE7PQwfwAUVFj2rDFca2dAWBthZbZZ5h9rF64s=;
	h=To:Subject:From:Date:From;
	b=rUdUBzAQwNuZ+nLAIhNuW/q2HgyaVTf7wPaJt17JEaWZn9b/y+iBRmzf/Jv7xPPHV
	 wQnRhNMvaM4ItaouKTq9mFW6J/0819vMxHNRbgGqymjMKIOGXQwdch4ENJXKnWayda
	 ikd330jr2O8l9RFf074oa/T38MHezrnZpmg52LwUqSdDJT2s9s1Or99zFRAQj6IQnw
	 WBbt8b8QpAxlwOzvQQw7MvP+LkyLDuzjY4pm9GWjwDvJTMo21YKcEuZCeTBc0jCfJx
	 SQvCPQG8PpT1VFhrEUm2M9sD6GMbIET8ybop5ZFoBj9qyCZVYlGSwMVPYw9MnwlIau
	 i+Lqw8JHZ6LNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B439EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052823359.15322.15766553141354450476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08461abbc96b020326647fac15aa071f6d379b373d35e37eee6007905555a120
Date: Sun, 08 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770528233
