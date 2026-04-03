Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EE738CFEF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775216134; cv=none; b=dvouf0v7JZ8rjnN8ccf8SzHVzeJcjcF1hBzq3dT1AEUePLKSm9RdNBs5jTIxvQMTtUiab46QX6q8ehxRBVjsQf7c1CdwBOPzprRNNNyPgiS5d2vI+PfhRTASnc1KpPcRV1WzxmPO1JevoiLgOdJOYNOhqh9abowaHUJsU2JuDTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775216134; c=relaxed/simple;
	bh=SFQZlXpMapfhN/wNUw0dAtQ/xoOnN/gtHz9Q7/ZLFcw=;
	h=To:Subject:From:Message-Id:Date; b=ArQdKB/xLvRyIJFAoB1irvEbkHuAbEs+WstANwtE04ZN7EGX1K7PXVQHRoCOpOL1fVlxuUYx5G4yMyHSmSoFIBeg+pjC/VLgDX0RJSq6wCKPhAM5orXAxSHOrK8EjpRf0t9gwXAsnu2e4eGCr8Y7mykFAPKxIeemTM90fJ5U6no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWMDZHiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWMDZHiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4C1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775216133;
	bh=SFQZlXpMapfhN/wNUw0dAtQ/xoOnN/gtHz9Q7/ZLFcw=;
	h=To:Subject:From:Date:From;
	b=pWMDZHiCa6JnI31PKLaja4EFResZauvQfWlFRIywPAuI8RBCFPVzZ2d+8Px9jm2nK
	 X5kpnwxAMoQ0hW49ZEvYBaoor4XEilRCos7GiKGZRYadWqprJ9kcJPRDgzgajaSK54
	 7l8/rgOgLEoHw2/sLUDW0t65yS4CaqTqO22egsxQz7r0q6UDro5fE+pi0W5dJyB/2j
	 1QjkFv1hUnkCmKUkLbBhMXi/eEhs+/xbQdJErrAl4ZJlAQ0ovejFab7wGwCFvjLWum
	 PUi8M7FZ0dfrGI/jP/UNJYFMO+gqfTWCIms1hdm1l7hg/IRt0CDP0pAblgbFIpxCly
	 FradmoUvYV2vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15FAE7E379
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521613369.5551.13931904324830047538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c920efe27b840871130c2c9557be305f6d700433cade19e0945d775cd39dcefa
Date: Fri, 03 Apr 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775216133
