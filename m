Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1C022066
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724508954; cv=none; b=GndfrV5VmfZ/a4WC4PlQkFmpmRU4XlIAZpzFmM1eqLK+FPRkD6SZsBtHmCxCOEjnod3Gfaf3usVuKUEFevEXRcAMAzyqQz1PeOLG9HonEwe9vRzKvIbKPWoLAq5Gg3/ayHnnXkzUxWWKwm6qdksWJoiwrY6AOKThF/slnMLOfLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724508954; c=relaxed/simple;
	bh=kkSgonxBp5uabhVZcORqJrrq5cgwz23bXClBRa7umHA=;
	h=To:Subject:From:Message-Id:Date; b=TTh65xAid+hNuOlQ0aSxtyZfCljr/K7efMMg1SBBXTQ03a/hO9lzy/Yt6Rscm5oSHrXfMNMIoy9TvIKwszOpk+J6/RWkLdBiqKmBYDBt+JfEwgZ4i5MaHno3qCq8MsK4lhdSZ+4AYMpYWP8XRe7JiOFbQwgmhgi8Jhhk7qsmCNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnBaUFs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnBaUFs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7ADC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724508953;
	bh=kkSgonxBp5uabhVZcORqJrrq5cgwz23bXClBRa7umHA=;
	h=To:Subject:From:Date:From;
	b=MnBaUFs2JPBN5YYEXyiowWI1c+PFsW9VTsgMKT/ziYMk+Kyx8XLxLWGO18yZ6+0Tm
	 /Z9wf5tXmANMZg2RJY+ZVfEVpIE4BlPzx2nDU6BDZd8o0trZSJYZb0YV3qmCfYqjUL
	 2rAulZqX/v6yEoalZLj9rQYn/ALahEtmJbblJH7D3nzyxoGmDifqjxfc20AP7Tv8yy
	 79E3t8SfSGc7/mzMG1MRYNFuCX7QfA9GquU4B0x/4JCxlvCTTTF6G9D6zXMlDgaf/2
	 cGO5dP2/jYx4kh+lpay1OYbzwe014MxS8rBsaLI2gf5LJT9wqfcXVLi4KV2pKFJHWV
	 fRJk3LRmYjevA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A593EC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172450895363.10817.14188118004909248341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66520eaa8db15c1981c99d3cec0c51325155f7af43e1ca9a832d5b98827823a9
Date: Sat, 24 Aug 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724508953
