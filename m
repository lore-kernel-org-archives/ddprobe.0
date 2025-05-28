Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEBB21D5B4
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748474395; cv=none; b=Yn6er3Y8l2JfKxi4Wk45GGa8h8e+6yY1IoYM9TokolfDwnDej3jFERitwlZ27yZ1JfRDplJ7hAsKge1LfukIDOM90O9/i1OSAi/D+hmeoja0/XAzEx1dFwrkH8lT6H16VRcmzbM5UBvHzn3NYsjQTiumhdfdlb2CxZNhbJIUo1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748474395; c=relaxed/simple;
	bh=cD28tW2Oat6K7Vww0EkuGY4p6x5MCFY5KEd6M1e4+A8=;
	h=To:Subject:From:Message-Id:Date; b=E4Q5mBq5bqSq5bYnbv3X1LCxKFPc4tfKuONeeZOGCga8iB4kddj6EeEGaunnnuOCgF/fgs+tICZJPr2lByWG0CF4+Tj+JyqVKwrl2RewoMFD6cK0ORa/b/CRDmLgxU/fQMFASA213vBqNWpGEw2Hd2DDzpi+pbM4PmozRMgKOwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgcDSuRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgcDSuRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4407C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748474393;
	bh=cD28tW2Oat6K7Vww0EkuGY4p6x5MCFY5KEd6M1e4+A8=;
	h=To:Subject:From:Date:From;
	b=HgcDSuRnfufubNZWGt+410dDjdI0bNNCcEQzWNPrycl30bI3fGh2S5Jx+058j3py+
	 ACeeQQAyqE2cZM8IaN5yewBAtR6VOytMWxy7yodBpOvhmbJ/y6ShsYUrze/aYAgxYy
	 D4/V14nrlOXh3qywGyCCCDt05A1tdy/dCHsORJnBpHtQgnyxyvAWtGaQO8QhFHqz2Q
	 yY6rw4YFXpo4Nneuf4urJ4SArNgbxOTVzxh+gJBzw/AQDKY+py65CE1o/iR54pdWn7
	 hTwkswzYkNQj700gTQsTLrugfkuGX5n6Yz81zPna0xlaEmUoU+C0+/EmjJUzhAdCVZ
	 onjAXFKPR1cxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085EC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847439358.24555.3708179112281715759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83996e87cf9f24e3e8d4d2ec29512cda5e5e3e6f0c8b3f8fa6892d5c4c54d7c0
Date: Wed, 28 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748474393
