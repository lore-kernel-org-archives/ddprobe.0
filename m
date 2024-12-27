Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395241FB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735314354; cv=none; b=WF4/Lb4tIFqeygfIC2qFmt9qe/49AX0465JBMU4xrjvYfZxwPfo/DOj6IEPwkGbKnco7CCrNfljcUygFZV6Yv26rOxDVD2MRw7w4XyND1pe80jEEkCiDy5d4qlT7Nxp/9RhnSgRXkEhH9X9ReKqCRSLuFieuLxUNGiOi20wvUYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735314354; c=relaxed/simple;
	bh=vWorYAQW4/gbE7iXNvhpkmm2KHwXDEPN2MO/SNkjvhY=;
	h=To:Subject:From:Message-Id:Date; b=YkFPFQC99kAkdFLsLYaDo2xMBBQnMzgF/rzJ2vsWa+kR686127vo7jU6V3mCC/PdCOet2ZkCpObAET4PdslhakfYZ2Ynlontxd0wlRO41DfLcUXs198IfUcE0dGogE5KCRjWQvfb4XxDPaCiNbYw3mfWo/6NZ2qsY0FP5RzuFZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCklQD6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCklQD6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD09EC4CED3
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735314353;
	bh=vWorYAQW4/gbE7iXNvhpkmm2KHwXDEPN2MO/SNkjvhY=;
	h=To:Subject:From:Date:From;
	b=oCklQD6+Gy73wBNGL5dM03oIU/jN0fmoBAyY7Rquw+4yRQgNO4ZLJw/LoOQLGhT1L
	 GqmKIIAt37mLNrffIyPVPJ+PFSAuUGqacKP57zxDaEqw9yJzpjNWb5NFDF54xUV5so
	 3uWCkQhQylXsVnogRPDcfDIb5+paISF/kvga9IZIO2xg+pLOfjPCzVKoqm57DifCMs
	 fqSJvzb7YV/PLxvqF/h7eQWUWm+GCd9nZRrvUvP7wTzkXxs+ygVmuT1T+KYa9IRwC6
	 UZYSjamRrpi3xJzsrma8N06vw5CfmHfQCLknB85B1QbTSdnqKt/ofIet+RZt0TqIqk
	 6ij2199ePocVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C97E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531435359.30000.16492866791036852996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d79e94f52cdc3def8709b794acd8b7be8fc280921b3b15e226e74d95667879d
Date: Fri, 27 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735314353
