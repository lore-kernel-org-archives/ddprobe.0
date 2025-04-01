Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE444690
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743490794; cv=none; b=ncCB29cQd0cn8VY/FNwSqe6Cjlc/ereUAcYh2Bahgzv5PefsX36AIFGBmr36d8U8ra5XHF423cptl7K+/BES9IWHm1ugKnGXa9vE+IUD6Qsw0+UHEvUA6qcjYwEb7RVY+Ir7Ty2IjGZAxQwNyQwddhKx3KmFCjr1zHcjzN0qjsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743490794; c=relaxed/simple;
	bh=KzNkzC6XV15IjBYQwfvWBYn+qSB7yoT72fOOhq6OLww=;
	h=To:Subject:From:Message-Id:Date; b=HzSFNg3SqGu4U5HoIpyby9DvFYwXEuh+F1Odheng8fQswx7B2MuueYv4TWVuohoDndSXGW1jlwkTHRpMQDltjpD708AilXwygptl6nF0Ujzw0fklKGcLvTd5U4GQ7XO3Ppw0wMFbPOhILm92asbZca/leH3ky5qKCkT3hiTr94M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTundz36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTundz36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD31C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743490793;
	bh=KzNkzC6XV15IjBYQwfvWBYn+qSB7yoT72fOOhq6OLww=;
	h=To:Subject:From:Date:From;
	b=nTundz36ARVfr7ttcXTYSBRVSeilV7rPGos/32AaYbZhEMSnJ+aUrVSgFGpmqPafR
	 0VLG0sxq56nzCZH7HT7xehX7CTzAIpoBnjDbN7hgcPni6MhGe1dKjFJ61Iuxp7BqXh
	 oLrnfLgxlUIX5UCo0EcDreSV0hbATJkc6QIWeRPYtyzYPVMN2RkbTlei9wUtSM1kyn
	 DrKa804yGaXHEBJFEyW6wQ8Co1Iq6qvjTUPFJhjC94vX9ELmV/whJQ+Nthc9DVBBH0
	 u8rhsrdUDDoeNhMsr5t/aUFrdG6Tj920HYtQL4RdWYzbHliZSZ8DhumgDdPD+jRibD
	 xvLYjCW1W6+YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD09DC36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349079364.24731.11149224431630766924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6a90886b461f1eee7a07b546aa28c53b040b42d087f0351a7e12c02ac18972
Date: Tue, 01 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743490793
