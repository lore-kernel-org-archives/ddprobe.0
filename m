Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB092512F1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759304994; cv=none; b=nyVA97Sxqm+Dxe9AFm5sntRJYtnYlkOvP1zsmOut//lctcaBCtdFHABPI9SB5UyhVmmWA+Vu7v/hxk9gCrmNwb6MdIBvyqOgUGeYaIiCynPDgICDxdpW4UWPmW7HgH6HzxEUtXvDYn65Kxy1qLT6AJLq6KO38gZtimBzOwITd8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759304994; c=relaxed/simple;
	bh=vC0c8PA9LSZuDgdghDCmfSkgWDvAXu7GPLfArTrWXf4=;
	h=To:Subject:From:Message-Id:Date; b=bMZeoFE8D5mION4wmXhkRavcFSszWZYI2FY1bGzW6Z45N45ccbjuSF6+zgAmfTHk03+yK5qPU0ggBqV1e0FZ5KfjX2aPrpEoa/GBYMiXUdh1fhrWubKqxhlzmSb7b7T8vuC/mpTmkZ5NqrXjylL88O69HQWDbP7Zt17ISJ9wHvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kplTF/TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kplTF/TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1589C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759304993;
	bh=vC0c8PA9LSZuDgdghDCmfSkgWDvAXu7GPLfArTrWXf4=;
	h=To:Subject:From:Date:From;
	b=kplTF/TQrc3xBmJLQD6Y/HCg+C7XEGAISWf5d2YZBdOCbqLMrHrqjgtTXuwxw0lnk
	 pW4MVmEJWBC3toH/KgfXQ4tvJFuPiDQnhiC/vaGmAiXj0NQx5smEztrgxSXXGsVfOu
	 mrnR1EnoOxTFOAScYb5vItpA3c8sl3GJ/rqdHnKYDciXfmZHvP4h85iuAheg0V9mYY
	 GfSsOl/lagmUQ0DXKZoYUfZB7SDnmAfifdOu/9Wgp0NLil+Qp9YobZ1MENB8YS9/E8
	 7Dh/RgxDnNH+zrgIRvwR7UHmYkcTBsTVTQPU87R6FEr3s6ubuM8I+vHZXXs82R8P53
	 cx6aEiyx8Qh0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D3FCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930499363.20645.2140542936266975109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7e6d612199bdc9c4ef1cc4992ae8312a3edd38ca2415025c0e2c7864422659
Date: Wed, 01 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759304993
