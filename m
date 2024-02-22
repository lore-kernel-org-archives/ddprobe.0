Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A3C11CBC
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708588097; cv=none; b=LBRDeNuLg68QYvuiN8MpuLu08qEd76G3DaWIDNrsz+xWk/KkBYrsLVAot1Um894eaw92mLZoyrw76hz7Ve/qNgxztcotpRW/22vtiVC8LwASs2Cz4yLPjPWa8R4sRsBbCuSCjALVn/ZV12CUaj7Ojst58qL0daF1X4tzjptTbm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708588097; c=relaxed/simple;
	bh=JcuKH3U8KywshoGpRBz1BS24z61eIqMveiGpEc39mX0=;
	h=To:Subject:From:Message-Id:Date; b=eTTp33XaPxSfYw06mQulw8uevwIAb934IieTwPKeGWZgjKskOkXrlO4AaMOi2e14Ufc4JurnydrjFmXZTuJag5SdBYhWhqP6LelyUI1uGXMjbjnn+LHqttbuRWbY6UUHWCT4RAh+RzdgWhd6DUb/jliEot9owKgskiOmFmNCQgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKEn8PEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKEn8PEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAF3C433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708588096;
	bh=JcuKH3U8KywshoGpRBz1BS24z61eIqMveiGpEc39mX0=;
	h=To:Subject:From:Date:From;
	b=dKEn8PEEadbCSgS42X9EF6XJAMpA5rUGv4j+C0nyxP0g/8bjSnt6mjSgUv84FNfg7
	 J5uiYCv11dGotjA88XkgIzm01hiuBXVz/wQiyWjgl1eCR+GrLBTjIcdUgm+p9oJJik
	 il3yPHAKEPrEajZeIlRsTbDAgDCGQxpepv7VZPleBvDrSjVO987wPblH3QW2jYqlwc
	 RXaCnSUzt97fVb1llT1F+TUZfp92CO6LhmHT+qU0rkiScs8IF/fM7P+LQ8vmZh0dkl
	 HF2bIRucZS3wUiIKcSQLDhk9z5T4cjkXX7vPk+FFBK/xQmDfhpqgULAIFgw8mn6Yu3
	 3Lz+EwZSYDCGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D2DC48BEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170858809640.20056.18391702564219889628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b2b0f31a7c2682e7cc5d2ed37575e3d78c3125358449d000b7326c6ea43ac3
Date: Thu, 22 Feb 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708588096
