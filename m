Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0C643AA9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745017794; cv=none; b=ffAwq8J2uIIS9s5yW20bWiVJiUEINw4rmd87LfCmve/GsagYoRkm/hHwWEbQD8MIjiutAs27oNIQFcno7pK3PyZ5cJeqxRhRurAVNNTLw2WcQxkCdmyH30ZWXoen/HYrqb5Sv7yTKA2EmMq7FA4+giWCHBOdh71FXZwhcDmdN0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745017794; c=relaxed/simple;
	bh=aGVmOSk5IAjG2F7LZtYUo3iUerZbagbDhINRn74Q4x8=;
	h=To:Subject:From:Message-Id:Date; b=sZSuQezMDuxygCMNpD+YhcGENaokdAPZSZGeX1286sfHCuFzMvc2Bjh4XzVdUoHoad36p8RYCiujF/RhRxl/DOxLqCrb02mhr+agK9i2eHcYB2Ir0goBUhGJ1mH5KA+E7d98+Ql4CafV7T5HDgzdPMaS6OYrIsfD0eQrk1AQJcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjTW19EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjTW19EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8468C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745017793;
	bh=aGVmOSk5IAjG2F7LZtYUo3iUerZbagbDhINRn74Q4x8=;
	h=To:Subject:From:Date:From;
	b=jjTW19EVZoKjbMam/rrThEuFLtz0g65l0uAOfWd8A68KNxCUWDWr5Sfs0aPyxc2Pq
	 3b+XrX3A4IXsoe3nGIkQBbbBhuzmCB+kmj8oYg11YfGWWxRAphRIe3TSYM/AmJp2dO
	 6oiqFZmYcz/UfNN3gMsi33eV8MjRAYn3r+GtIgSwsdx66kHRIZwbD7//KYlQV4yRDC
	 v13Ktj0VtUX6gHv1H8ZTDpM86SShbFokzIuTLE1lnMgeABm4NzR62zX/RppfcfRyz6
	 zGVIAlqRu8UaWeGWVsAUFLVQh1AXWsxn2NO1YzypNo7ehtnhWv2VfgZ+cXUqRawOYU
	 2Ti8wX+ZcKnXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F1C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501779359.10073.2936522987148042252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac4eba4a8141efdb230546354e2c995f9a343eca27aafdb4ca5bd3fc234c8a6
Date: Fri, 18 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745017793
