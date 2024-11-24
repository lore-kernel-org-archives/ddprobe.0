Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20AE1BF37
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732420554; cv=none; b=njwWUiuz+UCWKIjxg4MIcsqu/jm2AjwSNFhPcJhZVt6aYdoMblxtbda+vqCu0dQ2YTVZIj4wg00XQ0oLNghAIsSGbUqlfeBJaiAFtvfdLgIP0mGeQ23Dg1xiCszleRz3tCOH211ELV9ibn6gHV7LSt0q2qct+DvHBH2R+bcOMks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732420554; c=relaxed/simple;
	bh=RYziyGY+bU9ycHZOlb4tV7fotSm+ShK1wpWEtM1/hKg=;
	h=To:Subject:From:Message-Id:Date; b=AwswOf6U+sC+ckXpUufJDPER/Eo+QZ6WvynoNLhsNLKpzjkYycw6zkKQdtJmmCOTu/n+UTS24CaD74bix+M6WtzOoR1c0EA457s6D2SWWgHCnCY5WrFGehLdoowqRxWZDyIyHN4xNAXyHFFLbWqvGdfYISXcughfAdvYwMA43Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=od6lXSK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="od6lXSK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0896C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732420553;
	bh=RYziyGY+bU9ycHZOlb4tV7fotSm+ShK1wpWEtM1/hKg=;
	h=To:Subject:From:Date:From;
	b=od6lXSK3aB42yxIO66ualcelujpky06y6HvRZAd3b0W/MbejeLl0Q/77W4+cD//DD
	 54ugwahixbQ+jkWAxq3bLLntddAzJ3WeIff2T44NxI80U4T3AyH4fyCvG8v9JWLDJw
	 IZrnQJwWENf1ff0kYPGmfkCtvk9ivJ1ruV4OpKkeXJBEXGcS81zOBIotQVIGzfCop+
	 t7jjWIvi1CtON9xJ6grvfOC1qLkWYgby4NypRFRducX+KL4JuNn0ZSIKGEGNV/I85e
	 7NS/3h2P3TkyuU1WcmVoqY0FqkWiTzP1BLnITt5eo0TYYrnch9WTvD//GXaXI4lvpF
	 GcBvbJKjg9lfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEC5E668A1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173242055360.7677.17025931533735094959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a6d1b2deb301a85e2032faffb6798a17c8a45d3258229c0dba7e0198a5157a
Date: Sun, 24 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732420553
