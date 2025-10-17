Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05590258EE9
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760671794; cv=none; b=cMSiZk0bF5tXCVbi0FP7+Nft4BTOr2hRdSIfHXC8/kAyqDSjWViv1T9Epp8ydZnhp5xoOotlCRSbC0cLQ7SqEfZEnYbIlUNa9gYDIiNlurgNt5iPGZXiwLw92ZC+0CBjpNA7XqIRsYxqZNueOHzNLoOWFaFv327uZyMF3ig0Too=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760671794; c=relaxed/simple;
	bh=dMvZ+JbQ7wI7TMuA3oiyZd+NOl6F/kdQcf4Cn97RXCY=;
	h=To:Subject:From:Message-Id:Date; b=eLShSt1lDMzjpVdyO6Bv0Wx9l4GFxHNsPTlwq/KwpBYGHS5uqdzEhgN46pE24yVmwYAfqqnVUwAvhk3r28JMRQpVH0YQIYSyqUmuxrQxF2FXYLONxQcLOTJ8nyNjZBiAkcIkQmT5BaDHqfQ3kUPi8EnzF+MT6qBVg7Kdn9iCh/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGlrV6fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGlrV6fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147AC4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760671793;
	bh=dMvZ+JbQ7wI7TMuA3oiyZd+NOl6F/kdQcf4Cn97RXCY=;
	h=To:Subject:From:Date:From;
	b=mGlrV6fa57mu+YXZdbZwyyRNhy0PbZMzu0Kuhlq8bwNAcbHAiZOjVEZPYcNakGGzh
	 9miDRPgrqovu9f9opfuXDUk3wZI4X0F6Drw58JPeDlrkQvMxVUYBqGP0Ogfwwhe5W9
	 Zd/IvSfSjLwQaZzgvotiV71tZV6u37vDUXpadpCCxBRhDA1nUEVMvZ8nTgAUaz/2zL
	 KnT3lKffXsXlN2DOB7GbTHO9jntFWHmkLuEOq6xe9RnOnXa5W8/XP56vFAlgfjjzqG
	 yXwTM7szTIMM0oGz1O1iTh+SPMhOYfZKlMfFxW4KZA0e+2zALlYDqVJY1hBO3NQNAz
	 vGgIsboUPtgFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E930CCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067179357.22526.9610586224521656442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99c6148d509ff1875b3b6762233ff46bc3daf29c9057eecf91f321ca5281bfb
Date: Fri, 17 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760671793
