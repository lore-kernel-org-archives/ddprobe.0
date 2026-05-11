Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293E335DA78
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778518834; cv=none; b=f/yPQS9ISd4yZaelw3BGNFWYTXfgatbMW8jjIzB3BeHx1yeDVoPYzRhP9+Yyn+gDPSVt7PRdJOABvyeZKMeWc6rpS9YP7R6mHMQbckYN4qSJhSvvfwTy/6K3yYalOlhTEdr2/SqxJ4gMn8FRuDm7wTlgjENGITYkyT00alddM40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778518834; c=relaxed/simple;
	bh=HwRIpCsX+tQz7H8dascdZT/6ze5g2CHnfPD1iLkHZVM=;
	h=To:Subject:From:Message-Id:Date; b=sg6Ok6CRfzBcC1UbHEYL/VsycKVk++3dqmFm1GeK+HD25ItsGFVm0/AGBPSReLRXbNJSQZRPlmCOJ7bnuBEQrk7PnGzjU5G34afCZQbzXj/y3gdM5WqApD5EuWu434C4ThJsUV1hI6wtvMhUsUPbZ0SQ3et4eDjxfxyYdOLdpXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7Axq71n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7Axq71n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9653C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778518833;
	bh=HwRIpCsX+tQz7H8dascdZT/6ze5g2CHnfPD1iLkHZVM=;
	h=To:Subject:From:Date:From;
	b=C7Axq71n0C4pBOTY2GfrGZXL9rQrkBWxkRr2BzCBnlhk37zhFOWLZ6mokpz6ohIyn
	 tL7UcNH6KY9+lGk3ohBEsDekZfnLn8Zm4RnRPKqFRHV00rL3/T+ih2C4fbcs36+D6o
	 zG+KgvjGpCX2J9oRDfhQBNFWSUZ82GuMLIEUkP1DB72P+wvnVuw5Z7yhG1FbZ3e9N2
	 rgO0B2yUMYUoooM1n4nRcR9mJhX3bZs6n4khDoKSPHQlOoIAfGINVgZ20d9PEam4Yj
	 uhtbPRBW/qGD3yesl1BHR2qyxkKdcdMH7hHQOpWBObHs+zymqzHa3+cSlO3jPTXo4p
	 M7NsknvtRTRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC6CD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851883369.23467.18431265026448646201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02abeb93326ecdb594edbad97ae3bd96c9e420dcbf5465d76154d439e6b0089a
Date: Mon, 11 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778518833
