Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3820B27126F
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740691734; cv=none; b=uH/lfNItU8Q4xKN6f49HRSnFfk+IlfGGZ6ru9pwXi0W6JesMJK67bB5hzj97bn9iRPQInpLV5CaQ2GuazReilSV4p/fyhlBtplHgX0FyafGc60vEWDR1swqw9+iUUF5Rt9jBY90rrwyaAGGsqgtTeVjX4qaYz88eavYZh/xTInA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740691734; c=relaxed/simple;
	bh=yoxtwioP1DzYwC2RxriVekm4rdGV90zSRFk1MKqV93w=;
	h=To:Subject:From:Message-Id:Date; b=kWm2AcTnxOxrDARmqPksNpkrk5F5Di15KDLvIxB4cVOFnp8kVEPOVyItNTOAJbbskEp/BjMv2c4O3hWCSWTS29C6pG4Y3C5FUCPDSWFsifsZKaF0wn45ZeLbnqKFmEWa71ndNQdRgP1ToPYdU29cOn6EIA5WWvJQvzF8Xs61IxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJXTCMC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJXTCMC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8670C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740691733;
	bh=yoxtwioP1DzYwC2RxriVekm4rdGV90zSRFk1MKqV93w=;
	h=To:Subject:From:Date:From;
	b=SJXTCMC0zYPzc+O1IAjlMLYS6LT15LSkUQvPRpUlZdpke7SPQQDeSWkYpkVhqa5cj
	 YRmkf2jHnD0Pz4KJYgUR0puyjL5xTewZRlPQez/onVhGOonQc1o+da3zRoTu8Z0YdY
	 utBf8iysNYyRdEL11bDmOl+s21OZNQCcpbIm3qt8I1p+0KpJdP54Lqj9lbq6NHwdRQ
	 kfhhTzL7Ye82mbTBRxJajEg7HFweDA6U2jDNEPXLO9TdgiooRES+kU4KsAfg9gQSGD
	 CDiXpPPAWFiCpS+VHJ2cGisyoElOE+Cbb+VnhgAFskAMKbnWW+o1+MqXdTS1jVh9Fc
	 OkyP1t+RAj64A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BB6C197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174069173360.14816.544028980527015564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95653c15b9aeceb9fe3acb416aa7f74a02796d605e2544a4a53f6261448fc1c3
Date: Thu, 27 Feb 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740691733
