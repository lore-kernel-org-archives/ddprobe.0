Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517DD272801
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785636034; cv=none; b=RTy3NvBtucW6mNfn02BvZFB1lnTUqJM+/oonNG/VvINAMWo+Jo0ynbDdQ3tsXolad4XjOdKAISLQQKGXg7AkMKOked0PaeVXwV7D9sVTbggh3mdgKkDIxkgo8FAmO7rlhHRj0gLU8fhnJoJIOzblYi8pgqlMnr1a1pGjdqzGLUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785636034; c=relaxed/simple;
	bh=CyoLXBrYfOfAthn4lr0g4KCn7nVC7JDwUjEcmxl9oCQ=;
	h=To:Subject:From:Message-Id:Date; b=GNKv0Xz9atjyXpeL0/9WmB8Z9xo3L3dSDy//nRKaigUcYY4eK5VB2DG1YhcCLOaZGiLYgoZ0q/+5ESp3D2s9FHlhs6mSfVN5CGcxrEEFFiu6LVTTZStcWkepcVfVqe2unKzgsfu2hvsF8cp+3q6uUCqUu9MhZIUTVTtKb1vmTkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFA57OCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFA57OCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC581C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785636033;
	bh=CyoLXBrYfOfAthn4lr0g4KCn7nVC7JDwUjEcmxl9oCQ=;
	h=To:Subject:From:Date:From;
	b=jFA57OCEM+7GZMalzSYZ1lxSsnXA+fkZ8kKgpsZWcPPqu+QKkjRkYX7xJfkG7nmUA
	 rUlXqAL1Vex3Rm8drn0ugcrm1e4eANiduKFDr60FPVDRhYOtMKSoa0Pox/HvRBbd4y
	 qU0sC9g6Nl1CCEz+jWA9HoMy81mCuhhOq/SzxL/rnawv3AkDcGY8yUYQqILkfBRq3S
	 JNzQPmYvAiw0EyTo4hihjRQzpJKkmK4Qt/CkEN6uoRekrmNKJN9F5RATueLRvuDepF
	 GLye0xCTIbN1FnWUIhIEQKdElrf53se9XbFUZ8Xx9MWT3AolhEsaD2Xcg7UDwAwEie
	 +pLIq5oProW0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E06C5516F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563603368.1990.15334678681495883035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2be8ac2005b1fd708ee5712b12a6bb428542cdd61c1b14c830b21228223790
Date: Sun, 02 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785636033
