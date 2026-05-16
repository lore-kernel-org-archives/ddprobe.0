Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4811237D115
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778915434; cv=none; b=MK/cS4HoSDE5NBnwEZoCq9ci07DDZlMatTuEgyPmRT7n4EOhd5jiDQ8CZIst80t2yE0S3kHcaMYbQowXqUhHsMTsU5lLutYqH5WbG4UoYUwVjYJxIx8UJrsjiddkV2EzrrPH+Z19EFARBkxzbcjMpL+kStmhYLhz8mB/UZqwi3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778915434; c=relaxed/simple;
	bh=xiZwfAP7mXN44E5ASrOOwad0CqFmUdKLw2ItX+VUPDQ=;
	h=To:Subject:From:Message-Id:Date; b=hWrYqaIh9VAOOk8kezOBkMQ+bFlp9CX9FtV19upAPpMLZzCxj8Ojtb00VeM9rt5EP4zFx99pxbE908xMY2vlVW1prjr/JTVWr9JGdAnTHGkg56tGt6KtpDtGbcoizTkYYd80HIUmwVGC4VFVaF7bZDY0UO/V12MHcJg9hXDDk50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7yjlaX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7yjlaX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D098EC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778915433;
	bh=xiZwfAP7mXN44E5ASrOOwad0CqFmUdKLw2ItX+VUPDQ=;
	h=To:Subject:From:Date:From;
	b=P7yjlaX2DiSewDF/jt2dSkmuaVoA9lyN09Tki3Ju0KsVWdvorF5kftVjwsV2GhSwq
	 txxYO6tMTewkJos2bHN46IAdosmJJY/vvF+GRIlFv7MQzg9W6yMaPrv9d/P9Okikjn
	 3dDDlA4Xcv1A8wLdGxJ3AUF8V0gX+wOLLt84+GXZswuCspcNzzRfW11VFyl/lbEz+9
	 jDvZYfnPkI7XA1T23/uKY/Qn48863AxYHTIhPC3hBYXuq1c7gSeYV3+PcJuzc4gLvx
	 BBkEPcgdvCgUjWKIp/HPawWbHYsgMeo5urbnya8UJZgw3OubK6r/yFm0CPrEpHxtkV
	 NNwaBz9acZmlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA567CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891543375.25636.8719032273262599252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2c0e08ab18b4f7638551041d6b17fd68799163ae36bdea62c36fe2c166b8b8
Date: Sat, 16 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778915433
