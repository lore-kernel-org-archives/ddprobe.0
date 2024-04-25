Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6863712BF22
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714089143; cv=none; b=S4S4EWUJ//e4AB41C8VdN8R7HGbc0zUxawGKz3Jna0vvslYWcRs7/mNxcGWgFu1sgiXtuuRLAwki69PXmKT32Lt04rXKLWhLSe8WXe8ZsimIc9njz3U3kOEBkOfxmEaYhDrkJWVMr8w/zU9zbde3zlNgPJl9JFCHuca9cRTsEt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714089143; c=relaxed/simple;
	bh=cb+nFZ63WwLqAXwNbSuupUwc7+YLe/w/Xyg3rjyVOcI=;
	h=To:Subject:From:Message-Id:Date; b=c41kTY5BbtwBlm3TW6Agqtm2VOgDpTjkJVe9WWRMWUsR498wuhUqAYZQFxLcF6WOONl5yyyRVNrRudCFPI7J1LxSgknicdrjjW+OIcNEuBIecjmjYlltdejuXg0CM+5ht+E7T9gKkUrkwqB/PyExtuN+h+DIaixuh1Vt/RCPoEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xf76BI91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xf76BI91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2A7C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714089142;
	bh=cb+nFZ63WwLqAXwNbSuupUwc7+YLe/w/Xyg3rjyVOcI=;
	h=To:Subject:From:Date:From;
	b=Xf76BI91dig1k5lrZIAAd3QA/UHKsRg6XmNuuon9RacDtfXS9jllHXDzLFQpq6PiF
	 Y7MupadVwTxv2prsgaEQy6C+V2Xz83QDwc/YRUVot2ZKJuBk3O8dSKrVdrZUzxL9yu
	 wdVyXcFax9NCvx9PFuuqHahm4MaFmJTjWLdqhXmFsurpTlRt/Tosdqpvlcrz1ci/nP
	 cKWRGty3QFb3hK147pFtgjZkzehpGi3ApaEauBJIqr0ALIAs8PbmPEDe8aoA3EDUB+
	 Y49SsryPGRels8k2W+kCxAKeibOYKMQbjlZpK4Ff89tC855b+dXkrJINgWTUiK+XMV
	 xawC1O9N8hmjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9058C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171408914278.4872.10258877087729599636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8866b330245a6055111aafc230e8ff067e1a198de1ff5b4e45bc5eee81a98b
Date: Thu, 25 Apr 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714089142
