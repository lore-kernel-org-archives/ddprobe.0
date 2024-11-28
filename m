Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C10140E2E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732770354; cv=none; b=NqV0Id2VvTbhrmm498rcBbFsPQ3E3DsGWgwgHBRNvDb9WIDMlWKtJSzajnBte3bqHu89rmQid38Jilm5ne1E3SalqmvpoG8iEckCqdaytmMn6eyJ+z258CuYwwNauSpQH/kMKFBsJZtLN4nxjT4X5EqhJQmlyGGILIGHnqkpY9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732770354; c=relaxed/simple;
	bh=bU+nNQoc+f9PEELcXEC+Ru3Pv5WYKEcA+ynN3RfsFvI=;
	h=To:Subject:From:Message-Id:Date; b=cXDLe9GkIc02v2fOMEdVxJGpUnRTAbIswQVoWyb3Xjn1X/XMLdDR7IFk6/SIUmOS5WO5CJplO7vJLT1evYZPBjLuSDA7E6sezJ/lVjHdivGP1iDV6nnA82RnaT1Rgz4lnpxDZCL5B+yqVwGnsH8UQDO5d4ZEHIi1yNsTzIT7v1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBmBZW/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBmBZW/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8381C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732770353;
	bh=bU+nNQoc+f9PEELcXEC+Ru3Pv5WYKEcA+ynN3RfsFvI=;
	h=To:Subject:From:Date:From;
	b=CBmBZW/ZuDI7t89GAk/n46/6frC+6GTseBZAzh4ljbJqDyuOgLwCOzT3L6Xe1ZWm3
	 rYF4+98iSwgriRzhe/FB4JiP9fsHyFLcw7dFVWDgqHglUbhlQyA7Odm580qGbl5BMZ
	 +eBdx9+tTLH+hiQby8zIbnZ3mt8zP7MykKZLWlwyGMe3Cz8EL9bxM6lDB6uWu7rRvL
	 e+2QoDb5l2cDbopqm9FKEqRBw3c4LDG1T71qC7bqiCKsySJn7nV6I1kwNSc8KGvGG9
	 g+aBH+K21CmeNFiXwLONRZdQ3/E7VpwLyQ8RbcOm49IYZ3VBQSsDh2vGwGhc4qgmB/
	 LF6oWL4yeEHgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D9ED5E39F
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277035367.30498.13179768060706392407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b61c8326bd3b4774fcdbf666a3fa752c968b049e1a3ea62edfca59d174e8a7
Date: Thu, 28 Nov 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732770353
