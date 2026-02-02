Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2969B29D281
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770059034; cv=none; b=Up3HpTKn8z7RQr+r5s0ht4A636Rhae5fLReu2nnLR5+MxYjNLtGJJB7sj0aaA0W/9WFEaOHFO4OMcvzhC7RKGEdL1VyMQzzsBhFQBVHVnRsBVzBWeisNCY/8nuOWo4ETnvgxODPQMm7tNqsUV1cPA6xryLOCEWdxGz9equpzFfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770059034; c=relaxed/simple;
	bh=vMIlZlumJh04gdAtK6GDwMwZ+fZSmRDmVC+KxMrZDb4=;
	h=To:Subject:From:Message-Id:Date; b=ntWIsR/YhPUNojFUPAgrsmg1atSVQyI0I0EaJV5NjWSb8bkuQXKnFfeqRdaIFT/9XtHJ1JXhBX9AbIm/ecLbEWl0kmilHCJX2sYx3O4Rco5DOcjXxX4UokhglLtvTq3C0vKoyJs3unKAHW7dflC8NCknCyQ/XOLnO8rVJVFdagI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDNT/K6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDNT/K6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA09C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770059033;
	bh=vMIlZlumJh04gdAtK6GDwMwZ+fZSmRDmVC+KxMrZDb4=;
	h=To:Subject:From:Date:From;
	b=RDNT/K6hezKD7RMc88IYt8jF9QQFCn/XQz3PFpTN5Z93WcDMDtVN6uPiRw09Ib0Sy
	 75c3EOxOjJ5CsI06kqW4YFC0ZfpYh4UJqMQKMFx1ai7oXwy16bnUwOudhx48wjDYFq
	 OQmoMtq6HmAWzV3jNzc1+YaXiuZwqtbGWUj0FdF/qo9xAcSJkLDcGfspfSDwVhTq7p
	 3c2jKhpmaWl/2J0e5LJyt4HzK5ok23rmRDeEngZoffN8deJxodw6obcVKE24Ow+iPh
	 dxbn9YRkKG1Bh43tlUMLM8aYKcNIPUfMUOs0H8VP2s4BogSsH8ogV71FIL66d9xhgc
	 PSchCXcC6VBRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6B6E7DF0F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005903362.21266.12670872413633706189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667b141fd9f548fbdf7fbed477b826e04ef5775d89420662c41e0eba0d94c96e
Date: Mon, 02 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770059033
