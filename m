Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0173AC0F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 17:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720113923; cv=none; b=pC1ULx5mcOZVrCZAY5qD2fTpmVWmZNAr6u/x6FwpHsospgAk8/rJAoNQBTaqdo5AfabhcugYUcxo8O644W+VS1m0MVCK7fNuUWKnlXO4o2yhiFRLI0pazrawIQ8Jdv29PzUPksN2RoJi5L4NXenEShydfzRctMvIRP4D22tns8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720113923; c=relaxed/simple;
	bh=o1cCwV0msSumRdBAF7HkSQFdflrfI231WitzM0heh04=;
	h=To:Subject:From:Message-Id:Date; b=NEASScK9MlrrGcDZJL5t7K9c0sT5ghlS43y81k2/CEdRe7bVjLZumnRImTmkoPmz+WH5ff8+4d6g36+IDv/xdT2u3mM91ofbj2T/sOzLsEEh7E/JZ6vXhdPQCWpGlPOju64+bB0FytVjux8h9k+Z+RFxrQ2Ykl/imODjIlTqWlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye1gE1u4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye1gE1u4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCEEC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 17:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720113922;
	bh=o1cCwV0msSumRdBAF7HkSQFdflrfI231WitzM0heh04=;
	h=To:Subject:From:Date:From;
	b=Ye1gE1u4SRfBlsk54j/lgUsUexi8ZAQUGGZO4Ww/2R+NZYZBaV3Tb+7d3DzqQ1+kX
	 1ktjKjG6cgat3ANB3NAuEOB6zApFiJ0Jv7hpzcW9+JsO60CCVeAxq+FhQu/NSCCKkw
	 MJjJcHDdu97ukC0Q2qc41bjDl5ytQ5xbLXOTeYPu3fzIvJGqojR5StLP+sNAlO4WL4
	 0d8Og6Hj+fVxak1yYgYnqVQVL8ci49hZxV3u+lLhk42hYAUVNbVgJ3SUEGhP46eXlE
	 NpJISFE37OHjR7L4hW0aoPm7hGk+kSTMo9ivjoGAut+5QcbforJN9XnplOsDbwspDB
	 c+EUdbKzYdCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD181C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 17:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011392276.19138.3364943747151105119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e48f687dbea4c67a6c183b7dc3d9eaffb44b1f20ccb4ee62bd7d5100de32299
Date: Thu, 04 Jul 2024 17:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720113922
