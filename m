Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C630A923
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749620994; cv=none; b=Lh/c7MDKrpWZATG3uy1BobfmTvLo/NvEUwLNsKT2dQZTB69Y6Z59yZt8kFoR3b59lTlMw23Cx9LgBgyAAjP8PSSNvmwip4LNmtLoHtRnZRTcJ3+PPEZReyDjKxpq0qfLX3wCWenn3ylq1ZPCf72eo5VLg8mauMjsHa07ijI+4wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749620994; c=relaxed/simple;
	bh=uXQmCfA+M/mQBBPKZU3sQWNfsWjOofBAuV536t3GKlk=;
	h=To:Subject:From:Message-Id:Date; b=RDZa6lPLYNBSjyKoOtjjBRGTyfyLgxD4U/QqM9HK8f3gKlOXHO3F6JK+7dupoF0ptTGSjU2wtImc99QJCafA0hBCL6ApAb8Ih39zQUBiHLRSzu6TVDJ9HxbJj30CMdnbwwJvVshgfnqV/a+D5m0OykEliHOwvERNRbcUIDywgVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbP1+OGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbP1+OGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DACC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749620993;
	bh=uXQmCfA+M/mQBBPKZU3sQWNfsWjOofBAuV536t3GKlk=;
	h=To:Subject:From:Date:From;
	b=LbP1+OGrQssTAKTWUa1fSrFaqXra6/ZTxfyItyCbFm5D6D1jbQQTuVTWRSALrKFOT
	 qo20dEM5a5RlK89BWWg50rz0Gj2LHskLpwHbMNtyaNCFzl4voJfPK1KJsKxcDPH5cA
	 stx1/BOm9+AxWOn4gHMywe3FzQLtzoUxMh5UorTfPKSG2Ih1bl5dizDcokFROeo6WU
	 JLSz1QhV6+qHx4oUJVhua612EbMQMloBNfBY12qYEtwn2zS/HLN/62pUDgg5a2Clwr
	 iyqY3gVwDu4+4gIZXjeASdl9zkihfkHd87U6IWFBnK92YE6H1ElnUzrYPJSlDO8+1t
	 9gCdjBACX0s8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB8C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962099358.11440.5240509324916793355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6648375e8c37c26ea2ca9ebaaf495602e37e16b440d510a5743e9b04d18b9bcf
Date: Wed, 11 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749620993
