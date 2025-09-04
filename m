Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B21386B4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756945794; cv=none; b=mudhGASxCbZOjbIEwwOsyZwmx8M0NXojBThmQmF26ZCur6Z3PoWa0Be4RyzCvSuA1CXwcbTi5wnkgDej2FnpSxUYxQIdM+1Jtz4nbwsrSePCDiS7tZwTG08fMBq63tY7CoBQDVPC9obstAup82KGK72Ahq2XdYZGvzhrmhX7zRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756945794; c=relaxed/simple;
	bh=I703NXl8OLhOpL/jy7hqsJSh5omupzXIeOfKDjI60rQ=;
	h=To:Subject:From:Message-Id:Date; b=ElVNSlSkeTjsll5YPaPC+uUh79qIxZBDGlbh7VBbsIG4J7K+qWqCWfi/Cwk3nFwIS9yBfLeUvlyY4LT2I3gV5p7J0VmjC80XpCJ4v807bw+bfaSo9leNqJGlsbmSNDOC6+HtY8EBnT7wdB1OgDzLphoLQA+FiNUkkn9aK9GdJkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xuz7Q70Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xuz7Q70Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D5C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756945793;
	bh=I703NXl8OLhOpL/jy7hqsJSh5omupzXIeOfKDjI60rQ=;
	h=To:Subject:From:Date:From;
	b=Xuz7Q70ZMKWGI9X6gbGR+P3isVkrjrYAn81Ao52PsSXBeghZzC5mUcuO7fMnJctYR
	 F3VmIPBgBCjYWrjMIiU/znrWKEtmYbh5H1o1d6z2T5Z/xDJQdL7x4CjB4v7Y2PEFec
	 hmkrfDRWf3dUaO3vXL9HF8n6Y4kdvzPirQxcqQQVOLMEZSqAp0NK9/s7AGedWWdaxJ
	 gPJl9fZCIk/t7IZ0Ovfe55B3OwTYQrmTjgS+R069McP9qNdC9jmFFg7t3NtRiPYxfh
	 oVH6/zutxWEDK4iB2wbNYfYf2X7Vaok27aTC0fz3SDb5D33vxRG0trfLQWID3mFPR3
	 RbgYfzusrQ/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90634CA1010
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694579358.7766.13276443354561970062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ded818740cc0605683eb352b3aeecb92e37c03acb9d834259b5d6258301fbb
Date: Thu, 04 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756945793
