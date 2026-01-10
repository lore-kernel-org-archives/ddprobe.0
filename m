Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA1D220F2C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768069434; cv=none; b=mlM+Vxu3Y27SKpc/V8PsDbGtnB+Gsh0luuJC2usVTsyCdjUFsFRYGjIqIhxwl07c7TlevU3HhqdV/MNGqtQ1w47YZXtrJzkEy4QFd4hBchS1BS3q5RBO7nA83Me3QXgN0KE9HuL2RwODWp6zUcSW42K0QnYF2cCX7BKuQH1ykug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768069434; c=relaxed/simple;
	bh=nqZXD+CDCpNt6U4q8/trpprR6xoxVNIhDr/GgK9Cjhk=;
	h=To:Subject:From:Message-Id:Date; b=LYcOIn14HvMpUMWwVNFqH96WLco70EpRD4ResCkBuHixgzL3HFZFu15JbpBiMmkaM8W/Wdqn+PUcZJ1NZ7rnSpd/ybgzVAdN/He9e/LiEqV7Ck5mmnaJH7jOM2Hlb4XucYracnn12T8fzel2aQivPxA5LJlDrtrUUq5MIF4u/kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khX3VTiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khX3VTiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C65C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768069433;
	bh=nqZXD+CDCpNt6U4q8/trpprR6xoxVNIhDr/GgK9Cjhk=;
	h=To:Subject:From:Date:From;
	b=khX3VTiHd+aMB/oFoNkWZXUaPGy2KGCNmRo7CwzbL7g+ImXsX6n64e6OGEzfIA9UT
	 hQEN6QI2x4TOHA0KDOou0w14XeMsdqrJpJK3N0HhUUkr00wwudYKfqOy3/3H9jlVf1
	 vWPIdQV+aRtCqL+M8Qj6d9IwMr0RhmRsAIq4dpS0VCg+7jtErlxbWsAEi7dSbMWb/1
	 UUcG6up+SCKoGQ7TBc+2cx8D5FpeMO30oYYnjCnvTY4zBhCittQZGxyMuDoPUZMXqA
	 cfRe3Y/2RGeJGnoSGOAeNK5hihS1nNnj0LIMzYoWRwgWK3Q5ls5+n0hgzfRhFvuNHP
	 mdO73zmPXXtog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9260FD232D3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806943357.30287.12016797067011028673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4940a35d22cb417476ecab1365a5146f7f4ad2498c03377a96c5b6a735f9df9
Date: Sat, 10 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768069433
