Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0215B3AB294
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785742235; cv=none; b=lGg7JW04TFmorfyHH4XKaZ1j9Rd+HTu6Nm53XJTxgetCEEKqH4y1dg5KT3qANp12MUiM7Etj5DM57UY3MVNeIMFD3/eP9kdX1jSTZgCmQwCpHbHdsG6qET75+h9w3UtnJun66MK5RWq8/H/dv6lhAOdXYQblPTYbugygw7bKfOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785742235; c=relaxed/simple;
	bh=QgSAGihNtFPAROsB3W3rzyyZx5RSEnvXmKT9ZKaP3hs=;
	h=To:Subject:From:Message-Id:Date; b=ljS4e+KvymQsN7hdZjaYvdL4PWzgjOgTV2vM42hhm0XZJ1YzLBb4FF3FwQ9r367jaWw7yAw4ZFLC+KeNNlCljxNq08C53bc05OkIAk/wDSyBiG/YXHOqJaCjYaiTrBgbTfXEhCO6rFi5teYKk+pLK9vQ7Bsdcx7h62NDtQ5h/ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWEQDtlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWEQDtlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D1EC2BCFA
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785742233;
	bh=QgSAGihNtFPAROsB3W3rzyyZx5RSEnvXmKT9ZKaP3hs=;
	h=To:Subject:From:Date:From;
	b=dWEQDtlH4+dq+vHvJ89uxtXsa5LV8nOUw5liqVnkzYiZU3oawPNHonpV7L56uEkx0
	 dqWxFH/veoxF5+h27DpJ2T0QAX5kVesmtXM8clO3UaeCugwlZQq2/xhdvHgRBxhmU3
	 W/wscf2aqhw1w0mSCffaTsgZHtDc3KY6fP91agCOm2MVVwoe039Axj5Y+vQFDJ7bU5
	 5zyPtNXeqTtAs4V9teM4GGkxIvURbPsrqoWNg0HJXDob7oUPuAucfEO2rfM334L8qF
	 zC1YggRnUcneGF5LpyGoAxRkX2uvjMT+OOfSCEfq3U8cQ17Sf02j6CGv06mr5ApC1O
	 bDxlYt4FTnpeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB72C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574223369.4628.13786992287752271771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58bb02c32ea7cc5ea7139a5766cd06cc2256c82b1dd80372c0bfb3acba001cab
Date: Mon, 03 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785742233
