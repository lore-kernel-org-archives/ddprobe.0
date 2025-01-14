Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA974690
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736817354; cv=none; b=GbuCW8IPz0aZXo1vMfvpnGRqKACl3u4zQoIw0tcCbDUI1XYfnAMqe4nhZr5plRF8bEJhDAGviL+Vj5CfPqig5BQ6yTnY0NRe1MZbp9c5yvL+aPYZN5Ypfl47POrm1eVrYzYOsv7auN26Tv3XK+l1RmFOacwN1dEwAes8A7drTJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736817354; c=relaxed/simple;
	bh=Gydm4zOhQoGlIzwpmU0KE4ENae4ig1bhUYLSdVN0Eig=;
	h=To:Subject:From:Message-Id:Date; b=uGVBXr18+KlO0fRDtdSa5VWosv34tGmr82CeymGoefP2n/OmCY8TdpUq5Oi9umEuF6GSVcGEwqJ8+6MfG7pk4EvNnLoF5YXkKys960zULs7bON1fF6hGUBaBfmCnFh1z/1QcRUz1ZPGGHgzwDfqlemgeVmCkhLjPGAmfAsVOF9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkiulO3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkiulO3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE215C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736817353;
	bh=Gydm4zOhQoGlIzwpmU0KE4ENae4ig1bhUYLSdVN0Eig=;
	h=To:Subject:From:Date:From;
	b=qkiulO3nrr2kpy0G0eMebIxUMGWJnhDchFQyWf628hT7Od5L65lM25pMZ0RcIdtKY
	 Ivo/1kNp8uH294e1ldWUPJGSCjoYmdUCqdn3QVzay+SRFUvDjp23dcjw+S0thNNBJJ
	 xBESbmpl40Bo94UcaATof44Tv3XjjH48EQeJNk8LCpXVc/mtMv+F6R98pbzn9i1x9Y
	 dT8gpr3EyoV1axOGNbipmifXrOMe/UK44z+f8RyGJnz8+v1mWXkTqkNAx+1Y6toCAk
	 WJ52E81MSQmsufEf9u6QjuVHqcxWYYHeBPmeFrGiI7x/jHaH9nXJz+kINml9Iys9HJ
	 49G5K11+PHg2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ABFC02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681735362.25906.9772782031593277607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122b7ec4e7f070acfa7863388b503098073fcbd18874aa0735d7295e9dcb0f4c
Date: Tue, 14 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736817353
