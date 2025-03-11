Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E091E98EA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741713534; cv=none; b=r7DpmsTlsK9vuQqeMN2eISSLhZOY++ca1Ib0JW1LFHQzjsR+uN2Kf10w/uApL9lZvn15mGatRfoDCmxf9IRJKUTY8QvFAszSnGKM9KXHLciFbswkpQftCP3Kgf4ioZuyGJGFuAB3cBO5KsHA4CQaAbZD5vCRJveU6waaB6O9XvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741713534; c=relaxed/simple;
	bh=xy9o5urUGYdAlj/IlgusF/zYl7HF2ZRlA5b1kcg2u/s=;
	h=To:Subject:From:Message-Id:Date; b=SV3gNwQ6KcWZuarbV/uhchEYf/2lpScn2SS2o1fwFWH2ytHQPO2PUQYLvicBRXk4CLOQZZMHO5J5E+NPCp3m0PHV04uZNg7gI+zOya3zmw4bpA/33FUC0kzAtNSNsxOGbbffiryypexL4/2t6f9a2kbb/nEnTqpCHppPTWjpfBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwEwr824; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwEwr824"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F07C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741713533;
	bh=xy9o5urUGYdAlj/IlgusF/zYl7HF2ZRlA5b1kcg2u/s=;
	h=To:Subject:From:Date:From;
	b=VwEwr824c19vU/RdfDVRLhPGEw4XJCBV+yRNwYX5J9PxSVNxUjCENbIh5hXexXuGA
	 yaRYPy1Ljh5WK9q5GBHnlsLGh+N7LZ49Es/YzhiHNVD6oTUaZz8dtbYunz6QUjEUCZ
	 SpOZAK4Wgdul/C6UgSpCXbkSg6yjb+54LlTVR/NY4vUp49hEguMPL3swlO0dljI9lb
	 FCPUk0iLmBvoN6sjQ2NROn0Z1EU+ge4ypmfvgk6HS6zTmyNdS2PJAmE5j4qsiVqU0O
	 H0pC7mFNlubgQS+ZkAN7x7NVjy2P0dHB2gAaahQHYeYl9L4awiuu0MkuiAEKP1vLCm
	 JKNfK8m2KPWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973BDC282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174171353361.22867.8215596370884765928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a016a287d7a3977aa5387a091267e145682ca38a307433e6be7b14b4648b0da5
Date: Tue, 11 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741713533
