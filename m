Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E64D28CF44
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747924794; cv=none; b=qVXm7YRdtRaskCdPajQxSmoReNIo7iqcuGsuPd9+iisF7fQwdTnw0qgIXP4ArtnDXDG8ZcDmc1mMylG+n+v4ZYAUbB/bpo13jQ4S7Ug8L2VvMkbe97ZLTpRwrYmwgBEToxg5TTysSm64GzdPuUEaqZV6vzTIbxYWBmSc5Aiu7Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747924794; c=relaxed/simple;
	bh=dx4eDZclfzy95caeRajnYVhgYsC5cYkXhRhPBNbT5ic=;
	h=To:Subject:From:Message-Id:Date; b=e87EzxCtjUmW5sqgpMDhwq74//4iehMnqqsiQt6CfIfTwKScoiF//Cce9mMBZ3lXH2r9KXCsVokLHfOKnChhP0reeNV7l+XZHlJLIv6cFMr13AGKkNSsSGCMw+tunK5zrHIfCWPemwZ4xIGCram6bvjLJeuSebSmzpXsou90kh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlRGQrVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlRGQrVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13AAC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747924793;
	bh=dx4eDZclfzy95caeRajnYVhgYsC5cYkXhRhPBNbT5ic=;
	h=To:Subject:From:Date:From;
	b=AlRGQrVcmiyVdvmpTxo0uFxI/NwgMf7UeRrQyWs/vcgrX9s2KyRJCOWy0BBFYKA/f
	 fWoW+TWjtDeS/0Vs3iHM8yCEfAo51wwmvD1ZLPRnt5MJFGroJwnkLdihD8eH5hnJ4m
	 G2UsN++LlGVTrtAQPifhN8gTR9Vux8X6JreTHACnA7nrRVD9patoLCtyBML3ESEWdc
	 grr18qbllPi8dUdxfy9ID+LJUvHqMqtIJ5jQk++VCpv1hdGKgQ0rHQq1mwDwCoKaa6
	 s3QPWNzNDdPhEP4hiLlIXvbQy/p8f38U47sLPV18ugf6esDyDt8E1wVKTefHdbhXO+
	 zGfFH6blOE6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97EC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792479358.9914.8470159880404015684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6755142b51dc1205a31c0c0464da5c8b788a1deb454d1b791f1fea757809472
Date: Thu, 22 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747924793
