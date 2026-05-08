Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D9034D4F9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778221655; cv=none; b=PZezXTCUdRNBty3nzpS6O5X4zwuO5csfq+7+qfIqUTOnoFVVRMdCpcIpvLiSzwkUAaoX3osQgT9j3fyNLilP2rkcmtYkgrGHDbm7HMQVpMnOQfELP+LeiFyomMTNtn4w3MaFwktl7/TULqOJ1DUeHwtdfXA1IkmhrHhTmtPp3dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778221655; c=relaxed/simple;
	bh=rvQueYwaHkF5PyJnFoe/mqv/cDOvdzke6UaZ1hlIlM4=;
	h=To:Subject:From:Message-Id:Date; b=FzEtY30yaUnd7oTrahDxxkzXw6U9TiBUZmi8PJcsxOm66SLkOGDM2xfglbabixtfubPRw1MVbG67MgXQfKl9bNuiVATwJ34ZUgT7ayHZ6WBcbs1b0EY9miN5InxEji/CqBSQsKK7VLYLGC24vfly7uj0SW9vOGegFsjFwPWlVok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjVarKP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjVarKP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0945C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778221653;
	bh=rvQueYwaHkF5PyJnFoe/mqv/cDOvdzke6UaZ1hlIlM4=;
	h=To:Subject:From:Date:From;
	b=qjVarKP0JQ8v+R2KtCQG2ua4Kzrmabl+YRhMm1MAF02ltRQELkt0/mR1kiWNZKXNB
	 9BOcAqeTIPU821z8JSrMZNoiSRDSGRDRyzlaGSSp4+Frk6uCxUfob+B1CxizdZr2GF
	 sLgNXgh7OuQ9GRkbpKlmxUAJgYldDv/Hw/FNAf4w+cB7qZ3A31NCLC2r+Ak+DYo5vs
	 N7zQLQMc0NDCMC3Fs/fAEDD7NpwcCoPpbhvY7zMm5vAe2/g1TG7QHKIVJ6OSGnSEYI
	 6QqcQAHyaz4Q8OTHRTrPmwysuJQJodsFHwY5pvOBPBeY4n6hrKr5eAsyfmptwLAVsr
	 NGC4xruMOJBmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0CCCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822165369.30139.15978586402482928593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce3ff20b8b845688c876ab261367c4f7535c94c65c07734978569e5a951a2e7
Date: Fri, 08 May 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778221653
