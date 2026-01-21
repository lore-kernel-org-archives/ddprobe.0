Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12988342519
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768964634; cv=none; b=ZaCmpHO9mzkUckVxtnRY6P/CJMczNM6cvaLl3PRP4lYTmaT/9KPpQLFMilVVfNm207/fB3Fwk1RtjPKbFSevM9Up9F1AvZrxz259c4PlzDRFONRNfcxNf1fwpoOrQauNn5h7hIvOs0s5KxJ2lDI2q7ygACINbAtiAXUrTBUM2pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768964634; c=relaxed/simple;
	bh=IWngUiNfMWVKCGnkVWq1I8qOS0utizeS9QKXa3t8Yy8=;
	h=To:Subject:From:Message-Id:Date; b=abQ0FZehOWXejMO4TTaUXdlXXbuatSN4U3GCv2sGFtZxrJexyRaAhVFZSoPM2K3dKcoEMhByAE9Wv6BAyw1M5rIJb1RJlYCVtY+/TRl0p0o1mDLi1fw4Jxf5drlgA9yAIN939szUG49DZ7C51jK9aTFXQzauXDtGze86d7h/e/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tff0ekY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tff0ekY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A236BC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768964633;
	bh=IWngUiNfMWVKCGnkVWq1I8qOS0utizeS9QKXa3t8Yy8=;
	h=To:Subject:From:Date:From;
	b=tff0ekY3A97W8+4dI7sFx06G+p3UY30/baigiIvdKLl3Sstifh8EA1mFxIoczsR7G
	 GjWj5wqmoObRI6AsgBd8x2gwgD5z19Ljb2G3URLG4/ve5LxuHgfnfMSJsVx7JvrvxK
	 9/wrKePWvbAaW6iXrUCgp+vGgVEEWiVCrjCrHSzhpryL4Mz57vxOC9MwN7IC2kXUMV
	 jbKGAJ7qjQ1syJOAtyOITDkpzqL+OfXXlUlkR1TXMqFfjDF5GRfbyFcFimNyEPTcQW
	 /CoSUY7+maT9GNIfhKKsC01GxNnzfxmHlcpENY7QK9PgqELKZitS0Jkg/9/AG0izTa
	 03bLABu4EEC1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9276FD262B7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896463359.27601.5532115807938609221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5cf67bad94795bb016b22edf1fa4d308ca1f3de73381468f7e3a83d2726a65
Date: Wed, 21 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768964633
