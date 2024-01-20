Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADF8414007
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705785496; cv=none; b=G+/A9Rgft7VPBnuiURtNabNBv+JsoOAdbY8AuJoQNOAHiIbON/37WxcH21yAxTQQmfpUOWe/QtHTsjbYw0w5xmQo+km37p+AickJWYwQINl3EwWaL2YUg+Dca+bHpzLbbleec4miZnOpFq73fl8up6nk9V2yUxDh36BowYmEYl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705785496; c=relaxed/simple;
	bh=DmQQBmM2T3fE3ZtrJhQSpuojJNeo9GUiowhu+Sst5vA=;
	h=To:Subject:From:Message-Id:Date; b=ojvVwzWQGoqBLcE/07+DIOKc88VqLLZAjW/QSlMx8YmLOmSNPONEjWiK8jy6fUFIcig1nhZj9G3Z6mSOgiu9Oh4Nd7Suu41I6yOxa9hCFf/k1AXRjp0qZRVdNwEHDe/90rNTNwaYVTt0+1p0lQYIiqXoi/NtilhUDzCSyKWR510=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqr0ksnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqr0ksnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8B3C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705785496;
	bh=DmQQBmM2T3fE3ZtrJhQSpuojJNeo9GUiowhu+Sst5vA=;
	h=To:Subject:From:Date:From;
	b=Dqr0ksnY8+8T9YutelNmUyoHucuCAvLvqdqpcCSA/0PQNkWX+/hq7S2zFtn1uyOxT
	 veDGvNauDpPCAClAAiLF1pMkFGtTZsZw5LELbdaePaczKGQT36vg9a66UYo4VfqvEn
	 z0hf1ta8yrFjPcJmvgEDCIU2Gcg/O9Rdi2vG42vLwcZlGNYmjYB4p9idCcWo6dQ9A/
	 RbaWMbAPJq5ExbTrvNGPm/4BL86WX4Iyc7MHu9eYmwIHsQQskyzOZDL81UlIioo4tN
	 kxqxY4mz7rnrnGnFRWhmQu3AMtSOTOAuzMWHQSNtFyFBPThp7BnChXog1UHIebwFL9
	 DCI3sfJi6X1ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FCE5C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170578549636.6891.6449516780902636271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a74fb21483a7abea1e763ee27eff91b409399b09caca2960403cb460957e06
Date: Sat, 20 Jan 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705785496
