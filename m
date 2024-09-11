Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A8C149003
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726086954; cv=none; b=tdl4QOhouMhQ9EBJw9CCnjB3EfmG5634vh9zFCN+8AEZQMs8Qm9dL09CH0laXNbt9Bt6kDlRO0K5BGAXdnvOgSA728+dg1tqxipVmeJ6G+47ba9natHh7GoWYrLntPnerQTCGp5pusc151f8Y+BiAaPR6cUe963upscQUBM7mzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726086954; c=relaxed/simple;
	bh=xmSoXLuLT2IWFhzjuNuswNaeMendN3sHqbMGwEfhOxc=;
	h=To:Subject:From:Message-Id:Date; b=JwbwHlIVSPktnv+Yd9vzemGHSuHcUzRQrtbCxplnwDh4yqUwo7sFyoMsbJynJcHtCDO7X/Qe1qA0/ct8tZmIBZG4xHQ8uMkRWGHlkGQsdL1v8gQHRqPP3E7wFcL4JsQfoaQ/fQgEfCd3EvVIP0TEcoRZa8f8yot/ehxWo5+wWxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBjWY77J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBjWY77J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3673C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726086953;
	bh=xmSoXLuLT2IWFhzjuNuswNaeMendN3sHqbMGwEfhOxc=;
	h=To:Subject:From:Date:From;
	b=KBjWY77J3ZvMuI48Sr0gGVMlHLuFwL3v6MoLuH2bOETCRuw2ekx+cHbDYs3NGIKw4
	 ePoCbAvS8wjfPqbgd2VWi/MafgkhU+e3Yqaa3ACiYe3XLnakj4YnaiNl0WR5XB1VrU
	 cWM+PVXFTHBWxQyA4z9KU7C2KWOEyE/kos1vzA+LinxeYlGQlswbsAQBMaXRG49X0J
	 gzRt8mQo4ET2c9oYfFpy5cyk3txHmh0m0TTtj6DQ7iCwRkvf/W5XwI4m5gZbWPvIVR
	 5sMCwfbxbwXjDiMaiiORY6nomKDZBDEdd4jNYvzgTPvSBYbiVtCb2nb4SEEdLTiWf0
	 JJK4J8wF1LllQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F23EE57D4
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172608695362.24406.10461448090970049739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b93557b9009f890b9d6d24a3444f322f1e2d30162dd0cb358dd64c9cab31c50
Date: Wed, 11 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726086953
