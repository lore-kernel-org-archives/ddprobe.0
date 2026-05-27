Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFBA1A08AF
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779864754; cv=none; b=pRJgrUWXnEiy79QNA+9S69YzZsMNVDlfKQ5B4mpS1Jj7gwSBU+lYkB/pSZ9BRJyLS3ACysj1TsdoemAJbI/MLl4NhwIjO9a2vzXI2dl+1IZXdzWZ/GEnHvbvo9OreGwvxCVc5nw4ZlTRE9ShrZP6Y7XNEBu0f69YrnWZ0AUR5vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779864754; c=relaxed/simple;
	bh=shUoRoUf8lEQW6tyF6ooycqV/VaSqmAusz/GU0xRpGY=;
	h=To:Subject:From:Message-Id:Date; b=oeFPY9B0u/1L3y7h6SPIpsPLo0hfZYxEOHu9VVdObQwsqM7FwMH3nxPRB7y08mov1yRZbcHC/0eDLSIT7qR0ZF4dUP2lbL0xHz2MPzRyWoX+bowm13inSjLwal7j2FKZuwzN73/P/O0NJNWoMmKM6dooFf+wmrwIUZED+iqTJ/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIGH6G6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIGH6G6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9729C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779864753;
	bh=shUoRoUf8lEQW6tyF6ooycqV/VaSqmAusz/GU0xRpGY=;
	h=To:Subject:From:Date:From;
	b=cIGH6G6VOchKMFt9JJ0RMwvYiTmU6J11UHEdKBTWos9DZkc9U3YUT9VIIxDMM1FLT
	 8cuF0qIbzK/HFklTzGIxr+TgDfWhOTMot/KL0c00JC2M+FKUZWjnuUISZXRjiKT0/Y
	 AI9h3JG+7rReRkEAgWfRnoPkLX/WcvExEKmuJj9qOnl0SR5SOEwKA66tEGzTfyK2bn
	 aslV7DOvI7t/wqx9+5Izlmj/hEfwDBxrjfxt+6LF1Id7utEsXs5WiRjHNgxyt0Yen0
	 pNq3j1k3zffTHgLoJISTc2Qq1yK25LOon/V5wHjA5ppieya6eIMzVXe6CZyG7Souna
	 WeySmHJ4mV3wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC616CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 06:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986475368.3564.13430195687244209890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c4ef91ede60ac711bab45467fbc2e9e47bf18fef9e0af265086ed0241bce7f
Date: Wed, 27 May 2026 06:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779864753
