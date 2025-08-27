Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE0E2D94A6
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756330794; cv=none; b=khBW+ZqmFua7FkDsVLZrGVuHSWUo2nhnlxgEoWIXjySAGUlyGzb1DCNTmgWHpWyQSOTUC03vwZIX2S3I/LuWan7hO/N/Pr+8xx4M9XsWYDNY7ax4TVC/k0nSofgEzvelUiWLw5k20lAlkMxp6yLeJioo144wVNWkIc16XKcYtmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756330794; c=relaxed/simple;
	bh=cLuxQW0EG3HCgDSeSlbdBfqNinII/PmbH5mwqDljHLM=;
	h=To:Subject:From:Message-Id:Date; b=SnE8iWwsYzP8RbT5GBqBJ+OMch4VvlLlvYqK2ymUGk7zze+nuXo7I+z18QcZ2v1hfR6avan7wIKpMjNKmF7oVEVSC0I7dVv1edmI9OOhiqfY/9w69XRX7QVKwEZUKkcigqWnbfnR6oQennQZq2XO7qinBWzMUBMTYBohejapWYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRoxGvg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRoxGvg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F73C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756330793;
	bh=cLuxQW0EG3HCgDSeSlbdBfqNinII/PmbH5mwqDljHLM=;
	h=To:Subject:From:Date:From;
	b=JRoxGvg/7QBJ0dEkG45Yqx73gR53wk5dZVSqAoixRudUl6gRMt15lERImi+TLzoHl
	 snxkVf+xsPBfp8PoPGatTH7o3GtxsHWDXqBwGXWpK3uz+ogH8uDkY/9lFWfp+qLytx
	 V4q1Iguw7pv1w2u3mdwa/rAtKLKqBxlcXPLsl7qz8+IVc30RoNE85aZqCitkX8IlpT
	 448u9cd00VxO3WnfLZtlhYtTg+0cJrserL7HdOnbJW2G6zNQGn+fQoPafwAPjhWVre
	 Z/4XWowxUHzHohfTdJXe9oVrei/lwfenmOyKT/ndtNiTkZEa1QuoGISDh8vfKWgwfE
	 IIAItpesVskrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF79CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633079357.23690.94931328428484502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4f3a0c938be006bae6ed03fb672de8a2d6162c885eab97d6b5674a54dfcffa
Date: Wed, 27 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756330793
