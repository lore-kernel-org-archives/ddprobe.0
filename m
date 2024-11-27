Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5EE12E1E0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732737954; cv=none; b=YopK5DEsTj1FLygoPDBc6HLKRqjnZa0tZp3WUAGG7c3NRCiO4xb2aPZB73B5YqPQ61IVgO41u5xq7tLYDi5i4lHBSbfdgdp2JPVhBh6pyCs26G3Doi41OqQN3R4Zy20PdEa6lazj9YvnlAwtiMR+A619yHiRS2GVdxxGgCW0cuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732737954; c=relaxed/simple;
	bh=6u9Fz+aA2JEP5xHF1OCy+2nWhYCQs+vxpyCYDHqlhi4=;
	h=To:Subject:From:Message-Id:Date; b=BIhVsrXchwBEJBb/2WNODFO3+wWQI2dvlV36HGJYpGGexubjpEALrXKd3p4KRDQoFh419O2SR647ZcI5u29fYoTdwaykjjusNC6lx0v1N0XM71WugYCaDzrS9qbUH7ocKhy+ciI0rr8LWL6X72JUgCqb0s+YkWajrqk52aE7bRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+yAm3I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+yAm3I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF459C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732737953;
	bh=6u9Fz+aA2JEP5xHF1OCy+2nWhYCQs+vxpyCYDHqlhi4=;
	h=To:Subject:From:Date:From;
	b=O+yAm3I67FmMY2eyqf25Qqz+VbPUgjg1gGgHrR37lyYQmutMs5ReXEgndJP8NBR+m
	 KyyuY2glDTxrZOXPD5Ndbk59Jdvwn24zHSLkmrP39rEOzvVgRPf31PNhwoL4TtnxQB
	 3WE5dzRBBuC2BkLfX9UI068h7V2kQSXg9/+GaOGO4yuWFveNh5VwqsCP7hoJKy8xf+
	 PzF4FS+x2SRJ873xnhWsxRthMYvKYP0gK2FN0QzDHPZG/31BGrr7izJW7FivuGqhyP
	 G7Reoa7uvbFSc5nA43Cgl1HEi/RyT0a2l2+XSSitiaXohmwNlBAw7ndWZJJGrUX8cR
	 zLY8govf9XfJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A992D6D237
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273795359.29056.7258823176372746609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf116c2e6383213457430443b1faf3bb2decddf0364f8936e67789184d04009
Date: Wed, 27 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732737953
