Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375EB199EA1
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724703954; cv=none; b=XawpQZby6oiINZrcAwtOKc5uXu5/F4Vn/K0wIpZAQLVRr17emy5FxHssnuOZff/BizDj09fXXzar3/QyJdl+3o1IQdJadU6GZL5RPQwZPkpZZwmfkfPBrFprwqVGXIPVcKbZ0+I4e+DYkHyu3q9bVsa/H7q2DhsGuChNyzThnOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724703954; c=relaxed/simple;
	bh=M4q//4g9LDMIp05Ph7PFPqKKZqY7TXRt+Y6Ghqpq3ww=;
	h=To:Subject:From:Message-Id:Date; b=oh2MjslLN9mSefEmqp5DA57VtIJp/+Cwq7LBMNVP18OH7Pz2gayfr1lfqGMkqPr0kxNUcAdKOKepxSpVNFkPy0fWz2Q1N1Uv+2dgE2CiML1OYddQGIGavVoHjuAR97rsJlUGW7R9gDswww4hudIvqQMYzWi9h/qsIDoetrai8Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4IhcXCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4IhcXCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA80AC4DDF9
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724703953;
	bh=M4q//4g9LDMIp05Ph7PFPqKKZqY7TXRt+Y6Ghqpq3ww=;
	h=To:Subject:From:Date:From;
	b=J4IhcXCPtCkRWNLBys8HGcHCFuFA1PGcAs37QMQVlZmIPTWEBQsVbHmseWHzxue/N
	 faDT4mHaLDb5Kf9xo53jF0z6Yf8b6YvCj3pyLADC10RlS4ZTdgaJGk1yDoqAy4Ym1g
	 liO9rT9zDmLnUE4glEKPEav9cxeBfhOW2LrixvIjgFLC9y+3a5J6iHFwQzB7ZUUbUO
	 NXJ/7pT3BRioMbQbSew75XSErAIulJG74IeTy2vc9HrpfpH6KKMhz2KpSzTFZcTaZo
	 XWBGNQDMfR/+cetBCMzfnVB/W5CIMaonyTmbcKSmCIKjRmMT981MM9AarI0NvGGQga
	 6JJrrhYYN2GLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9375CC5472E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172470395359.24926.7480848472499953107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b299796615c01d67d073981a44cf2a7b6551224539d2144b30efb55680b4f3c
Date: Mon, 26 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724703953
