Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0649B33E35A
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769828634; cv=none; b=gZEknqHhYfl8cOgTIdieGCnb5XlYXtMNolPOwPvzNil8NouH8DVE9T4nGayhCDCN/a6zudbgpb0HKqZYr1+51//6AnZqOwKDCvAg3BrhTy3l2x+oYRHUBsJYV9NJQGS9VN8qLjCaBry/y6syvd37mieN0GTVOildKOpI9z06mO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769828634; c=relaxed/simple;
	bh=679jAXbACzIJs/kFWdIneDCfL7ipJawwEASlWgURd8E=;
	h=To:Subject:From:Message-Id:Date; b=IUBxQ7uTlQyysSdH1OHPXZoAC/OEi7sN68fSwyQntEn+EBtaKyFTNvqv4onbE+DDuzdwXOWqALysohp9+QkHJ8CP26Zw+4NxfKT0CnF759I3fNLja+1WxDe0S9woPDrWfSGuWURTb+fycR3s5a6z8LF4l+ldt2l2Bcf9vckq0a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8Qdhf1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8Qdhf1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB012C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769828633;
	bh=679jAXbACzIJs/kFWdIneDCfL7ipJawwEASlWgURd8E=;
	h=To:Subject:From:Date:From;
	b=h8Qdhf1npOrhqD7rDKSPSj5ANhM7FwtqULucJhhlCX3kOBp4N7hJrd2rMapXpQ0U8
	 OhY82Hscpg1O0npFrcKCfoxkQHeUU/nsATpQZFyfHhbbz3166VwKzzCMyTbdGTiK7U
	 NJB4OpzJHILCBQcWQcJViWkVU77rv4hYcbQtOgmTeGQu4AnfelEkC6y8/VQhq0ddOy
	 OPCftwdr/a+t7/iKWeL6WeZDHQTtwwh55+BWhufr02DigAwTfWE/zHdIUaiM71J7eY
	 T5GgKqe5MYSh4oI1zYX6pWSaQvdP/sB9EU8qVJ4gmKsDe4HDINNolE+dxOMN88s/37
	 2pT58PIYZHSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A25D46C1D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982863359.2444.2499328871695888150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e3d78d75a050bb5ed3a0641d4b97518b18ff39520e2c1a445c1fd43d450d31
Date: Sat, 31 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769828633
