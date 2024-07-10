Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517E718562C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720613183; cv=none; b=XLdpGl0jZffL/2fJiZmWI/hMFwRM57K7cvxhN+QHISeDC+T2ZqSaptPOfqh9RqJg/h8vTbfLeeEeM3Usx1/+m8oY+cJ8Ik9TF9Zj7hXDNbsXgZqyFMJb6V+2U1ZVLNfit1ID2C3l1vinjRsxwDvZHWg/sbsCUILlR98fnnJC/H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720613183; c=relaxed/simple;
	bh=l7b7qUYFCjipVvpPj2bR9AhFK1YByy5Bh17zAH6ebnM=;
	h=To:Subject:From:Message-Id:Date; b=lGecAT6rOraASDZETe6t4VfHx3nOUFe1IKOcZT7HFuTQGJ5wlKGJ4y1TNhIDyrpb7vXbFruWD23hLrfAaqMLha6u5Q08ea4Ri9CUdolaRGSfvIoIQsZE5fQWCRJKLmmm4cXhl8doP3EfTnxuZpLA6UPWDjqUq4/J1tCSx/e9O1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2auOF/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2auOF/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27BBC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720613182;
	bh=l7b7qUYFCjipVvpPj2bR9AhFK1YByy5Bh17zAH6ebnM=;
	h=To:Subject:From:Date:From;
	b=l2auOF/5rNcxCLMhuUfy0p24SIYuArFEp5qypuXxjc7ETKOLu6pCaK/ENEAMUnc9J
	 z9T/DmRk8J1uvuWyoIj2SvmAlwvJjuQVkzthuZ6FWcfHmnUVNOzBq6gocwCJtOOLVi
	 6d1CWumAxN7+dOkzSi1gkHfPct/MMyrBLdDy0Ev5v2aI4oUT4/Uif8ETWvSmbp26vy
	 IahJpAUC/7XnFxQmGwfxUYg6HwZWCr3nFmLbhgkdX9cRMvGfSpnpFS743D50xoeixH
	 nEZQcO03hR43xu9NkAA6LRMt4ZiTB96UU7V1cp/0PzwTNeG+dEj7aEHheiga+CgiY6
	 CYnJ+/i0x1bEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3ECC3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061318277.20245.6167808670744019501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0b6fb1e0904444b6ccb7fc36e635f655e5eb57cc79e902d7e2c8b12fb117c0
Date: Wed, 10 Jul 2024 12:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720613182
