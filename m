Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333B23B19D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785262234; cv=none; b=QahYdFlFm964Ye264foJLx9WkIqMz85GRPlSrP0aM2zvo8XXKQyLrO0imR7juYMy/XLfCUxVC0gBY6EY/RzF+/Unw+YnR+1CfAcY8OlyueatbowtcqcMep0reEaai5pw7HcKrgqZN6TQ0po/EC7dp41FCWiG/8bgYcPtxeJj/ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785262234; c=relaxed/simple;
	bh=lrVdkbZdtVnGF9o2AaB9jskSzSjBTenNK/3DaHAFGjk=;
	h=To:Subject:From:Message-Id:Date; b=a6SEHtPZ6vUKSEUAOEtdo3MnpzfdzH/LS2C4+p03Cvtdo4/zjlSI58agN43M3B/FB68wFCFcYRrhcEPJADfsEPUhiltbhSYWmZiP22HZwYLmf3ligQZ+xu0dy1n9tjckw1DUNjAObGlaLDXiQYdnCOD0x3EHyW2Ie6vNQsDrmts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0+I9u44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0+I9u44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4048C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785262233;
	bh=lrVdkbZdtVnGF9o2AaB9jskSzSjBTenNK/3DaHAFGjk=;
	h=To:Subject:From:Date:From;
	b=Z0+I9u44W/s/FO1blovoJOEkMmKRHBzo5h89tKrYiZttMT7gL6DPgFuXZ3YSHPj9L
	 hey2sfSU2EZmhK4UjTw/E4cy8ON7veEHO5adftChxtueKUn4cHzaLl0RFtPr7ATSY0
	 rkpMiw8Ee/IJ+sd82QuMThgZDrBybwqLr12a80RB+/xMIK2QMyUc8b775egVUSFXEF
	 5zR1EpmHnWAoJg+WEJNKuhvwu9VgEACE4X+SpuTsRTGXQa6Hz+e7GE/944uEGnsNNq
	 kF+FZWzDtpBtQU130UAwrt0kSRvOiXY6ITKcOIXrvI+huHeWrpe3OUlI5db0E0XQ5N
	 ysYi9gXSVQrmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B193EC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526223371.21710.11473510331832779793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee4c71984317e8d12c9961fbab3b4cc625db9cdbe14d36c4afbc35040b41ce3
Date: Tue, 28 Jul 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785262233
