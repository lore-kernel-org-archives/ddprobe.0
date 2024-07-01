Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4910D10A0E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719816863; cv=none; b=Fd1kg8icX+//xXRPvuh6lY1tCXNKr7NBHeC+oKOm8igPmvPT05Gv7jd5U8OjNcKf33ORDR6fVr4isMo63siSrKP9tStjXGF7VS+Boy+k+cF4iAih5flOyia7+GwzAIZ2KNFXNMwUohab8I91Qa7B68mAv9NwpoHBO3M8n/pP4xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719816863; c=relaxed/simple;
	bh=pkx0yBKAp8HL5J7kZoo6MOd1XnURMf8BOeqX55a2/p4=;
	h=To:Subject:From:Message-Id:Date; b=Cu1J8jG3wcPvQ+xF7caC850blyUD4NoNu9MjW13OM+KoUVNRE77xsKCYeFZFgTIVz5dGqoNmUQHpBiM4hFlfu50xk3nFaBgIyYvFIYC9lsC2V8LNOxI8I90RZZOjtTcm7TbLF3rQ3GDAwh0obqTq3PtKubXBxLLlxSTcryWe9PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahi8h9pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahi8h9pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D174AC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719816862;
	bh=pkx0yBKAp8HL5J7kZoo6MOd1XnURMf8BOeqX55a2/p4=;
	h=To:Subject:From:Date:From;
	b=ahi8h9pGWr+jQz/iAXya2M+D05SOHbI0OPNk9QiYwSvwEmK0x5a9C1zvSU9ckogPF
	 5WKIlu+KO85VgqflyGFCJzj/QfEKAmUrVDw77fApe38Vy1q0E8t5C9fm5JbCcGacy7
	 EcYSOFmoJzdKg60i9B37crI3fz6wabrhMDfJS9ryXFC0/fDqSILSH///YmMcRM37QR
	 iHLP/8V/qz7ca6x9tK28dvyffR+ILCHCpYwDJyAjpwCFp2FPxQRHHVLWu0kYpAoedG
	 cLPJRJMfVIbJhhq50iIsifoscEUjwUmZFPodC6u8rQCF2XZn8ts/171pRqgccQo86l
	 i9yVMsvj8EAZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9D5C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981686275.3548.11932384264793657914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce7a875b9f0e27848a308c05e2a46486af10181d6344cf3cd6c7a13377a95bb
Date: Mon, 01 Jul 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719816862
