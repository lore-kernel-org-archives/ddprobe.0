Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179211487E9
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755547794; cv=none; b=JV/dUYAlNFavx30nzswV+IO27VacmHwkPtJi7KVA9jnMegag5mrRETTqnqrtoxBbcrnb05CpJaQRP84X1rbawzQeele0kE6vrmRYqjor6wT3ElsN6aG0bL7OacP5+OyGNEFXUHid4Jwywf/Ya1WqI1cnNOlU/lteRLSGV25tMwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755547794; c=relaxed/simple;
	bh=YO0nt3OVzPegG9hUTeR6HM3b7W6VaPEM4bKxPJSvh1Q=;
	h=To:Subject:From:Message-Id:Date; b=DrSe7UDsBQ2euYysjZVvplbgUrSkPW/7bvc2RSKAkzaBFp8Mtyns+ydJC2VnsIbhs5Z5W9Ivzi5E1EBPwHTcyPrjW4Wu/Yn6yukr2bLFUUP40QgpfejwuKnfBkIW2jwmV0c0bc24Ro9erT1Fjpc+dGmRZjAG1gJIjUW1XFViWII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQwC19aH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQwC19aH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14B8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755547793;
	bh=YO0nt3OVzPegG9hUTeR6HM3b7W6VaPEM4bKxPJSvh1Q=;
	h=To:Subject:From:Date:From;
	b=YQwC19aHinaZX1VjbImRCTiXkvKLbyWD8BVGMr6qmQZJYgy3JwNz88bJ9QzL6UGpb
	 us7vVYXtfVjN0jrk7kVwFjAT2qJzGDevvUR795TPf8sLRixklNph+cg6R0OVEf9Fw+
	 7XzlTbMDexYdnJ29ib12OEs4Ls/lpO7cEqn9EJK/Ftr46azbuUI/YHlzwwCLimGzcE
	 PU9ibd7nWqkfc2EMSvcEcn+LEvszJop1f/Gu9loKlCp3ebe0ol69CWkOYZCGGbLSdR
	 1J0jtFEPWJyfRe22gG1w+UBGOQ0O9+3ebc0cIASrt1a/pGzC7ejXwf0SklLr26WkbT
	 T7dDI3AchC2ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1FCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554779358.8846.16079066407627305496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc850f48464f5d9907f54c34978b54971bb87f2d8674635c5b47d9375446751e
Date: Mon, 18 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755547793
