Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3D82405ED
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764220374; cv=none; b=KExvwl/4Lsnsu3erkDX95dJj+KMZ9Y8p8wzrFDmxEow1r5lQVKRTvsrjaB/19x9CM+UlPQ5fyvmAd9xJTc8GMckDT/7jRiaqZ0YPCM2GWaOwPV0GkABOeDe8Dev9NuaOPJHDMRjOoZZG3siWe/vkmAyBn+kz+VbPbzU9jwDiaq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764220374; c=relaxed/simple;
	bh=DeL00trh3/7Fq5eUe2CIPC5EtdlSLrFDyBGLPSZq9OM=;
	h=To:Subject:From:Message-Id:Date; b=qDNM5QuYdUcHesoIX645ZGPr+CdYEChCGHm8faa8uPVeRiFPBwiLHu1jFLsapCOkZHhSZd/70901CZXWb2YUQVkcZJzOnb/pdvZkqiUHvKF/MSJGMxe8a0LLd/kYtXXfBibIQKJVXMjgmZmsUV7Yu5tnyINKpXX3eJKfR9+zt6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Awg3jZBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Awg3jZBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B1C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764220373;
	bh=DeL00trh3/7Fq5eUe2CIPC5EtdlSLrFDyBGLPSZq9OM=;
	h=To:Subject:From:Date:From;
	b=Awg3jZBbqZfTVF1UmelupbCtGSrHkFwtLgthnXIahGrs/jK+OGAlj4wB5BYMP4K5Y
	 pvcTzT4GJURyE+KsPx3BnrK3058JfDMD8XTf87b8UKAmwtE87RW07ahcR/8Jnx+jru
	 HiYa1lO+VRJvMZSK8wJCbTDlxotcnc6DsiiTDRtAuVvzuqevD1fs7myhApi+2JRpA0
	 wqslGfiKQwPJORaFyWh0pwxCpomzfhYQUhbsBrCqQfIEbRyQXNTZJFhQPfKzjRsinE
	 QQstX6vuYDgGESPiziVw2DitlFk4nuEG7j9Dx6FSYcVFIe9oGeasVmpYkIGiC/frXy
	 mwpfssQi5UEgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9056BCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422037358.11912.6838440001381796544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7664fd8b9884ac1539018d63f3eb671398fe1ac94d1c7723407d7555479b87
Date: Thu, 27 Nov 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764220373
