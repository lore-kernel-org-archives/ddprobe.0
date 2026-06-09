Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C3338B123
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781025334; cv=none; b=n7jl2X3ARXhwJaYF8YZ8zrZpy/lcg4NeFpfZQtZUo0v+TiIXmSSzOYEy+mm8AkXz2HpdboB46+IhR3s8K9//U0rpDUgd3VzCPtkJBlczTmNDLDlRMsz3Aze0sH5KE8XuWyB1xPTQYKUunbCwE7tR6tjtI/lYeZXSfYciGl30rWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781025334; c=relaxed/simple;
	bh=f2vthGri7iloLvW6ZKbhzHmBuC016uCyFv0Gp7KiMuA=;
	h=To:Subject:From:Message-Id:Date; b=OA8MnZIKKqTxYFuJXZDryQTqaFwr9xYBucD8GJbALkOCwNdHH2soL2iH9JtRvdmALXa9JLvjgEqIzOf2FcGKLhlAi1aztV/9uCcDS2a7io2lngeem8mATnIZmp0iUCM7OyugwkKHECnX/+ruJ8aCoXFBoFgzo9afhE4lYuWTpJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bq56AAs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bq56AAs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC23C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781025333;
	bh=f2vthGri7iloLvW6ZKbhzHmBuC016uCyFv0Gp7KiMuA=;
	h=To:Subject:From:Date:From;
	b=bq56AAs4uBLPAPfanKtiBzkr7/lMFzp+okS5sCoJRTQzFhUpETh2gCQJ2PXxatdFC
	 MBO6D703nAoz93goIG8+YD0EynX7MGcq09YqpCUhMZG8WQI9TgapyUIxZijkNqF0wi
	 aRwyZ40ZGsnXqGI3duYhJ5UFTARQYE6eRQuZnQKHzInXxQAh7lvvj3iz57igepg8rd
	 nMveUSX8z+vYNvQ/drKWwqyLWpUBsBt1JOXdGJwGDOnFenNtjKwVkEeIlwTyMAh/I6
	 WSw3kuHqzwr86vFJrdDJ5PVykKyVxrybAyXbJXYrKmsgLK45KNsk4Dzwvls9YRhZvf
	 c2d3h2R7/8VDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF674CD8CB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102533376.823.17852141603328420563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6861c59c0b6df09ba390d442aa5da1ab9b8f291e8831dac3fd02cc18453adf
Date: Tue, 09 Jun 2026 17:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781025333
