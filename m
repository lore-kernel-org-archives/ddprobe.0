Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148201E520E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750602594; cv=none; b=NvM+ZpTOnHsuXYC11LzU7droqdoRueH8ouhtb38uVB+BS6YDRBjXAfpnBA2d6slPlXPTb1dnsLGvvTI5oabMufPoowL9ayC9LlNY+qHPpalJmOC9DGB6W+qfk84MOnreXkOYSDAzNWhgL4eVKxD1Y09dKf9/P1g2ajmkYTAUKtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750602594; c=relaxed/simple;
	bh=ZVSI/o5a3AGIUaA/ijM4vEFNToaeRiBcgYO8WWz7IBg=;
	h=To:Subject:From:Message-Id:Date; b=FxSgMOl0tcHTPI++wgPQHENPGmgnSibScbc0RgHibsXHopjxOqFIABfD8s9DR8QMxQ6UIK8lvuuAohZrf2NE23g6+MbaZPaDZhFTsV7Fe+HtlMyYpztTlRu6lfJfI8WFbq0wke/kG8X2SRXOMMetltofFu4ip+sgafuVw7MHzIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOlyTmUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOlyTmUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47ECC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750602593;
	bh=ZVSI/o5a3AGIUaA/ijM4vEFNToaeRiBcgYO8WWz7IBg=;
	h=To:Subject:From:Date:From;
	b=iOlyTmUbqZXIWl3f8iCElBwMG2aii6X6fIkfaakxoTas0A5w4mR6pI9C5G9Aiqr1H
	 JIwp7kIPaiopT3U5Mr3jZvnyuGtNjTnHqoQ7OjNoUV9sxq9TEXcmZIkyls3dDJpVsa
	 ybZab86i+xdEaKo8VbID4tmRWJqBjWEdiei0dO1qKDzNlCdcDjxgXTDN4dbz9u81wW
	 o985tmH2RO8yyS6hC6AF6u5fvcygeZk2ifFIU6VeYACWZ3S1Nrk29bEfYdi7beZBls
	 NWFchL0o3+i6Awwk7grdy7KlJW1gk6lGxFlVsSDZd9RsojVdUlXtTp1CF+u/Zvb1J9
	 x0ugtWcgIznaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9269AC77B7F
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060259357.30068.3810845093856399142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7488c6f0b1935cb1e552e7317237ed41b3a2ed3f4444c15910544eb4768b97
Date: Sun, 22 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750602593
