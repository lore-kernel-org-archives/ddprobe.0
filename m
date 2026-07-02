Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFD134E777
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782974314; cv=none; b=MFG2vcVtCUwf0y5USI2ziuInllzzCViqFZR1FAeT2g3wV0aysPzDBHd8v2jaWYhCuP00YgE+lLaqTTaVBvQS3oRCbGM95CpV9qCH+O2TDCfbB7ay2otKQxoj9Ws0vVIv2FO2D78QEelc+PejvJcH5/ZpvFN67QIbh3osVGJyg+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782974314; c=relaxed/simple;
	bh=pd+geL85mJ2lkYJWrRLxNGq8fj7W3peG2MJkCqIiPX8=;
	h=To:Subject:From:Message-Id:Date; b=Rn3QZ58bkRNN52e99cHRi03CpqKnjfOnA7VGE0FRHp0kaLWoFYQPTcQPfFcjXvDDCw4ZnBJF8jUbaDmR4BFfS2OjUpt7FHmR4gDF6Dz3pKVlVZBH515gXqEO0w9797/lShEO5DtCU6M+c+v4T50HZkq5KYcOSF6/7zlqCpEonRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ50h09p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ50h09p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE46AC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782974313;
	bh=pd+geL85mJ2lkYJWrRLxNGq8fj7W3peG2MJkCqIiPX8=;
	h=To:Subject:From:Date:From;
	b=hQ50h09prRRktF+ZeInaWHHMWXImEbE/7HvYViIHkoQwdEcE00b4N0qaakZpaIs5A
	 atm9vDzC4/uGLDdt7vPBdHVWzplVUkeL3e6osNJN4u7AMSDJwhu8474H2AdpGL0hYW
	 P7Dmv7DV/QAZ80guaq/dYyxHAgqIpB3CWLqApTblvZvn3/AGsO1pJOncbjbkCPnZA4
	 hMjOumQwJj06ZJ1Vnllgy1XABIs1hUlwwYP4mRkHvFhJ/HeqliH1+RrwgVfa1RzBKY
	 eeP+xgPsQ+YHTDQDPhbopEU3p0Zic+3hiZFEJD4CNaNMDdVo3/p1WIzANjgh8fbmEU
	 Hj1Knh+ID1+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C2C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297431367.6166.11858510053059252413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8519e54e5b4fdbb5f0479a5341c6634472cd87d933629478fd0dfd7e9a92d6b7
Date: Thu, 02 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782974313
