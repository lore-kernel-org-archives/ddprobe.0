Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EBE155A4D
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735169154; cv=none; b=m6ymH1KmnSHvkN3RKE3+w3oL39m6bh6GZ7j010xC9aWVwrIL93yTdUNAvAzupRMUF2s2dSkOAkfKmcGE7vy/HljI1zscQgniTP2GNEYTPud1KhnynNE09VXHcEvHiqWQC0US1u/qZ0MK+R+ocX2/IcLWvk5VD4XsPlSKkcUykJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735169154; c=relaxed/simple;
	bh=RD35rezNsu4QP9zSgnPNsUeNkQH3Ie3kgtUbOUtFNwI=;
	h=To:Subject:From:Message-Id:Date; b=JjvD1yvUSFAYTHjluOoxSwym1AO5fQtZIY61JQxuGtTsIn1glfoGcWa1gdP8AH9U6agiUoWHGIN1GuhuIA1MYp9MUflLVtMJFnsAoSPzV/7PAMs8t2KT1PcVPfwn0OF6qZJHEgD1tb6Da96L++injnHSuAClNxt2rgeZM6dw3/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPT2l4bD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPT2l4bD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20E0C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735169153;
	bh=RD35rezNsu4QP9zSgnPNsUeNkQH3Ie3kgtUbOUtFNwI=;
	h=To:Subject:From:Date:From;
	b=FPT2l4bDU3tYv/kd5Lvg1v9TXf8v0xQYDb5VWu4ncrIfVhFqhiLimEB/rFFxmbHw4
	 8maxtll59Yb4JOmo4CgjYwtwe3Kk3Fb7h8w9CLGq64w+xrfuKdoH542TCy7sinsbf+
	 1ONp7gwCJ05E+tZ0G09BisxvqZUUpsGkNbMIlqp2X4No1kNX8+cHduKQdSzvrxxe/n
	 zgV4Io9gqLc2fu5Jgq/fT2E7wiNxVTnd315X3afHK4twZ8MRrVV/+TG6zcbMMR4e7m
	 fbFP0+P/i6gRdGhT7r7vWPaoa2jQAnU1XII+hAuYvp6IgQuwo5mpzAZYTa96QbrUKD
	 WW1Rr8zHLgElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA0E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173516915364.23240.4145819032932925250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80e836e519dfdf8b12c2e4b1ea4d415745e4b4d043f178645d2759bee836c7c
Date: Wed, 25 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735169153
