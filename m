Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365C82405ED
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764544374; cv=none; b=cK86ejFvNDzw5CG1LSzZGhksxdeZb1JgCTvpWax7G3BPChqsXDoUMILRSa5U9fo2C1Ht5MFhkrHemFwP/tjQLrxFFh0WPU/fJjepzFxWd/Zo1sSctsIkl/nFgNLIEMK55Fs//xuJdwivqO7OoW4QhC0JQioLkze0uCSh2+7a5Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764544374; c=relaxed/simple;
	bh=4SZOqlGIARtfLbxGWT9fC2WvvYWRl6zuXNa5ZAg9zNY=;
	h=To:Subject:From:Message-Id:Date; b=VS3PNqjdvXFLZCJAje8ZWTtdCz7AuCoK5TWKWPu7nSOjiwW3LMYuUbCbso7wQaYdIpC4ugsft0+L/B6HRvahoWxCCExy35+7GMbEMQ/MaTOye3r73UJC6vX8TBzP18MmLIRAYmFzB8+QkxoMJkpMvLcVnneYPpWPkNoYydXayO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZhJO81w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZhJO81w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBFBC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764544373;
	bh=4SZOqlGIARtfLbxGWT9fC2WvvYWRl6zuXNa5ZAg9zNY=;
	h=To:Subject:From:Date:From;
	b=WZhJO81wuynI4r/wPiPn52zlfvAWT8jSXvqGU1pfsqHITvV47AMK+FjWN2qCME+Vb
	 Srv1nyze818zl2AR2Z4qZr3nTCee3mXT8iJXpG7jpHrSLtt0Zf57PEsv+k7VB7mpwt
	 gu+qpfPOj2Z3PS8PN60y+DdZZpSg7Nbr5RDuul7fTyDRO2kci9p90ikhI3LA2bhSsN
	 ohKS8X1tQbQnavmUXxVqFirHKCMjNcjiPlE4lHp/X6B0eyI8rhOVAXetSn0ac1ipD+
	 gbcsM9w1Z24euAYTXpzud7HAvti+xjxsIG9UDMyaejX6ECcZvOPjfvckR8/ttQOWde
	 N5Gap9IjfUNxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9548AD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454437358.17776.3348803868062447100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db66b1f3b825cdf4727946d4a91187a61931e10a6900b944d07c779e3caa34b
Date: Sun, 30 Nov 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764544373
