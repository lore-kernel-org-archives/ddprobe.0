Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AEA346E7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772753694; cv=none; b=HgCOH4trMG5fQbljjr2xZlzeePi/diHyTNaWmYJhUcVOTzCzMU3nsjM5lMUhM53HzSIAdhz8a/XmJZzeV22zg2hWivA+T3LoUe56xva3Fp6c57J8H9ez3sh1f3KH7VnTTtgVf7RoEzRc0Ot4P8uP78wcvjAfl6c1fw5adnVQQcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772753694; c=relaxed/simple;
	bh=dZZal9xLsY3OT+/XJYr5tW2iAkPSfbpyhx7sKxbY78Q=;
	h=To:Subject:From:Message-Id:Date; b=o7AuSGrXNBc7ayNWmBLDdh47m8mbC00ipaSTjt2SlraynzVT3YByApNwDLi9Kn+kX0bz0rcVY0KKH3V3PiP6rtnTpo+DZSlCUWjxPkXr5TmbdAEZJ8IDpiCkQHlVjoNrnXhC0BWPY67Qj2XPMgk5Ay0h8TAY2BIL2xq0Vj9WFSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVIkQuQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVIkQuQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C0C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772753693;
	bh=dZZal9xLsY3OT+/XJYr5tW2iAkPSfbpyhx7sKxbY78Q=;
	h=To:Subject:From:Date:From;
	b=aVIkQuQADPteU9t01x/gqcL7hnluDLYzgx0MpQP1UhP3Vhqioym0IrKZkiiCUWieI
	 WMAKAIZwa2I2DUHzKbIsB0l6ktw2OIckyWMLASIv5wFIpDT6/sysQKFv5jOTkVQfTt
	 AOvewMcqs3+PaqJnNgGUQ8BNVzZSPyLgXqAa9KQ9IX5rtM+iYq5zoZphXXxX7Sn5le
	 vJoURNTCUu3yBIAql1n+x9fAMqZiI500zYeIg+8hmz0SNoxtCus0PImIASrJy8flGZ
	 rP+72cq7kNkJRupbvouIdO4YG76l7pff4apprkQI+jdEosfigccTg9COYxRbXfoTXe
	 E/RG5OgtcydkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937FFF513E7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275369359.20494.285688085676638869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd94d50ca5fb2c9eb41e4a8dea2ec6cc0fa4b0ed1e343a377a2774c47ec0181
Date: Thu, 05 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772753693
