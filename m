Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBBD1465A5
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729625754; cv=none; b=GkeY2RcSY2MP2B66sUTlDBzp4P21fXm8nwSAHfF0UAd+4qayA2B6ZmfriAr+mqyVvMr8y9ZzIMl3IA7n2dc1bWobhG2bfIjYwV1zXwSbPpRG+WIUoDdrbSYgzofiShLsnPTpC2l/pEDVwmW2L3zZZd087lejpf3z5tEljQY09p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729625754; c=relaxed/simple;
	bh=ZJD81zxaN42uLWiRoWjD8INLOG+UxxWDpl9gOd7EgQE=;
	h=To:Subject:From:Message-Id:Date; b=mPNvADYGLGltBCZfsbpLlNOMjmr7Vgd/IuF+tglcPrpRbfcOcUgvJCyFuZg5+UNg1ptB/BhRLHgLRF27S82mUNBpVnbfHHhmulk8ZN8NRs1BCWDos64a7VSg3iYp+/Iu9NE7kQudqpHYLV2fc75HbQQsalWMT5mTmE4QOl3b35s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYRFphuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYRFphuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A5C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729625753;
	bh=ZJD81zxaN42uLWiRoWjD8INLOG+UxxWDpl9gOd7EgQE=;
	h=To:Subject:From:Date:From;
	b=EYRFphuBTBe8rr3GOmj5nJJsZdmSuATdJdFQTAogbZBQ2sLfPM0OeefGrJHcDid6A
	 BgeVVna110uoiczrgLYaJAMqQCvNO3f7pqLqxGp9jHEZK16Q+dxYeIs7A89CbU/+sX
	 yKSgW8UUZQdA7Mp+Oa6G3E622shXVDSuHSmp3fGO3GMWzYoVwp5ZJ/TiZAHAocT/uF
	 ckZw08NESZvlhS1H1k5RXzgwl6GZ/0giJoWHBS945qPrX2YyT84N/EmkWgsXopnPCa
	 GoGQ2IjbrXoXRCFrnU2v+a69jbe3SXIq1qC6KZQaWIVFugIp44HgtHI4iFxaca+dvF
	 RlS/s84XHG48Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997C7CDD0CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172962575361.13539.4703206728214036136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532024ea67fdba049f65d6c0d627d84591007e04fd930dc2cef42557e2273af2
Date: Tue, 22 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729625753
