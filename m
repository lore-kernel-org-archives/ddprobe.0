Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69790181
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717200263; cv=none; b=a61l6hdONT1THs3axr6HDyofLfUtTqKQ/hOkVovnt/yOsxwdWVMsKM8HeKN2XzpT9Y+Dr7Xru+0MvzMG+BMtBDz90gzyyGYOU8dtazma0pYBzbI0v0Ho9A+kqT4/2kaFrEmo+NLvzjiQHdGxg1Xd0816ZLC38HtSynNOoi7lHeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717200263; c=relaxed/simple;
	bh=OWCsDTNP1UzIiCSOkHnT21Sr7JIgFEcJo5Lq+NHmkxs=;
	h=To:Subject:From:Message-Id:Date; b=Z670alZZLyYLtDRAFe5D8gQKGEkwWXrUme5fzWkiazfHIvMICwVeq4wCJ2beBFO9kOqK54Ydv/dBQEH48fRWjrmcwufc/dTA4gdS/zjdw7QgW6l4RMw8DTh1LVR3Q93m+SP69gDeCccQn17Aww1DH5Cx8KHzDZEhJ3EzuvHuq5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciKFfY0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciKFfY0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CA9C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717200262;
	bh=OWCsDTNP1UzIiCSOkHnT21Sr7JIgFEcJo5Lq+NHmkxs=;
	h=To:Subject:From:Date:From;
	b=ciKFfY0uYFNWVUmOEmREuYjod5D5MY/+pBKOb0rZqlRyb67Wml+2Qh8H1dBc0aw9B
	 ckgWCjo4Rl7fb1N6xBATDfQlIv4r7B7f4EHBhsOScgCb7KETRI+FrdLdurVNWRvgOK
	 vAlqatI34BMrnDW7JQ0KPbHmsBoJGYBHE6f5kPs+PRKevp+GYAIilTCyin+EnK4ahr
	 ijhIA8lHDqe0cGd7QxcazZ5Hhm7hu8emqcrzEZnkDNacofMdzNBGuHMSzAOFFWuo5I
	 pyb262dosq78kzn45pE2dir7TB/3zZr5j/2csOTwrBqxp9mBmHOaCM/pA7sBncjouX
	 KR55dk9yijYUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6561C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720026280.29623.2571051318213956313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9aeac76bbcfb9d49d2870fddb17dc1772f89efad2421e50cf40787cf1ee6f2a
Date: Sat, 01 Jun 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717200262
