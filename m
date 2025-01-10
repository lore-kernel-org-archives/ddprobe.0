Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296F720A5F6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736504154; cv=none; b=F03LoSRBai4FkbP1ZqeqFBM11d7lM4z0iEv0go1useMUDn43h2AIFBxPAmexY6H437VV6TuqwcsKQFLijwlyZ933+6TFNgmzsXi42mzM4c/xsxme7/H7gSI0K2tnOViDWs1OTtMNuOTcr2OSvTe7ziDye84x7vuz9iVo6Ma38WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736504154; c=relaxed/simple;
	bh=HuwW6cfX9LVrvIP/tv/e93ha6F4aqANnNDoHxGdS8cM=;
	h=To:Subject:From:Message-Id:Date; b=s0R4aX2laIJeXQKLoUOKTIfOnNUfQpoWfWKAfrtsYPHVj0LSf3w23cPVNhwxCE9US+DeBHwN9r5c4B12SU7DZtpuEI3xP2Wkm3DI1hquF467aHq5rG1ZF7DF1+jWLz4pf17SxhuML6PA4NkSyYCqGphbsQldFscVmwInAPpaAIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYwKlqXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYwKlqXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF984C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736504153;
	bh=HuwW6cfX9LVrvIP/tv/e93ha6F4aqANnNDoHxGdS8cM=;
	h=To:Subject:From:Date:From;
	b=BYwKlqXKf7/Li6WkzLa+nY5URcs6ockCMglh5L37fUYSUbiaX7Mlpr8n7QOoVxWnN
	 mSbHh5C7cd6SOeZ3uN/M1jJcxA3cW3sKVc7Q9c6bytNlSaMiH4gplOQ1Zfp9pl+sC1
	 W6EIOz7D/TpVI73y7tpWcgxoJrt5+z1up5pzIC0fFXKY+JemwuDs5DOVic5j0NcNQb
	 IUA7gW/QieC3vQsmeBCrYPf+/MbO6cKqvo0AaBz6IuL0urh0aquGofqyraSs8Vu9OQ
	 skNZZ9e38RIZIwxVtxVmQewDuPbCw1TTr99xstyXR59fnhw7IFg7bRl6c3Qu/Tt238
	 8/Bt/jRT3rVqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF8AE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650415362.30131.3267834789142738367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52606921f157dab79b97370c83c4e6fcf8749a52287cabb0f2b6f657fc87f4e
Date: Fri, 10 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736504153
