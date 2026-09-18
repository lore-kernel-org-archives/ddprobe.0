Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54BA25B0BE
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789773634; cv=none; b=lBmU4zm08PcAeF2uZ2mKYWFontu78bXpvANVhHdApKnrw8ciLlJph/tGcMB147DFTL4mtlIxyjbFkmL/SaZ8WppakC9tRrs9SB+14FCaTlzvWW2OFIrkrEig7qW8sQOuYcNv9IPwQgj/9BHvxhE0zIeuzEupkzwGEVXDyrT/Mx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789773634; c=relaxed/simple;
	bh=YTVCzrK91Gcd1e3rjSfMMS5cDOBgApobW00roecItZM=;
	h=To:Subject:From:Message-Id:Date; b=VrqINAoVPoZIx+FB+Dscb/mtQp8IQGlnXkbIAdubMl3H7LqYKNhpzQX7Icmq7NO4PmhTNbh7ACmyjYAMP66d3IlrZbAoXFVkNfQ3Wlm7MB5vDn0MAxHG/Fe+73vNFvbfXtZBN0H2kkJpotZYeNXxfcAf/Mw1oSC2HM2DBu5vX+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVYhSj/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVYhSj/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49CBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789773633;
	bh=YTVCzrK91Gcd1e3rjSfMMS5cDOBgApobW00roecItZM=;
	h=To:Subject:From:Date:From;
	b=SVYhSj/MZQBuNsS/cARaZUmiyxnU74LaT0ClnEXJ/3puZx58ZHa9zR9XflkAVaJys
	 4uZ8qNgtMbHbivKXsQ05m0DzzDlKalEAPLmym9SXHam44Ia4oMs9fTQ7X1B6CsnRK7
	 fGWgblUSNhLGusZ/Xf7cufVywv7Xg4C+GK+cgFk9xVJpYbc7ahhJa5Jv6zjPGaVJGm
	 dWVjAR26oafl/l4JrXtqUc/iQShkRtklbWCP/kZUguAYuA+VNZfIN//iHKRCcp9nDv
	 dsAfO7XDJ0tt7YpJF6Ar5fjWl5ECNF6nZrkeCDgoo5ucP0JZtcOz6+O3PgcC+DYd59
	 gXtkyKQcbzTNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2DEC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977363368.9750.12964601841012713859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc75d0af09b6f9975a58b906bc520b4f09dfa79f4c813955cafc62954106402
Date: Fri, 18 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789773633
