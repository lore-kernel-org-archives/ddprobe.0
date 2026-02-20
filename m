Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C60B23D2B1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771553694; cv=none; b=NIHNcsZH66HI4dfxnDc73iMJZ0/OYxQ7Kfonk0zMIhoFIDmB6oyYDkUCkar7oBPh8X+Qgd0bL2jFh5ut0pE6oTh9g3vdQ0FSEo0VsXhO2FzjTx4S0+NAqQ4n6HRVehuSdxdupjvK3gIAY0keMQAZwGTiPj8FRUVEqDCbDWIn+Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771553694; c=relaxed/simple;
	bh=eqCW4x/lO9ZdLIUz8FObiYPlAKncLhi63PGLoLpLd34=;
	h=To:Subject:From:Message-Id:Date; b=SqTwAIaAT07HKGJOwdNrPTJTazizvgtcjWDeGAJKHJIPELYyV3ayCrhbvX5CmwKd3F147k8NXtZ9R3B7BZ1duXg7dDHXDJjpJ92jSAQBYJrJ83hRR+ob+TP/cixkL7SdXSpHksfnzqRvpAl69f3kmRtYNtcGAXt0tMm0zJGt7eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdKjvz4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdKjvz4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771553693;
	bh=eqCW4x/lO9ZdLIUz8FObiYPlAKncLhi63PGLoLpLd34=;
	h=To:Subject:From:Date:From;
	b=BdKjvz4vf+i+J4zqAuaPiIiZeg6LgQrg0BsubAnqcJJkALEexH8jMRVAI1DmVCtoL
	 Q9NZhH0s50tbcSgxU/UvrF31wpuY4K3b07mYG+TITwLDiWJsGZv8WVe9jf7bIgeFRW
	 ZdeloPOvCpobuopKHm/bkKlbzWeam9ybjDsHfSnTWOXNMAxxIfbfTNj0kpJ8Y/cMeC
	 j9I4xyeeD81L2l4kMuDSd5adOipfCLoiCFPqCp6UX1FWXingdnfD09pnYLEskb4vbz
	 yUyJRvR2zcz/JWNYl/hErwOSRfgFwyyvoDJBLKMSNvb8hMWle2TD7ZNG2JoJWrfWoK
	 QsUabX/T09nYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA5C531F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155369358.3222.6743403464744538951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a600b57fc67937c3883cf3f77ab594d54720eb175d3a33b5b25a5e1120b42b9f
Date: Fri, 20 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771553693
