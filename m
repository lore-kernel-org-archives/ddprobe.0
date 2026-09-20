Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC3E2E266C
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789879834; cv=none; b=tPvGRs0iN/xLIfFGXrjj0AQFlIZAB7ZK08AtaKu33lUWVGxqs0YO03yUivGmxC7Ur7Era0+tjQXrgyKBCyhREfEV8vR1/RZkDW/H/gbGj6k4tjE1Danz+oQndc4ee0d95b8Hy4xKxJbEwZ1gRqE4CMkBPK7OOiLEbGUziuilWg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789879834; c=relaxed/simple;
	bh=tKZuAFLxVZXyLMkCko/xf1jUQNMxrRobfItXvXoTOyM=;
	h=To:Subject:From:Message-Id:Date; b=kwtXC12W5NDKzrdM26mh6kDbf/KQCZ1s6DnS1Osl13PBeLiQgOyt8Iu0bhF2hsYw9qon0eUiG7cHwiBoilVcffJSQ7DXVuVCxUAJh5H2T1F/f+mYxUKKgmt3g+HMf58EGAkVSBh9+q71fWhuAVaIVhQB0ukMeVIqjmPP4OvT3SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtKa5nn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtKa5nn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF07C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789879833;
	bh=tKZuAFLxVZXyLMkCko/xf1jUQNMxrRobfItXvXoTOyM=;
	h=To:Subject:From:Date:From;
	b=AtKa5nn1oyMUSc+krVyrQ0ZrejPlLhXEJM4n9cJnkGJZxG1JBgsMbak2Li9ORxd3W
	 jqfUnusbb/tCnQx4hrYQ46/Gi6lRvo6B0Bkzckq11qqELlxOlz0Wlv4CwPdkJA3bcf
	 DFipIwMqFgQeRj0B8rOS/rGH5mQEo+4lugUWR49MDZUQ/nNKVrE9udW2UlGqfBme8O
	 7NHJzrDENKW/+KF7GXYkFtT67mxYZ+v6gYDD2ahH49w6ihNkMpbyDrXBBxpDxXRD9m
	 qAC2lRIwD9TXKO8ezv0FBi9yb8TDE25CiRZzOjuDC/SQac1A68wGXwsbh4Vuu6vCTh
	 7J6VzQd/sktig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14AC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987983368.16213.12347816864538044593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8c086b8bbe1a0f099eb0f50df6f41b11f7502630d231c22ea34c5ea11d0b0e
Date: Sun, 20 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789879833
