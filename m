Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4227B270545
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788915034; cv=none; b=khrt0T8MSqDu5pHscZb5BJh3Wkgr0R1AzQL0Eo/muNJM2FAffDxE4ofnoBxy6LTUuzTSpin1BDJS5dg46ruk3pCRhz0RskR+CYF2Tv6shQabfweiIckySFavBWRXaJ55Z2MIBxHa2vWDcmQpLmq8hIYvMDYWSf1/FA/BiIQ0rlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788915034; c=relaxed/simple;
	bh=1w0B/1iLhXTARbKA0TRD5DZUz/F95PI+tzSxBOQI6tc=;
	h=To:Subject:From:Message-Id:Date; b=uY3f1ZkADxbXQEiBO0spyO0w9zg2xhOPoCOYP032KDV7vS3Rd38Z/Et1yPDTNAawwCab9zqnc+ybd0w8/nfstR7AABhxm4DpEztvIuNQ0yv5BHKKdj+LSQ6OKRgj0svcANfTUjzeGlGm95DeMjcDSx9bkRJX/8N/JsZLeMq/R/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+V7fECc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+V7fECc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD184C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788915033;
	bh=1w0B/1iLhXTARbKA0TRD5DZUz/F95PI+tzSxBOQI6tc=;
	h=To:Subject:From:Date:From;
	b=J+V7fECcKJ5Jcq2EnJ4m5zuas0QLMady7yNCT+pr9uzbsE0MSI4z6G8c1VLPN93Zn
	 NJfKADQsYtM5KbcpjNCKQ8Q7wE24am+8c1pmWH2om+qucOoNsrYh4/YPIjtknr0BcP
	 KBeqU5NQdc/5HalSUN8t8bMwlA9kv9IyQsnBDJsdtLgkTA/IGnkeRam2uhmuHhxpe1
	 GcPV37GQIhbOmjULNYWy8hbR8w/iryIQhImSDBR19B36y3CavNrhKwCDaPGYe3iGjZ
	 kK3hfw2EOhVKHId5Sfvw8pFkQ7ubTJnd0w5TVTDUW13AHfFj1JqeFDvtJ9CIALyRXk
	 Q7LoCEQbOh18A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED8C79F82
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891503369.6676.16092267727765936404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653f154789965e844fca5fc07756c0d5a31db9c5bcfa50185b5fff50bd75bf72
Date: Wed, 09 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788915033
