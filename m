Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A2712A177
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713271763; cv=none; b=ezhD1n4+drg4J/6O2ufFM+qGJ3ACN1VQ7Ar21u1l8gvi428zQvp0daHWTpLl6Tf1hYO7mvELs9tJQRSLjAEVhCRYtnvIL1y4yXqJUIbR8Y0Ib5uxDAIamlVJIyskv8i35xKgXS88eV4TGrIF9aSYtsZ3LDkoIpdSHQ4ZHFf678M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713271763; c=relaxed/simple;
	bh=vsNS7GwwXD+bKI79ggQHMzaaJzhI9TtZT9e/fDYhYgY=;
	h=To:Subject:From:Message-Id:Date; b=mrO6UDZewrHoyXUOk0yvQt8HS8192V9A3nDJ0cMUaMOEDgA8v9vkbnqPnzJnN/DNTQh3++vtl95Eyq/mJexCTjDHkLkOIf6JAItzZSH884N8IVAAe/IeExTmXOwYTZsXNatQQ7VPcLwOfoOqM017sgn51XcXaj8zKXWJ3rnv5T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcyeYMkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcyeYMkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03888C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713271763;
	bh=vsNS7GwwXD+bKI79ggQHMzaaJzhI9TtZT9e/fDYhYgY=;
	h=To:Subject:From:Date:From;
	b=DcyeYMkYIdK/7g9rdYOzyK19ZSL1Ihg0pD4FFAl5MwfvJ+gzqOAsF3T/BsofI2G8R
	 i2VORM+J6pW9wiOOOtfIRUOHvCqlGE3YfrinxRC1SA0tZWUKQU2yM4bEFQRHJilqo6
	 yBP/QveRmhfwRnN5PUq84onrQIRYBpMZXLMsshtdnDVzq43WOJSONAYNYqFfNaHPbA
	 ShUeDbDhjtmEVhilmvbMPmdof2KW9B0pCMwcl7mMTRpbOVl+v1uXMi4Ph8KOl0LJYR
	 x/r+BWKkbqNjJycA6cDJh497RuVsy1aLG6aun6WA4komeHxcHjrw6B7ln5gWyOIfBC
	 2WJ8DiDHSr0ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDAFAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327176282.29382.9145742276394624572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b92aece60aa1c6876dbb042fea3c1942458861971b16482161fc4c4b8dbccf4
Date: Tue, 16 Apr 2024 12:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713271762
