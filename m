Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067681E0DD8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775462734; cv=none; b=PkBr9qF6vJtieO1QcXI0sak10VajYOzum+J/3Va9skC6ap2UdBiuj0NHt9vbv4UBASqjyigflDqvHpQ2+q+hmrHC2reBt6H1QK1qXgIIEkc8qE8YHN7+8Gb6aGMbs91KhFrtq52vJLnVZE9Qf44FALL4ZsU5jd9blc1909qeSr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775462734; c=relaxed/simple;
	bh=43kB6+C0Gxg5tN4ILxWs5A0UfKJwU+sUo4NunWfAno4=;
	h=To:Subject:From:Message-Id:Date; b=vE4KPRHRFrBpZcOkKMq50NT5K53Kh0D3CSXBRBHvruy4eWS4C+Zwt2Mx4Kk0Sjm/X7HBM8NZ5t2NHovXH+FJGPQ9oMmZG951mZAI5hpnOuIv1RIavOhGLl1z2LRn+8TjBXyqzEwn//Wn/kPOPVAdpdM2p/r+t+0WZzLKvpm2JhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q80/tLOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q80/tLOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA05C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775462733;
	bh=43kB6+C0Gxg5tN4ILxWs5A0UfKJwU+sUo4NunWfAno4=;
	h=To:Subject:From:Date:From;
	b=Q80/tLOyDWRzQ5xnJeIHW44kVzlFhsFJXgYihz6Hyn6/6uVYPRDgTAc387SceyRZJ
	 RXzk+YvIy4E70Ez96NwR2Cx+JphCFpTSFjF+R824xQXUK/wyKyttzaxWd5/+AKjfQ9
	 xvzYqmvX9+rZh/O2PoZPENUKdDno4B4A/6Ya1XhnsqMAsgYhkDCJQWdch1GTK0s6m7
	 AS2c0reR66xh4S4JgTFnWw3iPp8n3dTVuznDqpbsqVCPM6FEAeRVtnC+8VuH+NFcXc
	 QSyintt5bOODfTwkd0XhhlDi6vJLDMF4cpCKUEEEs681FV8zbLOH3jtthtwfmUBVge
	 8RWzTSU40RPdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCCBEF4EC0
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546273369.5108.10495152346216739688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e182f5780c5207f9a1d36f3fbacb4f80f7d7d21adf1e2cc0636634b4cca88c
Date: Mon, 06 Apr 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775462733
