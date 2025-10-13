Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2021474CC
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760375994; cv=none; b=iQSO3leAwKYcSqlGk07fsrWeO2Cgx7xEYiRMLX6YB8NhVUmw9FyvSCHL7G826TE/yypaHgliU0ehpFYBNx8LFfTe73o8VxxQ8j/Fb/mCnqFzWkKBRyl/Ur+iQ1Na3mPKjyGFr5NFygDBq+a/Tc0qBri7WteJWcgYKYavBZV22wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760375994; c=relaxed/simple;
	bh=DU59/JDkxgx81PU8NfSHtyxW03DmVSFCNR495Raein0=;
	h=To:Subject:From:Message-Id:Date; b=GM6jcwJP55hM9yYs6ytzZDnNfaWLG6MhsOjHVEgDMMBTOtvbXbdjsaTqsdOQROQg1oABt96iUbyQZA6PwU6nvl2NXy+LCVE5joeYLLE1fI6Wo/igCwCPWl8yMCmNveeoAoBCgp9yJoVSdcMou2vqTI+YkwxWnc1gXXtm/4s/YFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0CO5g22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0CO5g22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334FC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760375993;
	bh=DU59/JDkxgx81PU8NfSHtyxW03DmVSFCNR495Raein0=;
	h=To:Subject:From:Date:From;
	b=U0CO5g22fpcdjoKaFJqxkWlTjYeez7ksMW4thgqD8eRk0mHEC4GJMdgE/khUS+ZnQ
	 iWv4Wo/L1foriUDlTSOCG9vcTzCOAUVSx3Wywkz01Lgt4AqCswajGvUZztlcNkTbE+
	 SY3GH1demt5MCjZYD/Thkh7PyLSMQZ7Qm+RDsqzcJ30+8m+JfbO06x+n+2Mbxu2+aR
	 0jSkgU39vE1EB58gu9WGdzvXrvw/6IqphgO3GXnPo+SNKsBgQMM+3+BbqHDSI7lvcr
	 bJFsmdyGmaVVIOxomKUQkSsDkdb1oM3ZgfGW0TTUjH36/i+0xGAKV9VW1HTJDfir5s
	 ompzNYfpHpLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9204FCCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037599358.17533.9701673139154075247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213f732286078bf84010f1f41f70f47a91cc474f901f55c8d23fe7b578f08ee3
Date: Mon, 13 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760375993
