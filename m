Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58564180035
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720560983; cv=none; b=dfSg2n8dsuIjYWvvY5+fQDk2Tk5y8k6WQGTlJEhRtr4gmpFW1wj/hI8dwxEx1sJwQ96BdWhCysuq+PEm/ghIaqT0ua3rRepYJQSas1x1a5iUgx4Y1ET3yGAYJoVSekQumJakp4iKN/BYlVT2kVSJzMdnDqIDLWzFLC9cjdbEmZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720560983; c=relaxed/simple;
	bh=oZ7+eV/0/JVGVtYJ2Ow6WCRxpxcz8doVD5qPvd14eY0=;
	h=To:Subject:From:Message-Id:Date; b=CL6mkgsIR6JiW7paITroJg2gBtur70+an2vltDh9q5BBVq9zXEzA2C0umD+pUcoXacIgo0G0guLiMuGcICoOSDr6bA58vSBslnm+nYgD2Qyq/AfGIzJLRy/DrVkTptOLXGKBGl92HKMstX7h3HN1nVlfLRjkcYiK8G4CtC+ZzmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5cSK9Rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5cSK9Rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA96DC32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720560982;
	bh=oZ7+eV/0/JVGVtYJ2Ow6WCRxpxcz8doVD5qPvd14eY0=;
	h=To:Subject:From:Date:From;
	b=J5cSK9Rs6mhjRsAk1iZuOrByPK9CITPDG7Ycc/BJwmUh90Zi5UhhWcMW6Fg08wbBh
	 kW/s65kp5eqEpfL5I3xNxGemeKhRnnIECeR1sBhb7R5R2wVtwpy75hiOMjVihYkcMo
	 CgziEoUDnuWa3Imqv/7W10xCndnNYaJOqcReV8V+ZGkmOd0ReGKl4TSYGDRKr3fdLK
	 Y1Qk0nm9dSNr1eOk1KwVijGs2nkAD4cCCzPYkCxzau2I60Sj+4vC8IknpOcuwfXNeq
	 RhaVqNNZyp757CNPmK6Gobu4hzwloYQ+NFQllzT0AK8P/0SgLg5reKbxHeiv3bjm/M
	 gMu/s4rfG6Nfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB4EC3DA42
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056098277.22400.413956411593837115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae9f2ad7987d581149b88313fbf4f19f82baaa0ff90c88d1c2b22d1bccd6899
Date: Tue, 09 Jul 2024 21:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720560982
