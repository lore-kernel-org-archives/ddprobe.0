Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3507191F91
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773022494; cv=none; b=HjlhagvalxUpfdQ90yGmmf3DvFr7TgENwNxpTVF93R0HHsOIPbURGHDTDBupnL5KTtybLA79f6GYHTFDxpLAPSy5nySHg0CUh5ib5Tu+03O/AVAZv7RcNSuSAthq31XlHmIn3X+s8/wNEQSv+ncyxcHDpKD5/7/XbLILHuw9q10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773022494; c=relaxed/simple;
	bh=VaF4ZKdW4h9vZJwvdQmcuffis6ISpamvxR4dZMwuMs0=;
	h=To:Subject:From:Message-Id:Date; b=hdaqpXtD+7/6DSDcHowwnhbMhp8Kvg+DTBSQTtkRG7jj0lmyKEwNp2vdTOlVyZ5r9pu/Eh79MRB75GNP+SFDrT1cFLcrI+ZckXH2p4G1GWDTDOyCNx3hzCkOQRhMNYIhADFi+I9tRfDH8ZferW1pmvRtxJak0BGmOqKf4yUhHNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHPOUKCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHPOUKCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D5C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773022493;
	bh=VaF4ZKdW4h9vZJwvdQmcuffis6ISpamvxR4dZMwuMs0=;
	h=To:Subject:From:Date:From;
	b=GHPOUKCNIYlghzZouTs/huIWPNgZPOGyGRHrSOBZkesSeupVipVdUUYDLENqGwx2f
	 KzakaIcnTgZHzlSXimIhxm13GN1+2NPFBzbZQBVN1C+12A4yU2oiPCO2LIBl5ou1NL
	 SRJQAqLhMTcd+lOZqxLy0zzJho+qCI9fSsN3ycKWsAozruDdRPodYNtLTGPXPckKIQ
	 r77gzBMQ/OHIV7/gpXJZXq7YbU1WEqieRc96LTDlQB2Kr6BETPTM/H3FIaNcuBFLij
	 yfc2rvnXWcKXQqBZJMctlCXha+uH81b+2MeqZFuSumMgsynzyI3dL6XBv6LUvGeEqy
	 qlNOXsKSAjDSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFCEA8542
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302249358.22411.15502992360002450647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ef6c47466f68f24d48b6a05d8776f0fe31d8b26b08505fe5e46f478cb9207f
Date: Mon, 09 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773022493
