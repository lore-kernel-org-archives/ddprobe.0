Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E8E263C8F
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766954634; cv=none; b=hCaTSmyEtPkUk+nOMlAryjmGPBnrs59MfHAG1t5ILnKKZUFmI+zCXm24+WbpktHCci6NM60nWy/hpBqbfKSYdaus1DrmPrDBJnpRyalIPs67PkTm0RA5NV19Ruyl4LbVsApZLSjy8hb11MeddX439GT6HspKSP4tQYtzeFZImpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766954634; c=relaxed/simple;
	bh=+h1v2ufaflialGVm+aBVaLsNzxDQDruaJnjsSobD944=;
	h=To:Subject:From:Message-Id:Date; b=DGy8lASvBLm71xT1+aG/vBhLodnyQyZmvfaZv+5M9v2JndqkpBj/l1KOccB5WIdWtdqYic367qZQCWEzS5SEDZ29E6I0GULnGabiwTeqQ33QSSKwjsr2MjlWQhMCpik1u6aaYCOBTbelTSSmyisPdi74pRrKpn9AocxKRVsny/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhXq9bLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhXq9bLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6426C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766954633;
	bh=+h1v2ufaflialGVm+aBVaLsNzxDQDruaJnjsSobD944=;
	h=To:Subject:From:Date:From;
	b=hhXq9bLMpVjetML8zx4dYwAKtLMiLA79Yz4KAjAboFVwxLt/cWuYelwVxWTIXZU/k
	 xWecsHDjPub6tN7d/pO4dBiztrSDRVVN4NwBOHSMQ4/4WIsTEJ1j5aWjl0et6s8BV9
	 QDVjSEzlTVuZ84A0ua7x/t1dkIHccpcoVk7e0IF7m8maV7H0CSCEpTakU61vmajsCj
	 19yPjZvXagHy9WLuk7pkgr4ycWcMnVg8N8Tr7KHkDvVmLssKezB1UjylE6w5SnKYxB
	 SEy4WdyUOMrQdqB+R+QS4wjvGkp19AC8+PXGcmQ6Q64prdgtIZpJvkSeT5BYX+rQfl
	 cdq9DHtjGckCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99635E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695463361.31321.10762759850802416912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec91f459b3917ea40aee44c003ee0bf58607d03af193aa255d27cba679b6138
Date: Sun, 28 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766954633
