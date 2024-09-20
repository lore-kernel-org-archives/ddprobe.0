Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283452746B
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726808754; cv=none; b=rcLD4RYjxpzz7kiFGfV3lzPMd4lbH1fBs8MHT3bA8F/l/1Mp9MmTGxmDns3r1BzqamqlUQpT7zKkcvdWhaQWrWAkZtYcT9Qo2kjugIU0ywVt3/5/6lVLKXGs6ng9pkEJAkby7ldJ9bW1TN3Uh9yqczH0XWHzBqfvTC4b9E13VI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726808754; c=relaxed/simple;
	bh=U6r4fn1NOcP0m8Ss2cbtZ4pypP9gwizkC2Wfl6fUiZ8=;
	h=To:Subject:From:Message-Id:Date; b=bDX8rRGDC5hHS7Ow6cq8gyEhnK3JHt8X5NA67RAu6QHZhRhMC+syzxfD87PODa17Ef5oGtE4UopeegqgzAKXfOHGASnnyHeJVyIix6Vqx+2BGNfovjoyF4vMxCV96Q35uXCqB7MjXSZpUeucHeKLdNx5k82p10P288cCFvTrlBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrydjoLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrydjoLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C26C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726808753;
	bh=U6r4fn1NOcP0m8Ss2cbtZ4pypP9gwizkC2Wfl6fUiZ8=;
	h=To:Subject:From:Date:From;
	b=nrydjoLNiYFkUiLi+0Y1ZmRhQbnTdo2kRINwkIauVzkCRQXWcnpHz3ULBkvUq4ISR
	 HfPOTZ3Kz2/p2HKBf2JtKsfjeWTGoHYZ/uSmO5ShC+Vuhm/Lem63O62XD6ZYw95aHN
	 6pPOA8jlCeUM2POdC9Y6sWd74q87Gr8tEkvQkrPKlnniNoYp02rflJNqr1fJvXwS+6
	 9telLLm/vxgHCouVvwELaSy7lR+loe4GZsgzwlnDUnmAhiYf8lWcm46QlV0jJBqZf4
	 6YLO1cX+y05bKmZMG0CZOM7UW50nz0qsM1ZVkbG4vFtdL7GuJ/pHLK/UkmME+ff59p
	 5gkt6NYzPTbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95036CF58CB
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680875360.10863.10544832502142647985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c686574a2491994169983cc3c5f6d6eda5c4da1311af0ff201b5fb556b7fa7ba
Date: Fri, 20 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726808753
