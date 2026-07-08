Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639E931619C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783492114; cv=none; b=VKHpWK32Yc6tzk13PB4nk3faMv8yegEGJBC5/rNEz1GB6SmWi5rQ7vK3ewYSUvPdaWGc3mhoNDmPKgoF0gqANSMumjMyO3JEq+N4tZxvLolSoyRhJLPAmir3nDDxoDYPAJnb1PaGDRsrSpAU59Kzszqu9LSRw68J0XV0nWhu4VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783492114; c=relaxed/simple;
	bh=6m+OMv3Zv/kbArTNWcCgOXP2TjbgXO30fiA7PPnzXwc=;
	h=To:Subject:From:Message-Id:Date; b=k9R9TjuY1nUeFSCtxgFMdaQhazvN8KqzekI86XKcYZdFIlS3V3sN8vMz8e0fi5E5tJFLQzisNH6sF84nO5zdaX5AjOm5Lpr5PY+jOeZ7Sq+Fb4yeuNPnK6aAJbwC2MhL9PVOixjuiTbvdJ2F4omf8gmatS8dPuATGUHqPDmfCUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTtlJxoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTtlJxoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB03C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783492113;
	bh=6m+OMv3Zv/kbArTNWcCgOXP2TjbgXO30fiA7PPnzXwc=;
	h=To:Subject:From:Date:From;
	b=TTtlJxoIKfnKmQhA/VOW6KchzQj1nTFtNM6hfNmmq4QQHorlo/5ol4lHnh91QNBoU
	 YPjsyFgvBQ8YOA6DW09qX5/hlY/wwptk7MAD4/HkBoadQm0zjprr4+kgNnMDxBQ9ff
	 Biwu1zGs0k8sgLizo1JW6y++Ga44kEW5gC7NekjxLsp6UGMvYC2B1WfL3FtzSXfowF
	 WUY6sbOvcn9gpAPE3SwQOmkCznmTFHF80PnH5u1tcpwr7hgDKBTui8KdYK8InS3ccl
	 MMxSkm1Os/0+xSV8wA8MBuw5+UGqWzqh0rH/C9VajocxYI82V2d8QhOOYrM3ogNW8K
	 yFHURtmSdaNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8928C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349211373.5346.12574449399233308713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff0f4a4e57d1a57bbaa2c3be4a4393a0f46753737eb4115cbe93da46de1ac33
Date: Wed, 08 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783492113
