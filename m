Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FBE258EF9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781814394; cv=none; b=uZpNgerogk2ehXwqc6z1UR4vgzIN8/+Txp0AXoTaf1iap54gZd97a7qYdFgm1cTFdkpSV9/NGRN1wtr/MbTzuhyK42ejV5Pe0PJXf778/Q4XQWCXxPwTDWIXTXNeMaCkBUEMREEyBiVTk7Zqgxydj1vM7u227wD6SdZFawKqYmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781814394; c=relaxed/simple;
	bh=/NnHfS8Len4YiYmfcHtMCJGNjNc4NnPviJaxao2CrNo=;
	h=To:Subject:From:Message-Id:Date; b=BwzSkuh1xLAUzQSa4dNIiZI0HS35NaqSrfG9QDyi1EXN/Iqpn4/L0E2NgmP/a6JFwJ1vrN1km4/9czYVFPREYw6dlJdjArR4gPfXSefKMqm4U3HchdIxLjAkQeKSKAuyXjhi5ARBlRKdKF6RouDtsjJmCBDTwc1bEZUb3Gr6lQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnrXReoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnrXReoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8ECFC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781814393;
	bh=/NnHfS8Len4YiYmfcHtMCJGNjNc4NnPviJaxao2CrNo=;
	h=To:Subject:From:Date:From;
	b=TnrXReoiY9jyfu7gF/tVsSHnFuhrpLHFFqjdCz8tbt9Dzol8QQFMzfBD3K0O3ur16
	 y+QLKu1r9c2y+LktfVOswqASz7eAbd1qrwDhnnNL1+gI8O0FDKgNyR6Qhjgr7kHGlU
	 MFrYGbObiLZnSppKUFaUsN2QIx0edIP4HMLbXLWGQn79voyVkbiirm3XHj5MEdURx1
	 tept/H2X4XnIzTpTvqqKthW9ebTA83zZ8VjgpQY0GP8SxhmcYJtgeRRoFNM9MndfI7
	 CZyJH/rTRBuGgMFpSwhesH3npM3QoD59rQFmyXcdQA7ZcvtFyjMnadZ0Z7PQjA+EBW
	 lCTysNizRqpSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC853CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181439369.9617.9570988713139167921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961f6d007b09880390142c968c07fcefda1dfd84f6aece2404f43190ee129a48
Date: Thu, 18 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781814393
