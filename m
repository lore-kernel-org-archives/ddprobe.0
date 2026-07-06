Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CD42D8385
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783376914; cv=none; b=XldUKAKJ+uBaq1zhlgzaFEFTx5d9I4xMw57+4fM5RRnRJ6F3JiydTAOqu9SbgB3JqdF3k5bn1tpRiGdw/Ijf7m2s5gJAWLM1p8Vq2lNFJ33TKWsU9YkcKlpX5Jj1VbW0WhIoc2mWTsa5rj6ns417dD7/HVv8yMTvMimAeKUK2ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783376914; c=relaxed/simple;
	bh=egjXhg/AUlbd5PqJ03cq5AIpKlcFBkXXIPY2kIrh6Ag=;
	h=To:Subject:From:Message-Id:Date; b=phNIcS3gYXfFV0oxNdHl7wyS4cuF96NKZ+gy5S6q9NbP8fcFcE6iPR5vf7Hw5E+uM+J9no4GsuqxpWMZldlgT2gplwxuyk4L+oGsI6g1AHVazbHh2w4AIJn4p8TK1jEj5/XvAte3zq5LJPJyRBaoYkmTSk43SDNYmoXxwk0NU8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXVIWEzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXVIWEzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAADAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783376913;
	bh=egjXhg/AUlbd5PqJ03cq5AIpKlcFBkXXIPY2kIrh6Ag=;
	h=To:Subject:From:Date:From;
	b=tXVIWEzflaomayMA855Aqg84OdI70/CQ/wo0Y5GYuzFhc9IxIwd5Zlt6FC2lLeLPQ
	 Tkq/j0rjJMlcl7NUuA/h6jhltfOauH2bKZ1Q2CHFAdxOIejE/KgbRfDbhyTtyViu2z
	 M9+yF4AIGQF83bNIUiUetibOCmyIMeCq24YUZkQMDqwJaIs5hoYMTjiFosfoOdV+O5
	 Gasi6ulbaI7qWGglBd/cZsRBuNfoq+kf6QHS5DqnJEnsFUdvtOieNyf+gBE0Hkb2Sf
	 tqUfkp2Budvtu+TUNDGIT+V5i1Z8GSsWoO7cmBpm18Az9gvHJ8ohY+Woab/I2IlUyc
	 LqTUgWHjuAWLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CF2C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337691368.19740.6486350741275138791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faff7fe7a0eab78256addb562ecec03b9e879b5ebfe55b1a5e47bcd289b85d6d
Date: Mon, 06 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783376913
