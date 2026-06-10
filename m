Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC052D73A6
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781133394; cv=none; b=KlGGp5d4WcL49pTM22ceCJSHsucsM7hfs62ZBCz6MQbbS2VkbGerI2oUPd+WsGEXwV0bsPlOcmhugohlz77vEOLZi+V6UlkHxA7IcPoRFg0T2DmIFTMvZxMm4jLzD5ZsBoJlfjl1ad/gjg/hHGoMTu16GjJMkP1bOmtA57D5kak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781133394; c=relaxed/simple;
	bh=IukFmO/EtCCLN4LKQCuzEWekp81bKHi3qB63OfY/lAk=;
	h=To:Subject:From:Message-Id:Date; b=gYjKEM28sz/JcJD0vIBLdzVy0ZviVALwlVdfmmw1v052u4OJu1zTMuruB+HWLjxbEzuVMAx9Q0yBHOZIgljZO/k1wshXnYSln5m+wLZ91jr++OeYKC17UeNr5nP9DJzoyA/ArRsiOC6ebV1xgNT7/RkR7R/Uxn7ZA5OCjKnxPqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfjImHmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfjImHmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4738C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781133393;
	bh=IukFmO/EtCCLN4LKQCuzEWekp81bKHi3qB63OfY/lAk=;
	h=To:Subject:From:Date:From;
	b=CfjImHmG74KT7mWhZq2qhk04Q0xmC6AHFhbdaSq9bkSNNvMqqBcw6lpaYmptpCkW/
	 /pRK7BwOB02FcmfULh0UNhTk/dGtP8YVfpXMTgj+i7tKlL/+cZDjRC5P6yBp+vWVCP
	 J/vgIp1hC1F0Ts2qinP4U2Io75y/+HBFcgDPPxGunBqe7sHP4B0/yxk9pU1IrXyPZ1
	 8D+lFAtQcMj5kXIZ0ZWKaFB05dGNERKbaNF7UNn2OOOlXKosXgoF4MRmoboLW+JKlg
	 iBMa6+HlnMPKzZK1LbfAD6bJ6Xx89Y5o0/wY5xedjL05gYuBtMxVur3Dd2q1VuWsFC
	 tGcmB0FWljHig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC2CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113339367.21243.6260130950083931069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1718308c98a17e8e18a2d077bae0dd9836c63d045d14f8c4fa20b2dc8216862a
Date: Wed, 10 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781133393
