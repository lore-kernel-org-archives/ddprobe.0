Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A94E556
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717031063; cv=none; b=KOOvo+leElnLVtrX0Brwg5NpfQvhzXBKGNuQegvjHTkJtxVs0sNLLS1KG4m5iwzlBuyAvlSytvmtDESyXck9H+NUr5nUtL1gMwjpcXxdBXejRc0z9t1mBcIKSyLjFkYXN3l/TfLuMm6mLd/1rQ2kEtzSf0zKYY3Zc87X8U9/h/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717031063; c=relaxed/simple;
	bh=Xdkdt+OgyX7TkSjh+3S1gjHKv8t49/tRdVSpN/JQNJQ=;
	h=To:Subject:From:Message-Id:Date; b=VwC/FDY9rzNzzfIJ4mM2DbX7xPBQAUu9rmnsk0b61r1Z4m6GDNukoxgkp0EvwwAsRCyOAARZwTD2LtNP9cnrkGs2zw3o+JZTlCfeDHmMcUtabdwHHGC/MorCxNcHMRaM55anjANg90rc9YFm6fHl4YheH07hMutxL5UNAoYiFbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpcuvyoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpcuvyoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65D6C113CC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717031062;
	bh=Xdkdt+OgyX7TkSjh+3S1gjHKv8t49/tRdVSpN/JQNJQ=;
	h=To:Subject:From:Date:From;
	b=qpcuvyoZBeY+lfcCeSPakIJb1Tx/ry1QgO6Jqn2PWh7X0/WfgoyjMi8ChR8mk4Tqc
	 nYLG5cjYvLQL0DLmaNqNq0MYkcGu4OqEQyBiwgN6Oqe6DxNYbnhXtCUmK+WnIPTe3+
	 gUQollL2UrA7O1Rf/sY2Ro3R9G8OdjSafpYbx8PXgDQi4/qlUKvekXf7qnuM/+6xvr
	 5jHzt881fsodr0/68vKsoFAz4yNyWxY8diIa4TH+gwt4DWiQ73KmebatYMFth4fnqk
	 UYTSAb057x0o+wmc16OOU25cMjPX4zGE31tJv3b873F+PsLcGAmQZ28rVeVowUeEIQ
	 6jsntmKLAcFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF405C25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703106277.17035.17047127801863284078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2f05ad8837be7114674e93a19e7ea358a0447e89311470adaccb80411d96a8
Date: Thu, 30 May 2024 01:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717031062
