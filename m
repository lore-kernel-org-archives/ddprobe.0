Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C94355055
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791952234; cv=none; b=Qa+ccPZsq9sVx5BlfRksUdD/NNuynTz70EzN1QhsrQcVYBVRQcQaWETNZ315HFyfaHsGU7NpqGeoELGKeBqPsaH7qvMWIoY2o+eFqYe6heEI7fpFd1qfhOQwDr2WS98tSxpS8r0zux1yXxEHmudzousy1m5817pP371brDoIVb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791952234; c=relaxed/simple;
	bh=n2DIFcivLRZJRy6NgSE/ELWBpsNurNth3Xzh+Tu2SwY=;
	h=To:Subject:From:Message-Id:Date; b=F69Fzxz7hALWIUG7tekrXY5O6eD+nqbxdGBd1cvNdizLeekOLYqfbapI4Xv1RPMInjmvO/dylCUhjkTxTAKbKpYNSpN/zmVOjEmXJSQdrg/FiX5+SLI2oMeWSOHXPrQ711O+RHX+LQpDSga61F3ib2H8x0UZNuvxsubqA66ItVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ce0n7SM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ce0n7SM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87E8C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791952233;
	bh=n2DIFcivLRZJRy6NgSE/ELWBpsNurNth3Xzh+Tu2SwY=;
	h=To:Subject:From:Date:From;
	b=ce0n7SM5VBCSp9/WI20Gkoww3drTT3n07xHupmKYnHPxnF9rmb0px9YNhZer9mxgh
	 zgZWkImLpyqMN3vvXPInp4LnM9Qedfmu2Xo+j0emVih/An2b4igyfSQn4yZfcq6r0y
	 9O2QJn6HTTIMgU6KRpjaDyGmB3jcyXxpMn6xKffCsmW4LJaLFhw4VeEPuVLFuIAvz0
	 XqsPriUvkfn2SeI17un29siG5UBlVU7B+Bh1z9b8hK3itPsGE1oUtVO7x/zH1VhFlh
	 8MPwu4UOrWXByzhU3D3BkR7HLQ6uZcJwg8kGVCPE2JsRLoA3Zc4NBa8Gn2PF5urCEU
	 Pn0ryhswbfA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57B2CC6B20
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195223372.4620.6070546023081750342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ad922f3cfc3758897f0c3c383b11deba69f025d18149e2327c4de2d9eae32b
Date: Wed, 14 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791952233
