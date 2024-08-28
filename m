Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D97264A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724817954; cv=none; b=Q8euUhSEMAWHjkjmUZiRCJM4B1bMOyM7/XL35QZ4qfSFQiCqGY36nEzPrgaSjlV8GKUp5IzwZX2NgzKaqP942GPYSoRPpPLnYVrhxzoqT73U+X4G8wa4K7G1UmQbbiJbwffOcfNkKUx8WNdxDphfThHZ2bjp8NH2EVZIrceRhnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724817954; c=relaxed/simple;
	bh=ff9d6NfM8SnQockrlBoF+brW03Z33A2SZBCFAYFOH+k=;
	h=To:Subject:From:Message-Id:Date; b=LAs1Rbn5HUNOedWHui9MNEWc6z3DbkgDp1aal9AE8f5qPq7OY9FEifEiZ/awDFP14N7tUsUgFwWMCNFdLj4H6ptFDKprFQZJmlWcT4kE0fLnmLphUHAGo42NAbv48q2J7vXEKl7CvZ5Lml4hZIu6MQp8gz9MTbLlGaDGDlFAwZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feJ7IoVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feJ7IoVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5744C4DE18
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724817953;
	bh=ff9d6NfM8SnQockrlBoF+brW03Z33A2SZBCFAYFOH+k=;
	h=To:Subject:From:Date:From;
	b=feJ7IoVLurSXzI0mVXvvZfeHss6Sp4VqiRLW3M9ojrxAVdvxWYTiOJ4s1WYnAyr2c
	 S9yKckTm2r54abQxjKR7gAHv2ysVM706ldMifDAh1+QljSmlRT/yUdO1024cREqPlP
	 +6UnPGi9GXf+p3+GOPd49qvxA0i5nVCcTHL9X+qzelPxGm++83+YeO6MkuNZXs6GJN
	 Tglme/LMU5HUU2VeCYa9abbyPSG1DjzhD5uVljKJun/xzdrmBjvdxMyhs0kUURXTO9
	 Ubt+FD2P+e6w1+jotSqWwhjgH17Y7FOwgcTUmxuyg+X3EUIUajipXJ3zzynR1n2Urh
	 tcMUmyniMD+qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91921C5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481795358.18621.2806770802782625718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a1378f4098074fe34dbbf577ee2b5948cc24b8605824d9c75f8ef22b4a552a
Date: Wed, 28 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724817953
