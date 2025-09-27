Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190331632C8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758994194; cv=none; b=WHbnqNpzKUGqSSMlxg0pRiO0yodaPlH/GXWCAiWjJyX0Y7JPlQV2I92iSExYWM0/S27OLtDu37aa242xkr1pI1BPGwL5V+TONECO2ID/ilZVR6fbg72WBrBJDu5pI0VM+o9lhootEQC8EcHzj/IjXtCuAYgqqspCp+JPxuo4S7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758994194; c=relaxed/simple;
	bh=Z4Oqp2wGHGVbjgzgMuAaSjGUM4TiRXhXeqg8lM57vOg=;
	h=To:Subject:From:Message-Id:Date; b=dlLjUWRrjcX/5X9hB+r7Fw2Gqg6U0cCXBQR8mnPqm3ulNkgKViRwcsysqBL6DPHldLT/un/nDJyxbq+sprRzeoIpuFM09q82fIXo/K/d5Uc5ioJQWzvLWSNsjCE7RN1sHeVpDl52XlxiJljsPmTJStGiL+uepX0O91Fx115Tth8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3vaT7eM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3vaT7eM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74CBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758994193;
	bh=Z4Oqp2wGHGVbjgzgMuAaSjGUM4TiRXhXeqg8lM57vOg=;
	h=To:Subject:From:Date:From;
	b=s3vaT7eMTezYZWXMFFOLCsyTrzaJzJ0GFJ9vWfUeXFNvwzkoFE0dvuVRIQVkPCTAG
	 Ehn5eOU4w57lzk2ZSRqerSeW+gHG7U+vbPR4we1vEpz7P0YzPd6W5GukHJU4WIXyhw
	 36XJOVA3rauRSzx76b+OhCmV1yTvkfevU+iXV8pMmtW+Fsa6rdiKw9hLyZe2+VJJVO
	 PZJCUmx11+4o3TOOmZrHGIR9yEhgWGGrhjVRE3FCAxGMgIgFabJbYBe9RGfY6mfuz3
	 6p2NqyU7l3C4Ws7DwMT5dPBS1i0vT1LdgQba9X3H6vozFbgfzB4VhwzQHLz0TURMkk
	 /pCZQYXvv9mbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B7CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899419357.5746.6292005014391806483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227df27b45df61c92a87e346adaad468b7ee3b50c1cc72815fce08e83abbf56c
Date: Sat, 27 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758994193
