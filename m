Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7742E414
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785898834; cv=none; b=RNP3f5l4vFLt62DP22nbVSJF2DSrSjG/FaZosQTE+pjV0Z7RvQxqmEmH670jzhKsKjLOGgYGyv7mMG0gwFNw60Ke1tU5trsN1Uk/0y5brMpSGCkN/irkYrZEd+oYY3l9dqfaVxBpLbz/m7VikiOcYtVxKR1wAvXaLdswLrt6vjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785898834; c=relaxed/simple;
	bh=pmjSEQ0jTiMHluKT9adK9+el+IGMNCzM9TdY6N4eCjk=;
	h=To:Subject:From:Message-Id:Date; b=Awzs3OmPYziLPfZXIjTxys6QAuQSljG/DRN0T4Q1HOpQxe6PFoJcA+vQLcfAsMgmgfJwfElMTHyRyLcXeiprpSZKB3to5MPDaFFixAB44WEFbC8sDlY7xipM+gHRIPrExZNnDDb7s2wxtJeYzzHI/slm3SzaqTlgxLj1g9jdxYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vvlas1oS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vvlas1oS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD90C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785898833;
	bh=pmjSEQ0jTiMHluKT9adK9+el+IGMNCzM9TdY6N4eCjk=;
	h=To:Subject:From:Date:From;
	b=Vvlas1oSZR9jkTPEWtVJgI5+GOODryVHGUmqvkt4H43ffFScwj+/KUu+OYBf3843S
	 XZgA6nKkx/odyp4oEpsweVPak4JHDKbeBnQvsN1PUgWmF7Z0mvZoLUWIY0NxzCP2d5
	 iK6s8/DKJEb5wtIEIH8SW+JL5UMoc2AAPxxB/TzyO37AiqQ8tbonebkrTqFjqLsipz
	 mLR2FjRq18/zwBqQdF+JLhyF2C3PZv5L1bA7I3xSezKN8eEI6Vn5jkwj8Dgl0bm2Wu
	 VclUzeLrmBiib/FRwfLjyOuyqj5ub3DQQB1TLjWUX59vmPBp8U6qBxx/Kf510A/nv9
	 h3eFm28RWV2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CB4C2A09B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589883368.29710.6418797389155384037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0562632bc034c2e4b4e607befdbbb8cab14d6cda026aa4cba7c7a73b7c2eefdc
Date: Wed, 05 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785898833
