Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081F510E3
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767485634; cv=none; b=kIUDHQj/ZcF0CW/E/+/qP26Tz5zP8xiyxIvnr145cZcE7YvWGpx7uVK311oAOCxOTq/Uj5Pez7c+dRIN1sMipgNMr0U0wT99JHYDwISo6lO7FQvUdmYS+mw0Qn4YTxC3yrBF5WCGDCbKiDAd61nmthPHY3Oy2LuZ7qh7ttOotuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767485634; c=relaxed/simple;
	bh=XtHP5G7kkncPGeAu0do+kUk3HkyVGy6GOv1UE43GAHY=;
	h=To:Subject:From:Message-Id:Date; b=I/rnsecX+UrfcyFONFnGHI0D9JDSJUBkyoldaNX830TYGj5PP6kBaMpEgk9Lkq9OAVS3l9FwXMi/cHupeR78M1v4Mr8ihVQlTIpvg8TrSD+DG+MBRmE0ba2Cmk9OTRaoU3WMJoZ5+HOPe5fa3qKlFGV1VJ6aW5rDASF08KX7wxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKrLxud0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKrLxud0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A573BC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767485633;
	bh=XtHP5G7kkncPGeAu0do+kUk3HkyVGy6GOv1UE43GAHY=;
	h=To:Subject:From:Date:From;
	b=HKrLxud0z+Fr/Ab3lu2Iv8JLEy91RTnxbpfC7Z7vgaI5L9lmyq9F8KqCrQwhG+FF1
	 fKYMuuy+rGo3y7hUFgCi48aPRd+BU27SqPncWldt/E83KoJqqprdV7OohxXtofcHY0
	 DCQhxB0O0Acy/ePUm5NmWBQ7p2k8jv8AKSEfA4febBalsxd/JhNFFdRRvs1uTy2xCB
	 9pT/X/CPNLzZQbkZkcgTsK2FUvjsaZ8xn4vXYSfgCkUkcIT6lgfswEG2V9lSKBqhY4
	 qYFubKMNsqtnTPUKWucYBKGDER9PPcBI7yjAM+3LL7iFegp3A0OnoNF2lT8slpXQPi
	 g9uIOu6PRyn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91978C2A060
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748563357.20450.18430794433177615583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf4653454aa3a409eaafe67d4b38f61c82c33c957d7e920d09937e6f8b5732d
Date: Sun, 04 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767485633
