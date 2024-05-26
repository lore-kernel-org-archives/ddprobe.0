Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7624417730
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716739463; cv=none; b=ch5Ota8gP/A494I16w8ct/VJkg1aChvs9H4LFFwQUp7GrltaNClEwerILYPZe8+4FmKrFGZC6pQz8azLMILuLzsQJl++kZZHijH6UN71NaB6tWM3joI2kq5UrTu11K9tF6glBc1E9ZmYCeJ6iZRPfZ1A8efeD8YxjV4jKox0Nd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716739463; c=relaxed/simple;
	bh=9fk1Byn7cSaJpoTbAhzGTwnQZdYPa88KHFDfrHbdJbU=;
	h=To:Subject:From:Message-Id:Date; b=k2cePQnFigdk7VhrhyNQE5xuY683dX10tP0HvOarKekapPcuQMnFLgtrUeDmxPY518hBb1WrkQ/JJYjS1T6sjQnAOH4gDr77ABt2C1zV/rsXRvwO8ADMvqo676nc+UNDfny++qxcJzj26jg7OdR1ATCN0CC1S0Jm0CC/vfelEV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4eHcohh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4eHcohh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B48C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716739462;
	bh=9fk1Byn7cSaJpoTbAhzGTwnQZdYPa88KHFDfrHbdJbU=;
	h=To:Subject:From:Date:From;
	b=B4eHcohhj1WOlJ8vQqLSy4BjMqNnSFkO7Q/28xxkHRwphqlrNfGDX4WwXdxxmqHU1
	 YnOXkUPBODBIW31aSJ9VLhKVWN2Y22KXQ7TIc9NFiAlcdBUsW90A5QyC+/SWioBu/Z
	 L8SnQYTjOENbkCcvwXiBfQb1LylwSF29w6ZdEV3HIbsiUgDuGJK3GBkcaQnR1/tarc
	 DUmT04FgX3grweO4sOHOYfUJ4WqUsigbCsIpiNDb3tPWpegMm2JH6RrwWJK8Sibz+7
	 3R1yBhcOcLeo2P6gf25EoRlxOyU6N/js00jzigfwaruVKFjqZfcYda1Ice385Zlt5P
	 f5UiDNVfzS5CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBFE4C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673946279.21805.3107314228712398684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170513aa864fef850b48a84985a53c903ef07f6f7eaea5e44192c5aa43cb76ce
Date: Sun, 26 May 2024 16:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716739462
