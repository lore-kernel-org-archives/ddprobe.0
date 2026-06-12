Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345D639C01D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781241994; cv=none; b=JQcaSOaODHDub3+D4rmFCNElxfmTP4XkAMuBgEy2LkMsTgPrs0IdfJkDeBU3CE321jYfQ1ib12xmBMivBveRx69cjmJVFXD5+zy+sEQvUS5QGwmqqhTzgDuXJvtNLz00ErRuO3y4i/+M57zjvkKk6frl8Ce/MPo4FIXk3ac+A4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781241994; c=relaxed/simple;
	bh=9hIHFRBZpZVg1mRMVQlbS0dgNbiFANEEfMYiSiBR7zM=;
	h=To:Subject:From:Message-Id:Date; b=HVC1oTBwozPO1ZG6PAzNd4ubo0zg5EHPk13V9DKXzjVMCTcXmGU9C3PQvUuN7ngKb3+Ma+wMem4Xu2AhJm+h/Hzss/97jAkJoCi6ZKugkG1OgsUi1u4jWEMkcbAG8FM/tgs6E1/gEV9NH1gp1P4N6i6PTaGXNu76wTxK08tQBwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1J3Gt/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1J3Gt/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90BEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781241993;
	bh=9hIHFRBZpZVg1mRMVQlbS0dgNbiFANEEfMYiSiBR7zM=;
	h=To:Subject:From:Date:From;
	b=D1J3Gt/xSZa9H6UiB6L4mdVWOHTLo55XrF5Sn9ykzSGuKTr3LVXX7i80YCZ1Q86Os
	 12H08w/ncgp1FPVNBXH6r3jiZsY2qZjp2Gll1pnKF70KpB4cVKBDpjkxQrjyx/cXmm
	 ZYUZvPJhuJOt5EA+Jip0vC+Moly64U4OpTU06+t7FrCfPgwWoQkSs3cCsT9I7DqDQZ
	 B6TpFUuZG5nv+oAPdnivlyWj5PelMPPSbmo0ZRS6qsjlIYpS+1AP1cUCy9sZgY2FUA
	 9V8kDOPDKNej46uGfbHF+DCoZHptml3Ah7sPgl68NCr1ud5GbwVOj0NegDgzJHYIrK
	 bW7d8hB1mY3/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9D4CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124199368.3740.10302140964233145069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1931845f9ab249d48814f65e33104846772743019a5b4cde486f90ed2c3d73d9
Date: Fri, 12 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781241993
