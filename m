Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BEF30E820
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750356594; cv=none; b=LTjtEuO84lkg5ZlXrq1B3gZfcY2ph83Q4jWYIlsepqtxZnJAD00C++0Ey8AkIJL8NVEyaO0LkQgG718n7YGGwLUFGyqLlOt4H46NpTDWouXwRnm2vU0oZU/f+x5MAe06mchx0YU4Uj1mEOsN1bw3aOiRZoiALWuLbtzGMCE4f24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750356594; c=relaxed/simple;
	bh=7TX5SewkcqXMwI7zcNTS9mMD47OrUMnNcYN7qJh8tAU=;
	h=To:Subject:From:Message-Id:Date; b=iIBOJk0PBkwydXM5SCyJn7+xWm6xH4Y9a86Noj7LjmmFa1FphbxYpTqyc3H3PB3kiFDSlWDUXtnoy4DiZurEA53HaoXO/AIuWDoBZJBIukbQ4eLMD13cls4mPqVdBPRt/zHzyoaflwIKRjfKbpNdZADdDLRlIn6VxyjR09TzXDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVM99Ufy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVM99Ufy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7EC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750356593;
	bh=7TX5SewkcqXMwI7zcNTS9mMD47OrUMnNcYN7qJh8tAU=;
	h=To:Subject:From:Date:From;
	b=MVM99UfyGkuVbCUrKgF1BSlFtME/VdLgdxpsSK8JO0gRReaWV1BAX1YI4TdQn8iYk
	 WmBTDn+rs1LsVYlvcSDPzK0yElyQXbYNsgb0Zwr2bEFct8bMZ9SEfbHRefzZZNlVOn
	 F/lcgINVoVu1/dglkVwZecfEp+S5dCgAzJHKGtK0JdgEuq44uFgCNJpd73NwX+U9tO
	 Beolqwt8sSKwVH5LDwoye823Hovnen9zZ/hWTVW+Kz2vYxYx4ASjhg4NV2Du/dYPhg
	 W59FJPpGfJx9IyeSLGqWgU4zb3WIdlmVLRax3JR4JwwAMB4X/Mw4PW++PBplFpFMdP
	 U7gbatabb9pFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958CDC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035659358.513.15667467869112150468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320ef9b329189e9cb1dde26e9e07f377c6800c12f60337fa704425e1588af438
Date: Thu, 19 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750356593
