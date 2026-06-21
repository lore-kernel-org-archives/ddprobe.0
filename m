Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A11E17A2F6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782069994; cv=none; b=FxNdW1pN75KcvEzgTc/uzcphoX83M8f8n4pvgX+yFwCH5MfKgtqyi2a79LS22B25wErRxMO3ttDcKsKyyQM9ZdFZSaxUUDZxuIdKClK6NBevtDYkVZaRZVsvQymFfT2MFAQyG5bes97GNsIb5tNTU9G7SmCYcxXHlHmALBJU9Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782069994; c=relaxed/simple;
	bh=mU7ba6rt9klZXLGB33evgFWJwgOqMyktrB0ueSVk7vo=;
	h=To:Subject:From:Message-Id:Date; b=mN6TAdzwj+dXFpPF49EVZ1YhZKNv3mtOGuX303o732XAt1av3dOqG8De/Zuj2wLYVO9B4ja4Hv5eJPp36aiS7JfFj/Ie/DUS2lfkvNWzBDg8gtVI/A9+uHnEEi1+uuce1K2bCn9SP2eLrAEk3c7ALQMPkIc5Ju8L5sXfdW5yVxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2hnymtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2hnymtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB49C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782069993;
	bh=mU7ba6rt9klZXLGB33evgFWJwgOqMyktrB0ueSVk7vo=;
	h=To:Subject:From:Date:From;
	b=t2hnymtW4tdRhGnyWvoI8yQL+ZlDa18XMAOminFSiXhQiRilxcb/a8NCVX7p+Mq0M
	 xfZg1YQyBjSYDbPNjIPxwbEi30GHmlLRh2LO5L20oTigX/E94I1iWIuptHHOq+74mX
	 5irJDtEbxP/Iqzg2SlnPGY7IZXA7Goo7Snu+KDsMZ97/hEEsqsU3miGvQkZW8Qeg4i
	 JvSns5bOS6c3DZr3W552ArtLGX4jG/6g1H6R6Q6nNdTiIvCfE5SEb8UORYfom1SEQF
	 S2+HY2p1PrjDrLFIyvKKcP9OwEfwov6+TcT/GHBkztfl3U/HuYvWg9ezNtVBXoArRY
	 NTAXQxOGvNFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD855CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206999368.17824.4526421780694175303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8824566fbdde2d08cddbe725d3d454d28bd3154ba72e19f82d5ae2ebbbc5e471
Date: Sun, 21 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782069993
