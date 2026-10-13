Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D283EB11C
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791875434; cv=none; b=YRxLbKUazJy01dqo2yPbAiWa0y9Vt3skOwA6IcNp0DodN/OPCtOjcJ/fklKRqX/l/2T1tfJEXWRb6J94NIDdJsNRDwQfpZr8RFWJiqsoSJaKR7EQbDc65hN23nlx3kdcmiqekpG0BT6FpdIPdOxoHNnzdNRqT87fPXfIrnwvWJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791875434; c=relaxed/simple;
	bh=BSQZgl51SP+1JTEn6g7LfyhNXXLVUkgGzg9NtgSF5Rw=;
	h=To:Subject:From:Message-Id:Date; b=GNkYVPNF9kw3mhlKVj08tZdmfG52C5y1sNqHyRnHKI4T3hkq1byYUJp88TsGEHP9mTe2gnhslpclIg0qzwCwY2rcQBV+IgfT7sb428nA324RR/6S6fJaAflkB8ee/lbnk/7Bbry8CmYYN47yva4/MWkcfuCmAasucOzEoTwMF+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rhbos89/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rhbos89/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DB0C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791875433;
	bh=BSQZgl51SP+1JTEn6g7LfyhNXXLVUkgGzg9NtgSF5Rw=;
	h=To:Subject:From:Date:From;
	b=Rhbos89/sFZ6htTpJxX7yS0f4pooqcpLuaO3IZnweVY3nTmgbamaPaCVQzcbVKDLk
	 xuPfNqm4CRswUOZrHBsAM3ZmMwsuqIOnvrJoE+PnP62CpJEZJ27vifo6GKmIXE1HUM
	 +CBxilInRBeL/U9hGrydjRGNiMNMpmxJpF90quWj1wLxbRNvJ1i53nHhYpgOZCU3JZ
	 QeUBTANYylPrk06eVKvMoj/D8VWnMyapg2ze6B65hSwpQs9AgdU7bmgoCbf9PIFJIV
	 D3A9obFaVXzOCkTiM98V2hWtWbHzCOWZhSJhhBAhnKDzqnlzxfKp8DJgRxVS14Rthy
	 uHCjgJReVxlLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27DDCC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187543370.18227.3122572756692761198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d77e8990767dc8540d4b1abaa5a3ee7ceeb740798b88cdaea208ec80ff3c4dc5
Date: Tue, 13 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791875433
