Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450F24D11D
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717091063; cv=none; b=AyOS53or/UA0Pfwxu0PsQyImmm7XhjiH/1yoT4seZj0+yrPcskIFhynY77hjHQhnco16RXQ0Gr6cukrR1IBMphB+WTq4NEqT65YRFehbBdFySE7byrdlA/ZPnix1a3wGCb3quNgLpX8t0NkYPPXGT67ZjuRlSg7iql2GGNmCErQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717091063; c=relaxed/simple;
	bh=AnOhRTx1MSlgVfimC0i5iCY+PkfE9fJvidIbOeVlD/A=;
	h=To:Subject:From:Message-Id:Date; b=Z4ahNWPx716Fi0cEE9fLx5haz2o73z2jXCEGSxHKI2N/+bN1FZHOBZ7SkMGZMVVDTWtaXMQ28z8ygLapVfVrCngQlgMV9VCXcTNX3Cafr2bUYduj4Eb99A9mTrOa7lSQlT3ARsHAtDSJIO9IjFTVazbj5Gx0K4S9m/fllwel0ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cl903cHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cl903cHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BCBC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717091062;
	bh=AnOhRTx1MSlgVfimC0i5iCY+PkfE9fJvidIbOeVlD/A=;
	h=To:Subject:From:Date:From;
	b=cl903cHMPn9vJylEJXbdPuTEVAg3tVHRnOZVSrZhOg6g2gL/JfrPFL8qLmHX3F/B7
	 7DhImj6boqwVd7S27S8va4nlpY9e5d3MHYW1AupHMQX+4kHxUQchKYYZS1HAzN1TLB
	 20axrJXF3NPaq3pqe+riAOfmklJkkXz7z87bEC6ZkZ1zMVMUvoiG1poJfY92co6kDN
	 j47VsE4gRPFSe2kr1QphDcpC55l48Hr8OLS7xviF+aLw1bdcybiieD5e/kDH5hLT9v
	 9/1wydmfzqQEmi7lHGlTj440DYhrFDQDvPg3ZN5rZlMysipEHIZeXDYCCQsOw9MFSo
	 SFl/mHQMejelA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14A2C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709106278.1702.7001589672797932541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0697f1f7ef15e191eadc579f1dd7b18a0ccd76371e5ee08727033c7d9afd793
Date: Thu, 30 May 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717091062
