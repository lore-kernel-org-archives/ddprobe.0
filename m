Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EFAF3B19AF
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790363434; cv=none; b=VqRid7vbd6o2knlBef0q+e86c6nbdWNJGNqfE7vx2+K+F5aYK2wssWd39mdqLRXHDIslfwaBIWBBj+oJyrEsOyCFnhjcbp9rxYwBjWmH2clQzES4dN43Xm0AK1IpIU/7b25DMiQWa5UXlRzY6UMQdAGKnb/Fg+SIJJ6UIgxw4ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790363434; c=relaxed/simple;
	bh=muaI9jLmM64rvR4PlmJwzU5+ph59G3LnN9rLzwcj8TM=;
	h=To:Subject:From:Message-Id:Date; b=fNqLPQ+ky7fjnbFL+gPcMlw4UjZp9uDJi1mx0C7JzAffwD2TuSM8Tuc3dra0/bI2UZZ3QXD7KMfxIewE63ayfeXjasF2dqQnkxGD76BhTIahTcykI77RgNHPinUWXuLbn8alg6XgnLnUKI4Ci1bNVMA5eL/GiBfa2VQnoMDI+sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uttNLq91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uttNLq91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 294CBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790363434;
	bh=muaI9jLmM64rvR4PlmJwzU5+ph59G3LnN9rLzwcj8TM=;
	h=To:Subject:From:Date:From;
	b=uttNLq91w3Ky6zBRqFsO0j6zU138RKyrGQuej7GxtMvKWoZRR/PKOBLlI7rw4zBNa
	 Oh6tDpLlOeCJnscICDu1HIxd4AebBhOwSo6PWN32IoXfJlkFBGJZXZ3h1cL6PrwT6L
	 YFLLFAnPcWAlEZu7hyBJ5hhair5e1kX8jEw77ZzYhiWXeY8Xi8LlnsMT7lbUbjxo53
	 e1Ijt31byzBofykvAdtlFh8VXXAGkVHIw1JtjPnrQaNTOMxzVCwpb65BAbS3hC4wqx
	 +O5dA9h/GRETwJhjan9I4Ksqolk2neAbYKZL0GnjHdvVvgjx4HmpNi+ROP//sQdq0k
	 a0s/oUmhAbNRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D35DEC98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036343381.2251.9898615677147783759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6746a00f37744184eea22b8bed809f21a9e74216c689a61a43e2fa3fd07fb2
Date: Fri, 25 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790363433
