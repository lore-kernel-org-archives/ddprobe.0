Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB0353A88D
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788878434; cv=none; b=cNl1QGDd9wTHtE4tb743i4sO3XIC4VYzKQvSQx4oV7mVR65JPXOZl3YPdh7OFudGYlxAgQHVM3pu41IozsthZapGngJ1WsRN6d15v3CKsEraTPjlClV2ZZKF2y37hKbGaEJj3Z/c8jGh5sLr34R9i3q0RizLOEZwY3UEYU6y4do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788878434; c=relaxed/simple;
	bh=yBHi3uFGn7NRsdoEC8aSNMUtUt66napnV3U5HSW9YqQ=;
	h=To:Subject:From:Message-Id:Date; b=KXkq5wZPoWYvMgUOLCrdTvIJAQdTXPUNLoynQgZx9BmowsW5FbXBYyyAztXxbusrKUPkicLolU1+oMvlgTYabknd4kiOeNHfLH3HKPWku44ntauLHYFqj4zSlvw9gdGO5Bt91baKKrLcFg93shoXMVHL2KR4BC6n0Pz9WQl1qwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kqsxsinp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kqsxsinp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA6EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788878433;
	bh=yBHi3uFGn7NRsdoEC8aSNMUtUt66napnV3U5HSW9YqQ=;
	h=To:Subject:From:Date:From;
	b=KqsxsinpF3mx3EuBt3BlFHCt3InpaAxoTSas1gX+mRifVbpZQZruI6tQwgkCPnDFv
	 EVnF+dLrTw+4P4g7ISC8fIascsKQ+RAA1hTOLbXVMZWzbky/FRtZQFy9047cHYAiSn
	 EgrHTIFquGzBDGCEpm4iW1iDM1diyi//VoLKYZBq0d4AQClXus39TItoWbnAPVehNz
	 zZyZC10wyGXaDwp+rBP20OnFpcv6iydHCV+v70MX2AZYntuY602nhtQuCdwqAtspAZ
	 JjSXPXPZvOuaMCbe75wsnKzQaxqAiYXwq/k6m2teUko/dilJlcJVCoZcP0g85Q0wYP
	 ZcV4B+E5JqaYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99B3C79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887843374.2031.16628400472902088499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e68c6d3e70d3779d55f5499c918961140172c07aba4d5a907254fd4c183cc9
Date: Tue, 08 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788878433
