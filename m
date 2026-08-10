Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5928125B0BE
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786363234; cv=none; b=oO6NlrrKE/3o6PKxmX5t8muxGhEBwXAcB8AIOVpoOIsPpoiUEztQlyNbr2kHJp6RPh7FZByyUymJy2ti0fiNKUEg5gqtneDrF5K6COI1rhBD6wNRg+bk44dP+HoRi5Da7Yb6Lq3ig5LHR2H2wRUilHPvrYP8sttEX+AOFTHtm8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786363234; c=relaxed/simple;
	bh=XxeCYIFny34GxT/nGfRbTUbbfVf9JE6G+kvtRJqr5Lk=;
	h=To:Subject:From:Message-Id:Date; b=GeD21dU/jiOKHFWhQIt71fSKOQ5ONeoO0n/OB7YCxc9m6iRJD0g6NEFmkkZrXIKcxjYLZPtaAHnJYLNExUD4HoOaKtWzCnrTVV9IXgjAYgZSGSbShNPJr7PVFhq3ZLsfVxKO6Pt37Xq1uvGXFjt/II/eUa0zasUUPVKRDQPA9Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Abk0KQpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Abk0KQpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D123CC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786363233;
	bh=XxeCYIFny34GxT/nGfRbTUbbfVf9JE6G+kvtRJqr5Lk=;
	h=To:Subject:From:Date:From;
	b=Abk0KQpHjL53ubU4jbuW+ZIt3UKRqSxDIEoF1TdEbSFSVpjbde0aNJ7Afw0a8StGt
	 igtYEQ6T1zdiiScis7W5TA9A8xgyU5lqSxl+aoPxb7gLqTJd1cR7aTDZHPDptnzwJU
	 VFEJKiZ2P7EeD8/vmSjonfMhtFdOGlv58rgT8BiWODFCrc4LjPy21lNR6eZHwzWCyA
	 U8dGK49h/8x7dPn470OhQWisz2px2ZccAdrYvwEp4RTnx2Vyyw87cfqv/zLdSKc7+5
	 9lv7AAiKY1QoHtvxhr1AAIVriLnYxZ5cBMerodYfCLeMFt2/Y+CzfycRU/41mcE2hd
	 7G2vjFWGEbK7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC588C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636323369.3222.17761279646054498063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c18d5da1d95ed96f2e66736ac329c04bd8e48cc194dcbe3b5c4557f7cfd851
Date: Mon, 10 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786363233
