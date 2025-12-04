Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342BE185B48
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764830574; cv=none; b=ZYP0C8xUhy7tJhejjDz3pFIphNBHPsTunTm3pvf6buOtMGsMI9eWn1Wu909iOE+Ty7gvwqiXC0KSLA9qrl2V9jE2rTQNkIeQyWew3zcKj9Nd3mK740JmUUbP+be/M+Vv0tU+zxxJb2zyjOZT5WorBfk6BZlDtREipN5hRgtNHq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764830574; c=relaxed/simple;
	bh=t741wTm/tCyOCb8u9j7xbKkTu1XUhFQ9L+Eb2GH7iU0=;
	h=To:Subject:From:Message-Id:Date; b=A+BJE6TWw4jesEJYx3rCFV1Kn5AF342l0Tw3NPD/0jueRDuTDdce23yzjPRTXlQPsFGoRFp7d1W00OgNwut/KEXjClkoqO1xoS60dqVwUbIazo28PEKK7jYvd6WZxMprrXIpv9LQCJ7WR+9jTd3H3ofhcsLrAe+hGAirHNgGIA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAPWoN6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAPWoN6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B408FC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764830573;
	bh=t741wTm/tCyOCb8u9j7xbKkTu1XUhFQ9L+Eb2GH7iU0=;
	h=To:Subject:From:Date:From;
	b=SAPWoN6zeoc2ir7D9KDPVlVDYgpDUKWINSGZFO2DGRn6Nt5ZWuHkF8sE6an5zF+nu
	 miUhz7O0OF7dinFBNWOQgVVcjPDDOh3oRZKeG2+r2roeNzkGOrShtwgpFUPfPg5uyl
	 iBgtm4VbwH7oLZv2bFKG7GqScYBolPbU3+0rejNNRnr0iVSTSli5wAnnadXglAp1F9
	 2NaYHasajXvaUyij6WuUAIUk+Q7CcQULBFsLcnXgArXEs/Kc0ybPINLah27ECV4EnH
	 cMzdRLd+mED3iB18loQ5LGUtTaE8cJklDHpR9DElJn75KT8idCuBCBa7/YD7ZBS1Hq
	 MmXNnztJNt32Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEA2D1D872
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483057364.21552.14722831623324956439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b2e420933df06b679343a82427cbb376cbedb7c44992d10f92d9fc2a230688
Date: Thu, 04 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764830573
