Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D8125394B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750766395; cv=none; b=Tcs8Y7PqOO3kWb5r5u5rVZVBEJrTaPbPoKet0Wk3iGJk7rB3VPa+8BlvUbawElRnlCPGJz7nVjJHcDjWSAqbHjsiu8iCGDuoegm6wsN7YS5osG5y0e4U2SzJywLPv8jxyPUVOhurWZvGMuO0ETCAJNgH3PKFLSGKtFNd7T+fus4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750766395; c=relaxed/simple;
	bh=v3lIxLxYPOjnGmHERmtB8qe2e2WDMb544A5xRoGT2nI=;
	h=To:Subject:From:Message-Id:Date; b=OUqTPECQNBkV4MTH6EHqwCpZj9Zjptwjt7yYC9Altv7PZqSAz6Fp5ArL2s0zLEVdMKYNw5LKmV0Ui2T8LThShc+VGL3aZhSkUEmC1NiPM4QEHTOWVXN2hvhCBRStf0L2SGC5+lk65CAqibwQPag6XDl9ZZaciyuPApGDYwsI48M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ik0Q8Y3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ik0Q8Y3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A037EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750766393;
	bh=v3lIxLxYPOjnGmHERmtB8qe2e2WDMb544A5xRoGT2nI=;
	h=To:Subject:From:Date:From;
	b=ik0Q8Y3VluAB44KtshNFZeOiJrIDC1u3MMt3u3Hz8c+IDH86pzCBEh/XQ8hgau/Wd
	 m61RazgwLFryXJVHDgCfcI2ps3T/l7bEWUZIXBzgxQoDdkXFVDLLIfyMRlgGpyzUHa
	 s/JwfpMrsj8MS4qXbzjEV4J1VHSxATLzYyJPII6Gl4NfK0WnFb6puGjEUR+1+y7zGN
	 orwWN3W2ByVDjvG+uL277d8DkAz/p/d2NgZyPsfBhkMgGUV1TixF2gzLMgpoEY+7sj
	 6pIsysjJGk6YrkoJ34FmSWKnr6dEk0VbQqGvW1o05qYamldtNBkdNC/7/X+3frZ71x
	 GUipJtMUi53Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA3C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076639358.6964.1528311043419313011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9427d2a05e740fb6c3b4575b225cb3f7228bdae6bf70d8ca3a7da91979e9e0c8
Date: Tue, 24 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750766393
