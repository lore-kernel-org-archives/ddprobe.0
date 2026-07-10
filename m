Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD7E38E8CC
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783717114; cv=none; b=RD6V+sVsXbtt52PQFIxQDPKFoDtjV490Tc5Lhe/1F/zFyC/GCN9Ikg1uQgIoT7FFiJwYjS/6jQk6ID2QjNiskMs03eQgWR8v5oIgj9LjdkRXigzRSGewIzF29BwCFT9GmL6uAr74sUYVoE57SzFH57251ycukue0qrwcrVC/Q5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783717114; c=relaxed/simple;
	bh=jojiQRW9MHxDfgDYI/liLNyxjhRXJyciHwtxnzXroHA=;
	h=To:Subject:From:Message-Id:Date; b=ViiCFhNkXQo8v8Sj7kLZn8c7HSCZjJl8EBiz9qkJuBbMY66r7QrNkT27wo4Txpr08Jb0ibs1wQzi/1tncJ6HfdJQNnYiRqBVeqgmALhOVTWokqBmmeZdzFFMS6ccfzInFMIu2I+jiIaIXJd6Mtx8zjRjq1sE7lHt52/1zGSUaYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqpDrvyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqpDrvyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE05C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783717113;
	bh=jojiQRW9MHxDfgDYI/liLNyxjhRXJyciHwtxnzXroHA=;
	h=To:Subject:From:Date:From;
	b=hqpDrvyi7E9NEEMVLqCJjHz8HdRSt6F5fCOZkvzzIN19lzLKFNIb5sosKrzYbjOiN
	 F/kIUzUL1ALUX3DOedQoTfFcrTVhuYeIcTM8XE15cOPXj+u02ilsCwEtowA4+q6iCG
	 V2CzyTKAto1G5ER6Vdgjvzd0VmMEOPcCRlVxW9N9IUiWgxdiRowDFKAvhzuAGwvoDD
	 TSqFiq71o1805X32JTBQmpgUtEAiHGVHx++hg7ABH6ih+iQ17Sr4Tb3Zf4gs+ryTZY
	 4czP1GT1Qfd6gYCVDkTmfboid2smzCrwOpGOhkxEpWWN10uS+7MEre5V0H3dORCiZe
	 WzUu3pvNj2gmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9982C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371711368.31410.2940411362266146319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a800d9d5eb89861ccf706291a33bfc7d3a5b771ca32c6df093aed172ff98504
Date: Fri, 10 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783717113
