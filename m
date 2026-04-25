Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379942BEC2E
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777148854; cv=none; b=MtgKTd78qDJXDWJu5O9pbCw5hUVXNu5MKhKlqgFMGaB9p/CMD7i+J9ZaaSW0YzUqr6gCGDtMuS9+6YV7BChymUi7tn9G+qzirNrSn0Liilxw1Uk9671212jOdMZtZu+Pw+4biPl9ZgpDNmSRAA8Lt9pcwYEa+q1sQSkMRm1V95A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777148854; c=relaxed/simple;
	bh=G+BWoAsU8kB4w2mFWlCwRbPeN+DLgPgpMgzyCTiirj8=;
	h=To:Subject:From:Message-Id:Date; b=DrOmxg2uRq36X6eq4q7r3naEZZJkxR3BlHCJPrKOWLHnPOTY4hCDZsKlAWF6Oet4OHhUxAfLDWxCkJ4uFAtbOi2PJJbiOSAaF8FpDA//3b3Zpaq4WWZqQKIEV+a5JBoZzs20ajbhCBSYOlntEVkvMGpV6nL5Ox2LNYP23TMNNco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeRMbRF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeRMbRF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE8EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777148853;
	bh=G+BWoAsU8kB4w2mFWlCwRbPeN+DLgPgpMgzyCTiirj8=;
	h=To:Subject:From:Date:From;
	b=IeRMbRF1xwbZ18La/qNU97xPZaH3AUiFcg6ydOlmGVtoLKI8bbqpPgIkJWUptAt0z
	 sO7ZZlncLvgOjsx3wHvxuG00jjqQiObbO8PbNTNXxzhVI0Nc0RCRJn8gNfUPvMPCMS
	 thbE4IdzmA0deE7pKkSCI/gVT4bZGrAuan3kC/B11Lao22PpjjMrx9EwTYvSQI/a1W
	 MrF2RdVc5rDVfDAu9RecP5gDWA7JdunUTh4P3CjSDPnX/70DXlPnScSVWGbDAcrurA
	 bUZXWDmNQk09R7H/mykccm7yaQdSNZZ1js1XupSARxMn+7ENxbZbJbUHyMw/vZO8zD
	 kdEeU50oCSpwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6C2FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714885368.8473.2188834397276459965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f791c19b144a87552d9b83d87ac4ef9c7b62f8845cb858b69d3d26ab6bf9f86
Date: Sat, 25 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777148853
