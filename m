Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089562E1F14
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755791994; cv=none; b=Xnh+2OMw3V9Gn7LzXqPcUjSAKUhJjy2wf4MlM79YJt/hJ/EM7m+jmvw2/8/yZRGb0kr4f1T/ViUSE+MVozgCuHR1gFGWFnR05aEA0QNFCOI92/6fbRhtigk4HXGDj53/YRaUUkv277MD6VdH/3saPOUuml3GtIFE6eMXLmVHMw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755791994; c=relaxed/simple;
	bh=OiVKd0vVg8Awz/NRDJr4tigQ1Ea40rhee8TaSARfOYQ=;
	h=To:Subject:From:Message-Id:Date; b=jK9ao8KH13glbrSw0ArdApa4IUXNE4cyHcCJqD9+Q5Xp4rBgafd25fW3Zg63GVAhB0AuFlp9zb9tyfypG1W0q9vIMrmkb2+Hmulru2W4bp1cz2g1V/GSumnAxnefX3NQo+2mooC6g2S9yjuqUgYovYDqxtRZ0/BA+CzW6EoJK+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDiuStXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDiuStXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED01C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755791993;
	bh=OiVKd0vVg8Awz/NRDJr4tigQ1Ea40rhee8TaSARfOYQ=;
	h=To:Subject:From:Date:From;
	b=qDiuStXa3pBUF8FK/wZjOhQlkrfoQVgdVnIFlngR25E+qCSr5gQX0oh0VIDcZpG57
	 zO1XC9IO6oETkGcR6+bLiD/BZ5DR/c9VVi/Uw7SIcpaf3aaz4CVphEAHOVdT+4/q2B
	 oPJk3jwitLSzZaAnoQx7oVoafCEZv4nFpFx8Y3jSpakwSCeomsLaDijC6henuteFbx
	 jIyqTzBuD7+1gbN24ue4twlur6OUZBzLzM/tA3YyFiOKbn/l2jCd+onUsFxSb6EarC
	 b7oOLLBU1hDg6HPpDKoZuwgka1bfX+T4hKgf/vW4tiw8TGYhasg0C/P9EtcVueJoEk
	 smqzoE4O4cZog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F2CA0EFC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579199357.25492.354282896001060536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b827fa9b4789e60aaf7b368843f78ffcdad9cbcfc0f5157ba97d9194425bca30
Date: Thu, 21 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755791993
