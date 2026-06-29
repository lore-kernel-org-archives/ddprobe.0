Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B273FBEC9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782725914; cv=none; b=YOtaKStvg+jGH5HhhDRPpiQOyiokArH8flNloysK/0eqQlw+sTmbmrA4u7pBqH22Z4cZmGQnR8iE3+1emAOmnF/R0bSMn2ecv3Jx98jEv+GZC9ujTIa0Dbt+tPQJuoPoiiKAUN2sze57k9KtzwlaB0fHN8hC8WZHLstwnmjsi5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782725914; c=relaxed/simple;
	bh=nTNYilBsCjozSkosoVDwoUiO0+KTgjbjS+7t/00BSus=;
	h=To:Subject:From:Message-Id:Date; b=pQ4AhgL8AAQv1UGJEmsjoxIC0nKvmqUZJodY7pbEn6xFomlF6KniUuE7JM8rrfUnaKl7ADZBXLdlraaJFAo9/KHRxJuxKM/Ac0ZwuaxNi3kEGIhnQO89a/AZtk64N77cp0YH5UlDXCy1F/QzHxCzqDVCU7D1XkzVzFrRTqQJYpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgJ4Vixr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgJ4Vixr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E05C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782725913;
	bh=nTNYilBsCjozSkosoVDwoUiO0+KTgjbjS+7t/00BSus=;
	h=To:Subject:From:Date:From;
	b=TgJ4VixrqCyIGWCcMWQABuVzdNjhjnMN9h4346CaY+rSSJi6Vg6EAofvO2X6TSJ4R
	 pOTGM2QsASbkliCbnnz3mj6L4OWY0nHX8S2PWrRxzDF9Qc4hr3xqgDteaAJ+/k0BWZ
	 o+jILaUkCQy9p8GXZ72O3KK2Ftq1zAi2aS/ivcLyysqYfMeCX8aD4T05y1+P41u1EN
	 T1Mt1xkjW1wyChPjGXedosrIRFuYjRQjdbIj1qdtGFgAz17brt+fkwph19W+zYAsXI
	 OZo/eTqlXboMV1ujtjicJ6NvT7r+aapb7IkaZB+N0IdH0Scjlx0IOBxatccEpZvOvL
	 UK9j2a9mAyCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F89C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272591373.13712.13237444080297927894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d051e65d300a42b889bd96fd99e3176e6960076af6e0563755f31974717c65
Date: Mon, 29 Jun 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782725913
