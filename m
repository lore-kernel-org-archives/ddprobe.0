Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBC321D599
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773714294; cv=none; b=kvN6FQNeWrX+rBq2K/mK4xJ88jF+nh4Blt6mJAEJU5lpzw5E/VABGxaj66H1IsC7ZQ0MXwIkSR4lUC+0UfzwFPdqDbE/4UMvvFqECsHrp5HBhLMZBoSJDAmhB4xHJ/wOwQ2CL23EJ/eqgCkAvR2VQHzd16txgjpCn8+j/5CPASA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773714294; c=relaxed/simple;
	bh=UgdyMBbSVrl6vsd7H0DhfOhLxRmtG++HPy7CVYfGiCc=;
	h=To:Subject:From:Message-Id:Date; b=a4W3iXN6MGM6lXLQEVwif4H23t2NWKmqrll3MqhOl78Yfcb9famo+V4h4KjKkFcemxEdlCd4SYZQK/Q/onChST6Cp5x7gsahmUd5ZqTNCc684BauYkVV7sk06AhZ1/6N88gVK8XbbbXGDDqgeGLao9QUwzHsVT41moRFOkFXyt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOI5kPIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOI5kPIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A631DC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773714293;
	bh=UgdyMBbSVrl6vsd7H0DhfOhLxRmtG++HPy7CVYfGiCc=;
	h=To:Subject:From:Date:From;
	b=TOI5kPIarcKGE53Puy/e/cvkqkeJccFbYOrhcQ4MVNLbSnK+hxRlgsTTs97vOK+Dr
	 hT6wxqNhlKHDlkk3Z/UET+4b2Vjwa2UN81FpBULAM2kZ3uhSE1hZgA4OmIx3/RxI5i
	 kNvqJR2/5nJMgK+7XJun9a0x+5g5tHcOWdc7aj+Z+6O7XU2QYMq5kNq/2qNiRu4w0k
	 jJocTRQ3gJJtg0mMEXWZUGccEoRunOPvdd+fA9LmUPLu0lmRmWBAw7/Zqowr5en0dl
	 RBKEMApVwKkhsGTpTGi7vpMIameqSH5jotnmibRuwSNkJkvUVw5TQxtRLtW3Xtqsxs
	 31yR6pmg+Nhng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946BFFB5EA5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371429357.31063.11730897863588996303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b74b68fddba2f471cb5a3fd247bf3ae2804b8c98221768029d920dbc692ea5
Date: Tue, 17 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773714293
