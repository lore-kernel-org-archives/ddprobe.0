Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA232628C
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755955794; cv=none; b=mxmFd7gO82uDKfMHlzjHPDCgRxBQgFU6CX21b9s4tfn3eFWnzGuHTAw2yD3CtlTSL4x8OW/TRfqjXoHlqY08HILf1tx4l+9RNVqbmOgBz6s+4ZckQb2hkjSD8Oik66QXvfUnaMKsVMismoWmE+8WRbV8rzys9dcjsZI8G0UafBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755955794; c=relaxed/simple;
	bh=BC3Ve1tIBcsOU5PcotGlWRUt0K/CWTy7/5FVb97LypM=;
	h=To:Subject:From:Message-Id:Date; b=fph/PmyRmYDjFjNNO2OaeUExWwtA9Gz8EXjyBRPudnZO+fKpy94nBf4xeskqpZW2nT0LEw5YqrMn8fZYGjUBm7qhIySkY31iMDppeYfJR9rByGTG4DxvNsh7qfHTYYmOuCynkptZ7ZjKESSGuYv3+ZrXJhJ3bqZByhztwOfcAMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZMQ8h55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZMQ8h55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59BBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755955793;
	bh=BC3Ve1tIBcsOU5PcotGlWRUt0K/CWTy7/5FVb97LypM=;
	h=To:Subject:From:Date:From;
	b=cZMQ8h556lFovqS7gqCf4CWisJfq2KhmhjrPm7N4KI+NiscSacWW1wW4HC5zYav3I
	 z/9w3W2sFo/9zLJlFxW+YCoLteKIzPn7S87hsRMZ3NAgOb2o/1EG61gfbMZa3Ef6Js
	 kdoRqtyLNUZCtwAM0pzL7Z73k37Iyi0V5FNT00sK27Z8E0hcUWcQyTVaHwsiIe2Hy1
	 2c3f3xLXpF8RTP6JKpBnb+GCDazrNAlvbj0DUynOvTWADcsZME2mZDhfasI9VU8ffS
	 f25VFmDDOMJXfrnJi4ggRh2GGKiLwHgFOSzHDCSiGDwN4g9Yy0QQX2Fzzzg2OS8Da4
	 vuJ3inRtHgRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBDCA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595579357.1599.10369051863326031793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc5684897d6f0f976918d99c69bd188202668ce02c27f3283de70246c517f27
Date: Sat, 23 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755955793
