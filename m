Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E430265298
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756381194; cv=none; b=pOWIh3ItKtfmtu7XgfV4BDayLGD6GkbbGapgsrIwGOtgmLRJZAmnoplip+fXolBs5FDQtG6DDaa6L7HHjjnCioMUaDFTUQLVlJalrDGtaS+fr/sa3YZjddkLvUxV8UkQWqkus9+xUt8QMnY9j/VQV2ux65rG0Ua9LDmBDzmmV5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756381194; c=relaxed/simple;
	bh=0XV9zyMp8FAvvKsSk68n9weJqRZEuTcspFisq3IMk5E=;
	h=To:Subject:From:Message-Id:Date; b=pr+jCEMx88cBbr/HkIF1LeV3i/rSxkTOQQnClvEj+whX+fHAsFxDUU2gVNXFaLHdUgtiT+unw987rsTStVOpXFq8qbqxnH4UxHvlqdx4E47MerbeLDfmv+3yscEwy6ww4r7K+lRixMwzVNok1Wmm23rijqq7jag3pVf8bM0jlaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwWHau4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwWHau4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A148CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756381193;
	bh=0XV9zyMp8FAvvKsSk68n9weJqRZEuTcspFisq3IMk5E=;
	h=To:Subject:From:Date:From;
	b=CwWHau4ELkEdzSQqtPiRBQ80ujzusp+RygseyNXtQm4ZSW2mb3Oqy7inqutuDokJO
	 61I0KMiowQtkYArYZW1E7suq1Kj4yqGuyAi+4TnzOR7ePoLopQ8A5IJYQdYOtDYFwO
	 TW7vGRet9vXN/PcPJ+O1cEJqm78VFa+6r4t1olylG4oVvENEcTJcdgVLGT9OqboZNj
	 D/bpU1Lit5xG+P8w+xJL5C692H2k3WAfLLw1VrZajU9Iq+5bWGPSU9NELq0FpoQZt4
	 KqbsP0WIBFx6O1QNb5CJ9Or1Yxr6vFQH5cS90iG7qwwDfAfG6sGQJhTIugdzkyAiZv
	 o56C5hJ1MNo0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A4CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638119357.22756.12445411842711920335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f607e277f0006f81165039c5fd035cc14c7a591b0d4537cb1c316306076050f
Date: Thu, 28 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756381193
