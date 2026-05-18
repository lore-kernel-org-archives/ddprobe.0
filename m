Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E193E3167
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779094234; cv=none; b=hEeBmILtXS8CTCeuURhkjcdOztfKd/Y7nX+harIUl9hjtTZMaiPHeCZeEhUh/YeU+Dv+aeHx7xuKnrgkFKpKmpmZuntuXJRzV/WRmLl3OjlM7wWqLcneWS5r7bePmaFKNSvhIxjvjKmntYE8FOCcNtp3NSVJQSJEOayyXlaTliI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779094234; c=relaxed/simple;
	bh=3yQQaB+w5D5Jz5IkghXR0FDrti0sBUO9RO7gbMR+Y4s=;
	h=To:Subject:From:Message-Id:Date; b=fGUsErYEqaEmyXIw5bKEtP+UTNapDwc/uGwyQ/0avV8NDDhp2QknD7nGU+2aL7hmaObSOucvhk4faaLpTuVsA+YUG23uMA2bmlsOcwWRbkcjHF6QPwUs1ritbZYn0XfbWR3+lmxMvm+vEXotbCZu4jgDGrLwdlO93ExTk2vLB9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFShNA8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFShNA8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE11C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779094233;
	bh=3yQQaB+w5D5Jz5IkghXR0FDrti0sBUO9RO7gbMR+Y4s=;
	h=To:Subject:From:Date:From;
	b=iFShNA8WcVg59ZiogOTSy5Mph56dqovtN3wiTbaoqBh8NZoRvxDCDzso3iYJpxt7a
	 j0JbL9kfqsLwQELej0KjPr8VugEiSBBP4cz3LuSvlUal0tnLZ7aGoP+3T8cR6nsdEw
	 neEMLvzFfqCXM87PWpfGZVofyJA1Q6zLCs9oK6Wx6lTnqlwFhWmjsBkgw5Koyoqo5R
	 dPtUrvvde2CoaQEbCOcgfcm5FmJwH3DTvJimgBSyfVGmFaBd4qzqGQoL7yRmbzlf4X
	 GZwNu7qix0ji1PTp6WFKNhrPxaOGGa1mbdhc9lv1iIv/n+FZaGR/oNd7ETV3a1uonS
	 H9zcmomLYvsig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47BACD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909423372.20804.16153914807758783022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c0fed7381a32f9d364c20f81fb45410ad0bcc12646240f99e3e0a336f197e8
Date: Mon, 18 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779094233
