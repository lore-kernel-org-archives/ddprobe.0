Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE297EF
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 00:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713918023; cv=none; b=QOFdiPdQXIlVRKUM3KNgYKP6KixiSXZKatnWDKFW7ymvkFZxCoomUaMHdo1fNaePOV6J0hxwZan2/mWLdcXprt0XXYPdu+a/35tnfB+NU0U9ekMQE/zo7imgljOtQJHwGUQVRtkpXIq/vFPyJHPP0KR9PFvXCCrSepAh3CkiA6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713918023; c=relaxed/simple;
	bh=02ycH09bPi0FCm6L0vIoj6Cp2xgc2shb35owpw6qlyM=;
	h=To:Subject:From:Message-Id:Date; b=onjkuEtBOsfQveTAKiqkPBo5R8+Ibvm7449MfxLcZhD3byGbSniHOBrnIFLp6yTuBnhfi43mET4F5v4YOe3vW4RAoH2Jh7BqVRbZzlV6x3xVsxN0h8zirmxukn6Soct/CSPtw72C9/Ym8eAjuIhzaQBuITC8ssMGB4VO2XdMGm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey1JZOq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey1JZOq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3CDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 00:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713918022;
	bh=02ycH09bPi0FCm6L0vIoj6Cp2xgc2shb35owpw6qlyM=;
	h=To:Subject:From:Date:From;
	b=Ey1JZOq/409QgLy+b59kW4koxnrsqr+ynyJpdog2AjGTNdK/4odKBu4PZqWXJFa3T
	 Dm80l9vWWb0PhVQjYecu2NLG0WkxioB4tGobFvIPSTSxpV4CD7tq9PO/vTFJOARJE1
	 UegtqHjNDzfp1toZ29ozsTFiju46RlwcOevSDyseXDcTHkowDzh5iXidtKffkbn/RA
	 mPVcHfDUKzh70E0A6MyhLb6jNxHuu0nrifkIMRDZUC6RMlxe3qVL5pVanYbW9Z3y5g
	 52jXl2zuv4A6o3BykYyUqrwkij8QeL683GQquC4PYUig/n9wfNO5yk9nvJjia1bq/1
	 5BDIonNDu021Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B0BC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 00:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391802281.24492.2361439306328548577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a127f993a1c7ccd644917f5ec04da329e418fdd2c1b0b44836890f9cf22effa2
Date: Wed, 24 Apr 2024 00:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713918022
