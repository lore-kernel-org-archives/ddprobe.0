Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A6313C697
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714256543; cv=none; b=Yrprup0t20DMgzFzQMSSLi2QkWKadIYXGqkLtGkiUOAaAzHWZUCmsE6yM0eRxV+FKOstq3+Um9F976S/7fhHm86gak+En5PnzMjnmY2IV6/F9XLhKcyi6+wFD+FkodyekW6WYe66aLqpn5WtUvlVQ0GVGeceBjQ3AkaTIGCsptM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714256543; c=relaxed/simple;
	bh=GXXPdgDXMsMLFrns7RfYH5tHpahBDln+A6zkuccwoAw=;
	h=To:Subject:From:Message-Id:Date; b=tKGrnRa4rqBK68cyG7rq4P7x1zOmCdvRzJGU7E9mesdSEIHIdiiRDcmyA742WX+uuIt11Tz3djaTRzINiE8BB2ksJQrw/tAUhH9567tijar2DyBXRRbVp7KGbG/Ne46TSL0eG7SV7euE5Fkq9jZPiQU/A98IUov5T/wwrkmIoCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Knjn7cxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Knjn7cxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D104AC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714256542;
	bh=GXXPdgDXMsMLFrns7RfYH5tHpahBDln+A6zkuccwoAw=;
	h=To:Subject:From:Date:From;
	b=Knjn7cxWQwSYtWjBGxV2MuXCOf0DifTL8ja+VL0fKKF3MnnhB88y4aMQrseSRu9iC
	 hg14seyagVVZ2oqof7NfCJz/16eZNhg4w9qa01EgMsc1KuUoXtE7QeHGCRAfcd23TI
	 i4fvY5neO9O8KCb89FZTfRrCJUMr+4B+kizt9W0jBya1WNS7isGN0IMRIBQBsO3XXl
	 C3myWJu2ax3cA1VNuQXEvDiXPtJbGaebkJkmSyR6JcgxD3NiSU69OzI9PDlCqB25Gn
	 I75pExfMQvyguA2gfaRe2CkyA85lX07idUJTznuI27CUixyZ40YKt91MOoDskb/ea/
	 OvtEaV2QrcNwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBA9C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425654276.11846.12045837347630982799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5faa4bf995e08654cf71557b938df68e006d57eee73388af933aeacd408ad176
Date: Sat, 27 Apr 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714256542
