Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1AF685290
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711030697; cv=none; b=cy3NIHFcTQeldnMbYxY1wnzyl3Tal4QfPAgnvNBLNfmhX2ejo+f1C7Rwvh/clIrd/6TvYxmmKgahW8pMlI+pPZe0Vwhn4E9UD3gG4E67ETsQWN+aP7gA/BN1aFbZgWy1PS1mtrZz2qxOtvAIeB8hUN0d5hrue2fTOaIrRk4Rino=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711030697; c=relaxed/simple;
	bh=kJsBUG7jUaJADB7ZJPoMWbzLUX+CrBpEin0M5yyQJIo=;
	h=To:Subject:From:Message-Id:Date; b=VZ1sUlZ4Cbt0uVQ4FObGrhphgWnbs4ij1b0dcMg8z6XVlwAE+ZD/e6cpMLahj87sf0qPWLbTPYgM4lMmpEZHL+9LLY0d3zRzUmXJY/iN+Dq/SuxJxH87YpdCcEkWwQS8ZwkqllwEa4/y1pdOwxUInxNPSVWRZ03FVTQQp41nA/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNtbP4LR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNtbP4LR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736DBC433A6
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711030696;
	bh=kJsBUG7jUaJADB7ZJPoMWbzLUX+CrBpEin0M5yyQJIo=;
	h=To:Subject:From:Date:From;
	b=oNtbP4LR1xU/9j1SGoSTUSqdyvFM6OLH/qnR2GOmSAMfAhBITbd6ZvwIkyycQV7dV
	 BQJAa34qp/trM2xpz59TtULIXHHFghnILhG7YTWZTBjTemWcurIGYr5icLm7gxZt9n
	 usf8RMshfWNVcvQYnPummKyFgm3hYSdtIXotCdVksJyMzzdzQt4pXqtEnZAy+N6Rhz
	 q2nIzA/j92EJhtJzZXo3YOX8vAfWMzeMZecgLNyYStUDeV2ijOIC5T1h/U57hlYpgM
	 GdUbl7v6XIvyuL/RSvRCdt177fAVNE1vFe7ohQ9QOeyikPUX7X930CioCraWoT+EI+
	 SldwEnZec+fGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62702C54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171103069636.13190.4506037981615994351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7311435e8b014785057b580b073438d34efcafd4ef48315c1de892436713b6f
Date: Thu, 21 Mar 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711030696
