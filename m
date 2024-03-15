Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D5AD518
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710524297; cv=none; b=Y25wK8dTxBBZCdHH4PEXhRLHV84wfm01NObDJfoUVVrJDfybymMv+r5ZTRo/vy6X5I8V2tfNi70EojDkc3TZg9TL4PXzmhuh2/ieOxv/fisMvrph90xn/JSooPwMcIrdh/ToRLcoyFPEi2Jl4G3CNSG9/6sUsNrhEIrBVqpM1bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710524297; c=relaxed/simple;
	bh=I4RxIomhW9fsvIcNeUeDyaTLANSvuvS7b3BbTlORc/I=;
	h=To:Subject:From:Message-Id:Date; b=Lys9VTYgxg8Ibc5ZNEyvCC1sFemGEydMu1gcN9IG7siuvhCk8KeA21z5B6xehVkp9WeusajixqFmuRW2z3nLkILoxNRzwBZ7Of4T3M5AuzOxl89AUdqaCB4K01H57ha6RNNW9Z/n9zMmQ7IqXgpTRC/dmxac8d0rdCxbRXQV/vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gavp5xhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gavp5xhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE3AC433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710524296;
	bh=I4RxIomhW9fsvIcNeUeDyaTLANSvuvS7b3BbTlORc/I=;
	h=To:Subject:From:Date:From;
	b=gavp5xhUS7zDJy0Ph6Tb0PuCPhryJX+fuSGh0wI830tFWP+OCUA5XL1urRcbRIMMI
	 9pNfhd1sGHFcz1r2JC/gjh8r0dRHIohu+QBHuqMYeR2S6PQWmH9C7TABl+nUI2lAZH
	 59rAc1dOkIUcRuVd+ZVEwKbvWcOhBfjnObbawyQjKTSbgVfU5Uquf1SLNR88eHgAtk
	 7f0wSvv2VvDnik3xr9aOWRmE2eQyABQVvshCG1k9fW4pfRkpcBRhOCMN6vuwUVjKnv
	 gE6tI6NVlnVAd/IcY2/zYOFcYTSAWlGAWLR2POkfEbCgNZhT5fLM61N7vXDlAPkwBm
	 +n3D4L64RfuTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65084C54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171052429640.18241.10476622643277463094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee34c9d66feffce899d330521b59882381ddcd90c244671da51f20b56569bf9
Date: Fri, 15 Mar 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710524296
