Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4443B5318
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774879494; cv=none; b=fVCBMFolRoJLzCd7lBOMm/yDr4OwXcbeOEb/WXN7smZIDEh78gDSA4JlaVnSW7wTQX8thJ6wQ454QWF1rtRUCPQ4X4YB4ZyihkvDmQrINcbEB6U1pt6oZmCjbgPyjDVJCYiwQtG16shbsCariAwcAJ/XXZ1n/QMDMK3GqMI62k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774879494; c=relaxed/simple;
	bh=OqpUJkCh7lAx/uB0DLVL48sn7rs6KRR1SH9QPLIDSMs=;
	h=To:Subject:From:Message-Id:Date; b=HZ5LBrZe64N3x9j9V2/gMvNaFmfmE29pTdGySg2ldBza8C55+E/BeZnXj+QIDhLSfahTuRjF/bbwXuxCiF7upKRvXOnLm2BrX/Lqw4llYDTtDxVhQV+jgG8UB1qLSW9UR6riWlNDiZV7u0EpedkvyBwXzIWPtGLL4NbE5uMh+zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAedJvkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAedJvkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5609C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774879493;
	bh=OqpUJkCh7lAx/uB0DLVL48sn7rs6KRR1SH9QPLIDSMs=;
	h=To:Subject:From:Date:From;
	b=aAedJvkLIJClIGfV92PNm+izERve6M+H1RGSVK2Sms0E/N7bPB3fI4Sy2w7p4JVZy
	 ++6Z14nXreTUcBYZVF81Hpg8+CGtcsEgOw8WRlkbD3maIQa9qKZwqCOz8kFGzuFr28
	 TCSEMgeBzAqs8r/FNG++jDmLCdpaLiQ3ytYHzaPk037T8W1gimFjiRUSTxV7V/n/rO
	 ibOurbePSeermYhnI6+o0O9i6EeilrdLCNfi2wR47qBLmfYYHyuc0PWVmibC5MI5Ij
	 ZRvtWYAWnjqO0do7bYP+NFoautANeuwkybFvnKsQGZ4gwGYwQ1TO8oCDGsDusQ6vjT
	 SSbFxUf1tOGUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92700FF495E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487949358.19215.17784315999467945676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe367f077de6c3c2da3ecc683dc3892b36b08527654fb751cc321fa59df5637c
Date: Mon, 30 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774879493
