Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6153EC807
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786963834; cv=none; b=lQ2/DEagBhrAZ8P/cEmtSJXzmbpm3sD50LFS+WnppF+SCk7b1s5I1L7puS3YUsC+7s2znXe8NOyubGgKr3491UeqkZMj5w4qcuowIQSWG2+p49RxC79Roiq1dUdYc5bWVLPtkGA/8/Ob9dxdXtAGQQWxiPOMVjGhFyTMbHOLR+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786963834; c=relaxed/simple;
	bh=y5kk+3cTWMycp/wAchiSXsVxfIGf3WN02nQQHMxjJTU=;
	h=To:Subject:From:Message-Id:Date; b=rZdNSHi9qPK05YgIO7RKwCxZyCq2yOXaK7YSXtC/FuRD4qnPsCmypFzjw8gi4/psy58N2q+Ej+ydOetrVTH6+nsa5gCdvr3X4Q0sH3WT0ZTULazADOdtZlq/Cq/ao2TtENZG9yl4SWvrEB2bA7Jv7M7m8uj/4dg3XGH0P04iJg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwX27M8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwX27M8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD953C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786963833;
	bh=y5kk+3cTWMycp/wAchiSXsVxfIGf3WN02nQQHMxjJTU=;
	h=To:Subject:From:Date:From;
	b=JwX27M8qPqYmcp0cS0HKqH3GP9uGJkNRLKdhP+TuTyY1h4SUQ3W4oXRjpD7Md8ead
	 QIXO03Nnn1r/NCs/3zfTgPYGa0UJPP0qNhtCxiESl7goRZF6wL3fmGILkGzXLsU7fK
	 WOxRC8TJygma0poSWAW/0gX3fOI/IWNZGL3RbjluofSG3UNiDyVS8Yy+mZP9axzAI/
	 zU1oyybGIiN6V53COU/7Pcr+rmuEyElKibNWvbc0T1V3+LdVz92GzmffHM8q73msbh
	 sxQ/zabaXrQItG/0Wa+pK6SbQ3zfG97FaT0xxq7ncs2zaHlDZkpUca4A6iJVwYRTt+
	 z/+jdrmFrOUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8527C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696383374.30490.16524830952095450629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a53370fa11ca95dd189fb3d1c2a3c7c9d8b318c89720d062d169e1c786151b
Date: Mon, 17 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786963833
