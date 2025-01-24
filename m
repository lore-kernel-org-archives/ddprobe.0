Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FDC5733A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737694554; cv=none; b=qyU946yfQXTEPF+GfKCWmlXrRCye2U1zt1pV1spCxPIcfzfNWv5yPRAqlDqq6KxHUSlt4jSgg+/HZC2qZqhOcPr1ltGwgV9FQVVj8hDGfhre4UNsS1rnRlC5iy76zUcYWtJuSHWaPoXEgxIzQCrTSPLnigWuAbAxt6YoYYV2I5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737694554; c=relaxed/simple;
	bh=I8HLP+xwC3MHrly7F6xq07VPVEDf2UmuPt2+Te4DRmM=;
	h=To:Subject:From:Message-Id:Date; b=hngdqawPom+nWOyowyn6F3OBKL+iODFwAlrcwJx6W3I25ZFFG8eFPzwoiyo1Legq8fExIrOcFaN5qReTXtSJu6GRj8VkSCvdjo90peLh5tcyYSdq3q9cpA0+jZlhK/xLgMk7gxxfuvbyWqjl/KA+5TuhnYlhAu65wt4INf5Jugc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJWl8g10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJWl8g10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C6BC4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737694553;
	bh=I8HLP+xwC3MHrly7F6xq07VPVEDf2UmuPt2+Te4DRmM=;
	h=To:Subject:From:Date:From;
	b=jJWl8g10xIXzbMSg0Oev0JJWybm/AYNWz3HIPPJZ1zpODCFVcK3yJCds4h/K0hPmh
	 iImc6nYbaoCchbw4N10izS6midbZOz1kREMNVjV5Q3Li2Fs6iv9Pwnhxv/pPCsTcQE
	 h4g7vTUSTkTCp6ADnIqGQRWmRRswas47ugZCrQeK20TTpduqjd+6roTAQPgFUt+Dtw
	 0TMdCgvXA8N+d0s/2wFVqTi73EAXWPON2b9Asy/M79maaFKM+D3G/RAYAdhNjut+Wp
	 xc2wEMkxmK5HaTDN1h/UJDPNHiXZTPwGlez9z1atZ98slTSHALs3FdaTmgqNYsubGz
	 wKQoc4wslfxoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C00BC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769455362.25766.4859869301418454373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c458359a934d64e4ff782bd3d9a1b6cebaecbeb234da604ddc1b4bf9873d6da5
Date: Fri, 24 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737694553
