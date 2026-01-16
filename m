Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA07C3612DF
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768565634; cv=none; b=kBuG+C1+mhyq9qGTrAc9qNwlHRCe/PAh69hV8KykUKnlBDduKQjuinBzMtljgDM0DZh2tiX6oaFB91m//dNWVsyyd+Qf8D8gNT6oxpD3teYiURmkc+btT8biCknqTA7eCuKBr08DNLBQ23AMalc+HbXJWZHUh0Bv3FR1fMg1VF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768565634; c=relaxed/simple;
	bh=KPo4RUi02e73G2LMIPpkP6Y+2/C7xvcdChIoPNiNoHk=;
	h=To:Subject:From:Message-Id:Date; b=B9bHlmLPIPTYLJcfhYn+nVS2gV6wcXAmjiBgLmq1QevdTLgyNSU5AAITItFDadizmzlYqFzSlW8Df+EBTafTlwQc5IW3nFOnCwjUuevWBPSvQhlaM7RMffBAftNkF+xvg9zYoUdsXyNYZfcsNlk7RDcJCtJg92ytrxJo5iQs/pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8c2KST5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8c2KST5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F737C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768565633;
	bh=KPo4RUi02e73G2LMIPpkP6Y+2/C7xvcdChIoPNiNoHk=;
	h=To:Subject:From:Date:From;
	b=Y8c2KST5gdc5OKdZ2t79Et48A362SA5QhFyig10CnbXeiYHlPUM/YN3O8y8aQH7ng
	 ckeoShKyFVhNm8PSqrDwtHPBNCq+KB/DjnjqPGEOxm+U7J+jmcZC9Py0qDwX4JeTm/
	 GK/lMmnThb05wALXeyEjFgj4IHJam6cVhIWxJeLDbqCLj2+dCN6A3nxmbq9UK5k39c
	 sBb3Z85nhSum99B08T51cyujAL+FlYEETJXyLkPVFZX8kEUfCo+K48cXrd1Ack9xAo
	 oWAnzBTJdaspG3sHCF/vfpoU6UId0fUPmFjfcUCJy9ItiCMmNTrTMIT3xwk/at2hDL
	 q8xMbO5BAvAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E6D48998
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856563358.30951.14647232313730922466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5978c76ae0d57d0000724b672ffdc0a722bacd605992c73598b766d2288cd847
Date: Fri, 16 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768565633
