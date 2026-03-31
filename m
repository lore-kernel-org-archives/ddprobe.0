Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073AC2C1593
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774936494; cv=none; b=bomJxzJ/Bpmjs14Ivcp2aSqyBb8Gc5wNAAyKsDLuO2lN2v3ANUOSZ8T1J/url7Kw5HeDZu8mF0pQ0rIB0S4/yPr7lTQSOxaC5CGBBIqzDKWwOBFpJYTewVPLq3xMDBN6kxAHP0x2l1y5oEnfrCeF3UOceGV9d9BIb+pyUdSC4GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774936494; c=relaxed/simple;
	bh=ZT93EJHYDax7sZ/rekHCzQZI9F18Z8zu8N7C03bHCD0=;
	h=To:Subject:From:Message-Id:Date; b=WnJQNhl+HCJ3Xzi0ovoFUMFTStlzkL3geX9VE+/D3sa6FilxIN0+ZO4BASPKmdWzBQee5bTOM3UYr8j1CqvOneST2KC1qQLiSLL6LisxEoMt6lDymlWVMDQDBTVlzOJt3k+433RwYGvxdz7Hy8EWsVnHE4CjPmNXgZ59zsQlKvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoO3rOCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoO3rOCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5047C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774936493;
	bh=ZT93EJHYDax7sZ/rekHCzQZI9F18Z8zu8N7C03bHCD0=;
	h=To:Subject:From:Date:From;
	b=EoO3rOCub0rmlElf8Ys88cs1YDtJHHX7KU7lKxgVAXcEE9PlUSrQFEZ71ll4qgy+a
	 YnFHYstJpUtVRI8qX6f1gKoATXLtQ/JjbxucoU0lP+wXVzvuDfido9ubz4Lo33fSER
	 ypJic6jDu+nehxQgtI8/u3kpLswYp+KMFSBtWUNf+qSdfN8d6XQyh1tRRm08WABdU1
	 QX/kpzg+IS8Xp2Rw+WcNE2t6+/X4onq50+bctC4Z5n26NGHEnB4MmQqIH4MGk1RqXQ
	 321fjc5w3/LvNa+kcAUnPh77WXeok6xizGdiQfzUoVV1ghhP3kQYaQvaXF7LSQ9q+N
	 OoySdtBPzxzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD7FF60C2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493649358.30977.18379925453911063718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9d9cacf9b7aaf592dcca2561d5ee7f94184723eb877ac76c7b8a2a78cc56fe
Date: Tue, 31 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774936493
