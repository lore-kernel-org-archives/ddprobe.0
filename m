Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BCF2BD5A7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759125594; cv=none; b=Lp6rjgLzVs5g9U4Xif8rM/T79iHTP7/7ju3psi41R+rZozEARxt36s+iME3/9gTviMbF9g9VsX+VVkueEIpTtyRLKJXiTxkfzfHIOcSrrg6KkZtuSpE1RqAR1rRcw1ityJQPzwYZnnXJU0FWCNHDsxaKyL+iTPFS3aK8UsqOV8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759125594; c=relaxed/simple;
	bh=bUb4o4iJbW0s4NNsU8e3C9J7tEL2wMY/8+rHnh+rgk8=;
	h=To:Subject:From:Message-Id:Date; b=VB7LS3CuBkSrLkRqz2uDXhUSTbpWAxtKpkTkXcLHAQjMUDO53axfv7WWANbhb0c6fuRFpsXtxdCXgTZyTG8ayqAy0SDCO8b4NyHP2C66z93OJ3xpBLr+LEEYifU9AL5fg9QTmAKSD9fewd8rS55ErO56BLjnfhNXPTBguQGX5V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIshBt/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIshBt/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEBBC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759125593;
	bh=bUb4o4iJbW0s4NNsU8e3C9J7tEL2wMY/8+rHnh+rgk8=;
	h=To:Subject:From:Date:From;
	b=nIshBt/UKv+xKymn2VQMbeFhRmr6G4VATGVArNfqhMj7ugBI1VGX/DpF3ZBoKbxcM
	 fsJ1b+H4xTDoudJW+rUuDo1rSSUVg5AjYht26tldRIUMlf5v+xcgqcnFtDZFgFi/Sm
	 6F5+I4wS9sNLkclELi8xo1dXOJM4uU2T+hNraBIWO5XCLimWda3ihRd42ZCdft22AR
	 6PKeRIZksCv3nrOnMve8HrojJJoBmRntIDzIjy2ZO0r7jF+x1H0pvueMIyOI5BOogS
	 vYIGPLpyyrdL9XFtOEFdbmMXyIrT3lCxXMDRfnJOpAwYMqphKCGfNep44WtMnirmQj
	 l0/1kfkchmBrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9663CCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912559358.12721.4522264895413302996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2e3b83f6c8250bc095f2aaf4b81702382706e81ebbd9449f6186335dba70e3
Date: Mon, 29 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759125593
