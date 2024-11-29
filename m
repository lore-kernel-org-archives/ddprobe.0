Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B1B22EE4
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732845954; cv=none; b=BDUqsVOrIxLDE5+CjsK2n7uxlg1DaZeftWQWQy9GSFumXmBiw3x+ZEl0P24EUgnU1aMWoWvqrcickTeXzbnKSUiBCFvG+98TJyKwiIzQXqgjOeuRFx9LgAxXFHiuNl6vEIKoR7bOjha5jLVZtwnrV1sTIH27Sw0oYdl7KjVGBM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732845954; c=relaxed/simple;
	bh=BLpHG7C9BVYjkcdMwPMpK8qw4jfC9iYWR+VwApYw05s=;
	h=To:Subject:From:Message-Id:Date; b=mDBN3+rbVBPfe8LtmZP2AbhWP713U3sQiU47x70yET1aw59+vPpcrDVziLz4CjHlZ9afEdgm8zfCyxh16XIhV13sBRxhKo3aWjuk5aIuL/SUrlCCoreBC+f7r/9Z+4YZIIfkuQgvWxVrVaxZDha46ZPRixHwqdbdMPRxfpWxuTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsKCVk3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsKCVk3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F73C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732845953;
	bh=BLpHG7C9BVYjkcdMwPMpK8qw4jfC9iYWR+VwApYw05s=;
	h=To:Subject:From:Date:From;
	b=nsKCVk3UwzE5RRXoNAfJOu8bOSuXzUcVLHssuJ3Lm3NYGP1gDLRYd+X9mXifI5vZA
	 H5DkP7oGo0FK/tivuxyHRSy7m5EU7CCYkQRaXfl2ALmJoJb5CCqUcmtNkn9Lag4vnC
	 97WfsfNuZA6SEJrB33lNwk7BjeDngumN0Xny4Lqb0cpdoQpMinC3o+nbabhOA22QUJ
	 opUCWOOBjxI2ljhCDnGbUB8KTra4vwLVEkHtXe4STk6U8PwCa0A1r/SWNrzLTpvPsU
	 VNBUslS76vWGEkwMBKtPI+/AyPnRv88V6rVzKK99gJsEhP4nmOo3oYK7ld4wu95OEU
	 tce1FjEFTAGpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC89D70E03
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173284595363.28290.11280803356422523285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fbae4ebce24a53605f1019f3a93188786280ad023fb42c26f12514584ad8b3
Date: Fri, 29 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732845953
