Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D2163CF
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745434794; cv=none; b=j54qB92nNrV6wPXpcIV5CAuTZ/PhCFE8fif8+rtNru+JiTxI2WjFnRCgeyCMmrCFzgSZ9s/FcG5g/8noD/VarIfJDJ3eiQlkPCVDLtRoDCCW/dqxdU9+vNIjMCEb5GLKlNmmgnJ60jbfK+nIKQuoJ/pvsTGyEg2hXJAfrqTJORk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745434794; c=relaxed/simple;
	bh=fxjKas+ThtwjI3jyldDE3GbcBnPLUbo7iMvSkOqMA3o=;
	h=To:Subject:From:Message-Id:Date; b=cuZZapNnhLE9FZirmq5jMTbrSKOaJmmUaQbAI/fKne1h1XufSHxm1cVVIXtcYwVpFWD3LqIg+x5yFB3iJ8jIuxAqSXhpDRFyp1K/B8lPUCyk6KWEhJmt3aOm/HTWv/UdLRPpFaz6ZQh3vyxNUSbozknRyYu1UzGOlEDAGcI6Xzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4f+fEd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4f+fEd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1C3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745434793;
	bh=fxjKas+ThtwjI3jyldDE3GbcBnPLUbo7iMvSkOqMA3o=;
	h=To:Subject:From:Date:From;
	b=G4f+fEd1QUhZn57EGu7y1n2YYYdBUJMsQQqQ33EMnjiA2CoTwV8BkaCPkVhLKjAS+
	 rrAclPNMeK5tHugQqoUPPzWGuOMBa0+NU+uc2qn4L/ZsGuyeVFf0f1gSmSGn3JfPh/
	 gdgk4zvp4erpHfeMAdOsWjqgStU00ne9rb1anL0vKy8zOJ9Ga+GwtOCGV52RDqZAit
	 sVrGDivYpBdv2cnZrWN92i3FMINCxnI+IBgDb9glPHqi2ADkPKzhwPgt8ECW3sFkfy
	 M64dzVz/i41kmeYVfsEH+L2ob7horE5lKnWZvlQ+/7lDij70tFwurvGVEaFPGGzuoM
	 OmrB557yjtzag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37EC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543479357.4512.10067569032087587053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4dc4cb3b069eb9563628e73dfe1bcbc9387520360df487d63d3a9689ab89aab
Date: Wed, 23 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745434793
