Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4150B4597F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718462903; cv=none; b=ZjAyzfHJCdZkG1oHkdM2Ntc1+mErl04F408Mqpv155iqNOsZ87ZGtRHu41DKwWwUMOfpVNJePd2SwfZCovXsAIMZwDZ5r/3XNLINADVeMbzewiYLOBFNZSyp4d6K9yyGjo8/ZTJH5JFA81tW/7t7Ck3Kt1oaYEcZaN26Qd7D1UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718462903; c=relaxed/simple;
	bh=YiaCsZQbb1woBaGJBwMPDwkhq/6BqoEXm4ykkEEft0k=;
	h=To:Subject:From:Message-Id:Date; b=UyD0tWLgKVE01yKTgFEhuayDEo+AtMbJIfA48IKHEP1ryOs8+mknYNcahf8Xr5B0wIh+BOPsGcosWO5+2Un9PLvIkg4HHC5patEuDuMLsE3acitpfyvO1pZZ7pX2Q0wat848mxYw5q0M+uqUiWwgWhL7MnIOLnAdjEX4gpT4nOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4zXS24M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4zXS24M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFD7C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718462902;
	bh=YiaCsZQbb1woBaGJBwMPDwkhq/6BqoEXm4ykkEEft0k=;
	h=To:Subject:From:Date:From;
	b=l4zXS24Mw5GYmItLoPPXC9sfSqtsTVceOuQtWDHLubWhB/7wRVAKLF5MkXac/3Rdl
	 UssDX1bGDzSLZdKsZSslwBdak689m2EF15f29HWy+HhP09Zn4WFoCE+h5TA+2sntz1
	 jhCZDX5NVFWE6kfExEGd0p8klPSaAU3SGlI06OKZR989VEcxFNFHndOdLU8cCFtuyd
	 /vHex9r+jNpCr48DAk/4CW3/e8zk9p8HrX70I2M3Wa+7LaxuSZWBTuCbkYKaWRoTER
	 97Tiu6+CcDRrAXrZZP/d84pNyShABIEpm4I3E3Ju68iIb6Cs4aKHwovWsYTwUvmZU8
	 JvuNm+HXCSoqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82A5C27C53
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846290280.19326.12072203656964283761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72c119dad24ed2c97cc393d81e763894482aa788882acab78a84c3e057d736e
Date: Sat, 15 Jun 2024 14:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718462902
