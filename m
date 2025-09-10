Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266EC3375AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757527795; cv=none; b=eqhD7EyTpZs/a7ga2Htqj4w9I6aMH0g/YO/tXH3kQ4XjaThNPeTVLLcZooevew0ybvaz7bMg3qlDf6jmpKE+qZK08gj2CQoJ863fRJAefYa1Sn8dskpOmysfDoVmYjUKWB8MJC9SsufzGasLoJVNrSvhmHUzsKCBiH1mWSBUa94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757527795; c=relaxed/simple;
	bh=q/iNeoB2sbcnC2Sw4e7YEZXcQRpNT8Z+XV+n9KuNzsQ=;
	h=To:Subject:From:Message-Id:Date; b=Nj7dvDOVlOnLs+asEU8R2IDKOZX6xAhQkeTXDA47i55OLmIzO9LoobVOxCUisbcoTTOpNrwwawZ8AViLJmMub76YfXQrgmO598j8XY5hFWptWu2UqvJG9s1WYPy+YJhLYxzwBWSVmZfYHZy4Vy7S70mdPLX5AQ6MgvbuBYSqmbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YG1FLqrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YG1FLqrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A729AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757527793;
	bh=q/iNeoB2sbcnC2Sw4e7YEZXcQRpNT8Z+XV+n9KuNzsQ=;
	h=To:Subject:From:Date:From;
	b=YG1FLqrFlALGeOS7yCVRXWSSlkw5TAR+zdtwvC+/0B5FD8/RQqSks83HKPDxbqFi7
	 5M3dMNPDgQIh17cDZ3ptY+j7+hhjuXNgFjeJJCQZU2HGCfQgYcdR8fyH8Tl1f4wGVZ
	 RhgGJq5bxdRSUDTxdl8EHx/eNMinX3awcEVfAYvNL++wxbKBbCKymUe1YWinBtQQjN
	 kIAHt95efL3eJfbgme10pupU1XWfMnf67yFQZ1KQftmFAcASxdBZv5tVJDsID0K91G
	 rmIWOoeY7LL8vRNMFEfkCDGRsvbDZVPk0pzheUqAAe4/txGkRFSr/0/xird1RsmfLx
	 B1YzJwU82tJSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96004CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752779360.13910.4401628950288930608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50b2bdbcf9a0925e408e3cc346e9d5b726cf6e451b1eded6a900cbccedf1319
Date: Wed, 10 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757527793
