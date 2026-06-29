Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3663B71D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782776914; cv=none; b=t0P8JrKEuWyWiRCCJ5o0lCZzK+sj0svrHjz8s8N6avvUd1UAb4ib/ExyD3HFMGQohl9yAAf9uUR80lU15q76bQCcscQPrdagvJ1WiCtLMU6sn/CusxhDs8u9AXLJecYD5sCQ0eWJMSby8YCaaaySi4DlRa6AESiBNs+OnT/oxak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782776914; c=relaxed/simple;
	bh=cVeflJXTvZOE4Ha54y7CRM9La1x0QZa/Tme3Wnk4xiY=;
	h=To:Subject:From:Message-Id:Date; b=D2HQLoTrQovBila0870HMlJ7QGREy6K7Yfz7vPFiNMLTNnFf7/Ib6ZcIrU0sBLFg18nx/Wjxqy4dpfV/vLnn9IBuoY55kP7kzf1FFCTNVRbbgeMqz0noS8plhn0AJlGiHmAMvLSve3xehfWJax2E1u0UfbBCd6crAz4L+2pav08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMStCsDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMStCsDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A3FC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782776913;
	bh=cVeflJXTvZOE4Ha54y7CRM9La1x0QZa/Tme3Wnk4xiY=;
	h=To:Subject:From:Date:From;
	b=SMStCsDEpWRBArLAhzpD83wv+ctlt8Z2FjhIVJYTf6dhjUf9Rwa/kK6VMJmTudlkZ
	 FBkoczuyTb+3kffPQgJIRmHO9hWTDlwqrCNlWAMmcRNLNJiA8VtumGrv+rEZMdnxbL
	 77MmCtwUe3jGJsJaZY8g1ub/cknS99Quwlw5KAFZVRLKpTIMKecZu+jSc+0nylAqtF
	 SLZRZSlmeV0p9/B3seNZbxH9f/YGNO5S9gF+MvSgrApeYJRK2XcOhjq9bHUY4RvKlH
	 /9wbfjcYIWHoWn41KPtei2S4H3Jz9aeTL+MXn+c4HGsvTyJf40sfUefAOh+CIrhmvT
	 G1uAXlobFpeLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1EDC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277691368.7998.8828240873633791788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a2279e887fc9e3fb3b940c5a8393e9af5610c9addb81870b3210163eb0a937
Date: Mon, 29 Jun 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782776913
