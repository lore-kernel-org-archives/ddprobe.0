Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F5B19F11B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780714474; cv=none; b=T4ubWQ32J92GXyw+Ra8kzgzKHoJq+gzk0ulA4CLC8+91V9kBl3XDOZV5S7cA1UCCmDmRVKYWS0AmLxoPSiBqEm4IlTtMcjnAJzvUNhr+UZ+Bc/GKTIzp+25mdi0mAl5cfI50Vq5cYSWKMZELD+2RjjERdFhFQ1PLSH0dzxR+xd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780714474; c=relaxed/simple;
	bh=CMqlfwZaIBA3Vy3ADRO/+Ve3Vv2jSII7Bl5W7d+NxM4=;
	h=To:Subject:From:Message-Id:Date; b=YUc8BBAkkPGV3//sbPDx4poJD5THIUBlr7IfNimj9EeUUTxMlooAtHBC6p9hkYVf1tgb9ASOhrGMbpuT7rMIcMjc7jfW5H6+afbHbuhlqdG3jKhmw6noS/qnoMNxds8ofWLDGJCR8R4aifpQpSXttQQb6KmOIinpvpj8wYuV+Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEqR3LPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEqR3LPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBACFC2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780714473;
	bh=CMqlfwZaIBA3Vy3ADRO/+Ve3Vv2jSII7Bl5W7d+NxM4=;
	h=To:Subject:From:Date:From;
	b=cEqR3LPHNNabJboKvAvb8xxtZ2op80sNkZnXem6pWYRUh2yE1z90PJsNqgaaW2fkT
	 IK8RPZapgUdfKLH9ZOLUOpnCBNsid7UWn+cQnm8IAFrdalB/mCOnEu04RP9stjGh2o
	 ndwAcDLdUsY2enq4rBe6VaufooSbTFS7nfyN7h1L7CcgN5RMDbgnHfHIe0Ue+QXsFm
	 f9aNoocZYlGw33xP77RFh9MhBvRjWETNLivLZy7L0VWzPx0PIOvhl/BXe0F+RVFvrl
	 YBNS9QwnBng/2lYUFQUl3Cba1kJemNtSmniMTj+vyQdgzYOrY2n2pq3qyGG3AqnTIj
	 7xi3CmriUsKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE79CD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071447369.13027.1392598680107859031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d76e3cec52214d295571523d6cb69c0df0c9f0f1ffb212cd0c62cfac15dc96
Date: Sat, 06 Jun 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780714473
