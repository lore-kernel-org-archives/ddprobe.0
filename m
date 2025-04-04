Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3261B043E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743778194; cv=none; b=Wbqras9zCwmkL3FpititPKh3N+7I/B/Dh3v5RKTIozP/wWK2dhyTrQhyAI/EJ/zfTDlVTjnTj1uBb87BjMRwzkcHmkhI1zDigZljTsCEErCM7xJm8jG1rnD4l2Jln+FncyCilkeXtXqk4NW0sf1ElJDYmOi+JXaaiZA73uYrKDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743778194; c=relaxed/simple;
	bh=M+ZY3SZl1DFgflpkMyJhpQEp8Rb4uPS2rIj0FvDmC/U=;
	h=To:Subject:From:Message-Id:Date; b=HWETbOmk84Wsd2pCC/Ire9zoC/fPSAAqPvb15/b3ryjTKycS5PWZk1Tca4RG44oVNeVbvwnN1D/TlmohM1bPZ4/H7WXLtjsIpWCobzY8jfMacejpLWoiDzShWFqAFBAYQJTadyAcb6f1ibeBoqhk/Jgfg2RzS25Op2Jp43XDw8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMkItd83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMkItd83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C23C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743778193;
	bh=M+ZY3SZl1DFgflpkMyJhpQEp8Rb4uPS2rIj0FvDmC/U=;
	h=To:Subject:From:Date:From;
	b=tMkItd83j4MkN11Vl8MNjtPp68kc+21hngydCwyx80brbb8c1yE0bLVtVBPFSRRdE
	 uw91u/GV9GDojAOLhhkgq4ADrph5zJihQ3YVRw9uo6WUrrqGvICkq/kJUmUjm/RXLG
	 IixU4j5oDcUy+a90h7bGJ7S5lo5Dn9OpxtjQtGdaO92Ol0ZWM4fejPreG7kkPBQxSM
	 jewPh9wIzmZp5ua7wcn5XhGZKRW0OhhbJDhfELxUkruX3NWKDBgOL97aiLJltDE5Ge
	 apLROQQKeOuZU7wxVh2+oXwaPnoYOrZFfoKWG/vA1kvEM7fHaVndSOhAPVeTC1TEcG
	 vY2foKGdU1KTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EB6C36014
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377819361.1384.18400738528781359928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a46c50b63d70ee6c7911b6cfd0b31e857690dde81550155934322519248d0d4
Date: Fri, 04 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743778193
