Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332D618A6A3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735808754; cv=none; b=OsaEyGBAIK+RvOJWimbV3nHq1zw+S0kht6G6728QXsbkRdw9IJprycmcwikSIpSmh4nntBpgWN1Y2yyNxrQT62QqFnhS83joGm7rFlnBMFyD6THezYd8UNA9UKb6Gsd8xBX/bCeqJGiiWKFuE1GfCwrpRDEc7+fVWtmQN8LtLaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735808754; c=relaxed/simple;
	bh=B0I4Llo01DxgqxxJTljKoeR50OaHOpeuBCg3Tsp/9/w=;
	h=To:Subject:From:Message-Id:Date; b=QMCgUmRuBu3xeTMDL76lrH7WLAoN/ghzeAKNSHM0GFiO3LSJcOmp8BE2RPQ5oUzHeo4/rT/Jx6dwGByFyuScG//I/P7q4WfAaCNbqfYJn8VF2how9lNVOZI3Pi0eHh48D3MqGwklANSTYKbXPZaWjiIWeWu1lPOPCfzMYXPPLbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdRI6R5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdRI6R5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44D2C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735808753;
	bh=B0I4Llo01DxgqxxJTljKoeR50OaHOpeuBCg3Tsp/9/w=;
	h=To:Subject:From:Date:From;
	b=gdRI6R5jRHzfy47/BPOPE7Xa5m29dOaqKDilx7CANvNEGFuPK4Wx0Imzlzz1M3ont
	 cPdrAv5oyW7L1Ksfg6z6avcm6aXABa87BxYPRd7d3ut5npgK+8jc66Zd5Kt2QUD5p3
	 GY+hDRW3qxgM+/g/z+WSGO98VKM8WUsMAmFIfoQIPnGpx5aIcpu/YTT/95mjjeA3TL
	 Ahqqy656BCFYGjCAVSRSarP6D9mXfcQDvL2qQ6pKhfwaS1C/huSIgADJl7gys1mTUe
	 IY3Gm5oSRO6w2I7ZNekM9wDOfM09+R0BrbgBpkkwHqB1A9/Iz7wAFwtd9gH1AdPTXg
	 4YKW7DXrwuAxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B069E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580875361.20042.9318981028277702177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a3d06dfda91cf84ef7afe617f200376f36559694527fee992d99f640cb17fd
Date: Thu, 02 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735808753
