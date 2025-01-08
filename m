Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3953F225D7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736316354; cv=none; b=ufq5sgSUSdskVkjx5VsIstZlcz7xgKW+aA8Max51v95+mL5DMpJpsBo0rVsjsL0jkIAnXQpREesgcJCfiG1KYZPiWmz5Kzp1kq0n7s8b6z4CABev6N3fbD11fpv5hcQzWJ2H10caOgtOiWnLHSFnibGW8MMOIwWlOMB4VucyNGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736316354; c=relaxed/simple;
	bh=MSJAx3kMw8tX+CDfDgOIi3JL3DHSG1wz8/tU5UCQuuU=;
	h=To:Subject:From:Message-Id:Date; b=SSg8an++TRMoWow81kehtnw61oSi87rJkjmljlLdhm8fHNFiyALpjd0Ux05dzTPe1qufOaMTlpida5Nfhe+pcwoNPM0F5J4yIPdWjrNOGoPN5ke5gsTuZXW31fIe+EsF+BiivA4EY7BnQpWkqyZtDsbZeSuuRGhfG/VD7sMw2ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPmZ3lOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPmZ3lOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D02C4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736316353;
	bh=MSJAx3kMw8tX+CDfDgOIi3JL3DHSG1wz8/tU5UCQuuU=;
	h=To:Subject:From:Date:From;
	b=JPmZ3lOCZMBqg2VT1alpIIArdnfEDbY5ry/jOSH3KYcux4oR/KrU++oYzUtg8Okmc
	 gPV539Xp7VpM/DbjvzGgB82rUcfKCJH6u4zI5GlfZHV6gr8j/h2GeiMbqqOPS/77jk
	 mLgeN/5ap7ulWieQRszlybuO7kT+09UtH0ewEh+l070+IAayt7vFc/TPyQVKtzYPuM
	 SPTgniCmXx0u4u6LZC4OByxmPvvFnhJsePlzKCdrMmAIlaJZhz+r55CpqqWRWo0MAA
	 lnZ7YLqPxdmUlffZLkxpLyUFpZ/9SoFpPtWn3cauwZ8nTuy7IvdRPZhm1jnmO+dd/W
	 7r5nnAqviXcMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E7E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631635360.21181.309590258524880746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09de17d6511c76bc951aaef5f5e1610d277fab336923cf819d719023d5cbf88
Date: Wed, 08 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736316353
