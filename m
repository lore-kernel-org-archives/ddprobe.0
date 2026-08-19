Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2F2A95E
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787098234; cv=none; b=ZW8OlldodIve7CxzsgijyDkmNA8Bflis8Re+zl9pvuGyjKDsdJkW/s+kg+LCYXKooTZqvDXdxWGrwzTPtxh6u94YG7iZccspGvaQ/U8eAKsNs25Osw57wLCh77X33vyZ19I3rol9OCM498Wa39XtBwqtK58MPWV49nY75bE57mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787098234; c=relaxed/simple;
	bh=h0iBSvXtyjSqr7K++Jug3m+Xf3sp93kgY4r+8R09CdE=;
	h=To:Subject:From:Message-Id:Date; b=nTVlhiGvhIin1Y9pswTbebP7LrU4Gh0ItdpVaMGke2Zrv+tx8GO9KsQNPmkxtUvm4SjaiRZDYabzd+oPLgh+IWLmo+IOCexNRXRsGf2bcQWbfbDqd29FZONwDszxDB5DBH9mF6Qpm9E7i8ricNfAUA/YgfSHo/xc17CWBWzxIGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fB06gExp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fB06gExp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4836C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787098233;
	bh=h0iBSvXtyjSqr7K++Jug3m+Xf3sp93kgY4r+8R09CdE=;
	h=To:Subject:From:Date:From;
	b=fB06gExpE/jIFAMbui9dXCliXS2p+u/VZ+ppgnzWC1MDzLntQdg1UibWwg8okwoHv
	 PiBZF+YHbQjY3ZyDuodBDTKq72SLFwagFMa8ozxdB8MiwNbf3eIwZrbTJ40iAcFc/K
	 2o4G1PPibGu9goM7/sx1kq3cld9vUpDjZnGTBnLY2lJIPoPOOzDtcnbT1/K1+ngnT2
	 ACCjTrmR30fBy6xqgELUTeFBhTyW+wutc9ewQ1+CB+UEg7Yy5kro9u9NH/WprL2jwg
	 MhM9i8oNda31DAkmsEz+qCMSnz8wqdYb38zoRbrljEEYXTJRhccFTZe+uSWtbpQbsP
	 zQCPcrpij6qng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD405C5DF7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709823368.29354.3032832404132624074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1f754662f3e1310c6f8c7c72c3101b4ce150a0680027160236bf67b0a1cd19
Date: Wed, 19 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787098233
