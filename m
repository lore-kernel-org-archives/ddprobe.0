Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459A7396D09
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785275434; cv=none; b=pL+6k6EZl9cZoAnqtLN7SmjSpjJcQbEVZeAZsG39SYbTefrFmagJyG1Az09JrcRz8QggD7HpW66BdeuDoZCiPgqKFrfADAcihJOVPtHktZ4vSRdOkmQa2VmAmEQq+M1g63w1OEDqjjBlazEhp/p6nQWFkYl+nW2GxzdNeHNdLhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785275434; c=relaxed/simple;
	bh=tI40N57bnrSILGOciq4v9dhTEDXseu7VMx56ktwZuoM=;
	h=To:Subject:From:Message-Id:Date; b=Tw2W0oGXIUpKf1Efkv1/a+Z1hXZg8Kh+/MSHJWIj4x92bwEufE8P1TUMmF7Wg9NNGfnksoCKLtEr9X2iGUme152nZwDH3EyykmZ9KQCHYZ2aq43PizGVmrVvgKsiMwM6frYVNA6GfR1iUy7alC6Kq3rNoBUMCMwOQXjkbPgop88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKHBLmlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKHBLmlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE52C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785275433;
	bh=tI40N57bnrSILGOciq4v9dhTEDXseu7VMx56ktwZuoM=;
	h=To:Subject:From:Date:From;
	b=EKHBLmlCvcllmsvhsAtXu5OEZm/n8YIgR3gYrores2ywcy59bxIV2itI2cfrRNQLp
	 EszKB2kbBDNvn3oDQmzX1B5z2GdHbFQM/+CETM/U3pBfY/Jb3wFviqyavAp4uVPRUE
	 864m1NhR9hOHZbUw7FOJjzSWevETC23P9ofwXgdV8JrEp0auxdrfYdKj0X/sKIo/TS
	 safAnvQRlmTcwIhKcUPHV2ErPTReGlKkfnWUvvS/F5Ml6RfNfd5xv+8UJGduD9q2+w
	 YhptPXi+MI+5oHALg/ZSqRskIjNpOCqS9qHFDtvMJAX+N+2g4HmMzQGyC+eVoW+71Z
	 6c0Ca0+Bj/l5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7988C54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527543367.18268.16615358287576512495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b238e55f3c7e1d9131c73fca9680f42434c38439422b2b91716db146f8c8aa
Date: Tue, 28 Jul 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785275433
