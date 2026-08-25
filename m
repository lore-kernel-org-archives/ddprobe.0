Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461CD3C2BA2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787645434; cv=none; b=ZbjcM4s5751ZCnWugB3RPQ8kUpHmjiaMGr/nPktd76HrLAvaU+YNFSt3FsYuslF50+pZYQqdqH7r3+9UbKuydbGApiCeFhOEU0rudzbdJaLdlJicyj+lpAZ9jBVukvq1zLEH6A6fwnjueviceJK/LMc+LkestxaN1y9BtpMivGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787645434; c=relaxed/simple;
	bh=c/aZxTvKw4iFi5BXjl11YPJ08kb9Tkjogjz8R7plbCo=;
	h=To:Subject:From:Message-Id:Date; b=UME88rOa06782XNUIIbtm1eiTjNF/BQAxuVPZNDyO1G++6O58TPCQ9w3CxTlS4hlIkKuXpDelxIEEwu2/OzDfQTam/rw9cyFPJzg8dw7MWR/UWLngKtaRY2vNGTS7sdtas6bo9Z10HhRqBzD0oa4tDK+BxeC9Urn+RYcBiPfRCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6bNz/b6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6bNz/b6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBE4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787645433;
	bh=c/aZxTvKw4iFi5BXjl11YPJ08kb9Tkjogjz8R7plbCo=;
	h=To:Subject:From:Date:From;
	b=f6bNz/b6wLohMHBzdzZnHNycsJCNALzYZAecs6RIem95s/v6cTxZO4laeS4PR4BsM
	 p/Jp+4jGZ6e9+5654qHGNEX/W/o4Du2Rs+oUxXVTp+orZNiEQYKiLG16VFqH43SElC
	 WCK1Hgm2dtwKk9u+OjsGZMqFmW3ZXAkTc8U+7kjgMEIStyzpxntIvk9tfiDKOkxnJ4
	 2ZXF3atO+7aj2ZV4hw7+dR2znbIpuUqM9ltcBBsKVxwUnvWlmec4FDGj4Q8uq0vyoh
	 XgLMadd0HgovH537xnBOHjcEPnVhOPFqwdUfmtLiVioUP9Sb31h0aaV6xIka3v7Lo9
	 y/g4WBl5Zs08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89EC5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764543368.3061.11003352142102116404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c43072ca240b845e261475591d49990e5c9ee1916e3ac9d6aeaf7e7b1c727e
Date: Tue, 25 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787645433
