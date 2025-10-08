Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CBE24466D
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759908594; cv=none; b=j+Nz7x4OE4a2TSKDWTW8LCshtdPEcmKSroZ8RcPbTvaZzH15amM3IFPTWRo2Q17C20vYsSfSim4dUMMt2MuN2WNuo4jiZq9go86Rs2BmV93Pf+Omhf6tRLYWihM9cA+D8LUhikbKzSW4wJxjIhCNWFmYTkF477p9X0CVqjU/GjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759908594; c=relaxed/simple;
	bh=sVUJbYrY4uUe2QFaGbAmEHUCcEagrRMMbCxuY/sX408=;
	h=To:Subject:From:Message-Id:Date; b=nFU6grGUvRYdnINaoo3kzfwZdSL9oCCvsLh4j+pLkVeMwD2xGPcFfYHSw0uXmbitMgcwkwxnEJnmsuYvh67MeDxGcWUJRSuyzV89TyQcZPvUUyHJ0B7OwzsAT/I04HZDrBxl51mj7VWvZquSkxHMjtU2fiKCRsolIk0/PJBWk2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEPGNDtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEPGNDtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5199C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759908593;
	bh=sVUJbYrY4uUe2QFaGbAmEHUCcEagrRMMbCxuY/sX408=;
	h=To:Subject:From:Date:From;
	b=LEPGNDtqbSpvhYUrUqz+x3sW+LazG2eRqC7cJ3cOnA1AD0MG0Qrnx5ivSQHxhOCLX
	 b9/9aL8DQyuyOSSLsji14Y/Mu45Fx/rDvMZ3r2Ul6OU0u47jDeWwzHZkAohJ9PuDTa
	 S5mWwgNtV/9EffvEpgzarJ4UX8gdaiYZ33UJxQi88TCEKuv9G5Z2+vR5sCwWyHvhzz
	 6xI0lthA8FDGER6k7ynfobmsEiYoR+CGoArXstJMvnkEVS+NuwXNlmyK3NgESQaLHy
	 J+Up4BSTAjy4MG4emPOKplkW69F6xqfjBY1ZTKrmtDZvsJK9myEwk0IItyNNRICBz6
	 /BUU/4SA0rh9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990859357.30149.4529542526877645590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cebe02a20bbd0eb0bd86d128315e9f5e1084179ecbad3fe641dcd2e56643da1
Date: Wed, 08 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759908593
