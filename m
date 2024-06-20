Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684091B29CF
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718903423; cv=none; b=A30xUwFo/ViJUtwfNoMATfG6OGEA8QoWULF4NNRGhN43oBQFblmsduhB5HoYMLNbB/IQjVdhxvoMqc4lfmipHfvQfv3/pxnrLY48gg8wlxNvG4zyyEquNHDWIW6b+YSMBMFlbwY9RFuySspBSde7MZuObuBIQDlUS9rk+wGaeQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718903423; c=relaxed/simple;
	bh=ZBKhs1B498TQxcDXsF9H3uTma9jFxr+ygEfsso8Z9KM=;
	h=To:Subject:From:Message-Id:Date; b=s9zJxY2NyiYB2Jp3iD/qLkaQH9Sif2H7cpNnHkr4/jiSactXbrOdn1jo0srt/OJOYgyzQfDefpNewhF25UQINd7AyHF2n+E3FyLSeR07kZ54He+a4W2GELevUnhcPwRDwJRWyU6sThSQUqNH4Mva54eZKPE0Gxe8/JMOzjVfYVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaPGCg5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaPGCg5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF98BC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718903422;
	bh=ZBKhs1B498TQxcDXsF9H3uTma9jFxr+ygEfsso8Z9KM=;
	h=To:Subject:From:Date:From;
	b=kaPGCg5AHQlxDUJLscWYM3Jd0kz/fFchQkVgr4yv/NcGBDY0ulfZXmVdUVUlTUsrh
	 ROCKCeFQ8Vvq3ymm02U/jPPKlLCblCSjvb0P9f/q78Pwj7ciJwAtp5QtKLKYd/89Xj
	 2JzSx4gBGEHataq/i0IWrMCnUVk81iXXr5THSEZzCWD+74aZ5zykc95mmvW2aZQCP/
	 8c8kgEg/JgETDceMMI3rjhj+fOK9DW6pkQrHVUT51So+k7kSjf1dAqGjAm6P5Om9HZ
	 8mV043BH5a3IRhWl44ZO6rzFA05O3QJjM8SCtOzJUEl/a1ZnMldTIb/bs23A9Kv0GI
	 YTqwObvrpyyGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8188C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890342280.26797.11292891264333699258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e296826f365d5b91a416a866bb4f732757b7c274ecd000cf227da2efe444efe9
Date: Thu, 20 Jun 2024 17:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718903422
