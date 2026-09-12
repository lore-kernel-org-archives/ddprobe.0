Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56813308F3B
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789223434; cv=none; b=JZcmRfAyE3Gl07ROkznGEQ0La0NbfunPFgJE2Z2KwMWK0NPFZvelmAv+48SDIu3pjHNLJTsEcITC7eTuNm046d8DRP3W3/f7FEH2TwdKOfBKPArviTbW9jSzxwgA5RNctZfHhSU2MKMiZsRm7d4So+lkT69qnwzc9BmqR0t5zbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789223434; c=relaxed/simple;
	bh=uwRR/dPTierbuCnDoanqZ6pwl7eELJYfgFnWftaFU4Y=;
	h=To:Subject:From:Message-Id:Date; b=NHuQFw2nwU5QDbFI6VH1fPDszjjlDKHusGpT49YM2Ots1kGceIjZaw/GgUVI0IzL+gHuZV8nsKtMzlVa3hoedoQWtyjGzV2Kaf2MbDQ3OG9wxIY0ogNaOoXm3ut7vR90gpsrXsWdOMYHi/uQaSl2+1s6RgZWwnN7HSyRtX6O8YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF+KZYa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF+KZYa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF6F1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789223434;
	bh=uwRR/dPTierbuCnDoanqZ6pwl7eELJYfgFnWftaFU4Y=;
	h=To:Subject:From:Date:From;
	b=NF+KZYa9LuIIHQukCRpk4wALhAd7SlXjeOJNE9q/fJKVxWt+91W8FR/6AXZZ5rPHd
	 13JFL/uaUrfwiXRBmzzDPN9Y3M8cfdmQcxDKPWmRRwCvXgFJRc/FvNiBFSgjFCCaLE
	 l+XNo3Y2N/OWFp78T0bTf4+OSLWlZwr0n3xnepWZ5cozV5qmTsB2XNdNJxcOvisJBc
	 1DEmsc2P7AlrFzF6CP3/bEAk9mDEszTKvs+dj4ABEE2xfxKPbYTJfV2Opp4zt/hcSS
	 TWEQAs/KB8ghuL4NX+wbq+c43H64NATPhObPEiqWFMs0cYRNBVKy7glEtIP3shEQgf
	 XwqElOjrWZSzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0179C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922343368.7978.4260846436453872382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5f5565d0ad90b962927dd6cc9daacf0a5322a0736cbd2a6623dcd4dc63412d
Date: Sat, 12 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789223433
