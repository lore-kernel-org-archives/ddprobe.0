Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DC3257459
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763347314; cv=none; b=U1ZRQUKegBpXZF7sIyqJT2iKLs9i0YECgjzqe+1aqOuBl5GaOKBvAXXYxsaYut4grgqr2Mv5keyfLZIWzcc3HZUlDzJ5jOQzhexGpp0wXPEW0r3JMSJsCdp9JSzOuDl/HSwqjSnbbp0YS1SyQUsMbgIP31KKTFqitW4sykWZPNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763347314; c=relaxed/simple;
	bh=BgQoHLh9icM+pH/D3XaC2n3RFcfNtmS0PF4vrOBVlvk=;
	h=To:Subject:From:Message-Id:Date; b=BUnIZ/Nq7FwUAMDw4ADPj06XrCGbmswTU7IyB9RmVcGCzpXb0+/rLifZjrRlsB4xKiwlYXGpV+yhhgpN6c0YbDdrThdAJW2oyJHntOL68Q2Bxqkq+nseWLF+bSvLm3w3G/Jl0IQtv8t4C4+4u1UODxAlnRXwevoxctdr7PNw0Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8ZD9uVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8ZD9uVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F40CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763347313;
	bh=BgQoHLh9icM+pH/D3XaC2n3RFcfNtmS0PF4vrOBVlvk=;
	h=To:Subject:From:Date:From;
	b=G8ZD9uVdGf2m2Us673b2BLqksghOg5/RFx49nB1O/QEbcdzgJKBAkf2BbPnG+GEMw
	 32HhaiKWrxG3XWjGLdtFq+93W9/Q+EZF/chUaio5yfUekCWdGw3NN1XGUU9AoK3l7P
	 ob1DT8H8iNDSS8TziTF+cKb9Xlf5RzdRuovmyiX2d6EpZqp2S34HGCGngUZBpQ05MA
	 4NNDDdkBRCnEp2AJ4AbuH9uJkojquh/55phiP5q3QlvSQVr4NEtEYwY0cbu3pFLBHG
	 DCdQ/YG0as868PyXkOl+Rj6+9mcJmMKOGemLuKaPxq4xmsllAZCVW1Mqs8lpE5OSTy
	 bJk2Tt0RcCLaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177FCCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334731358.29298.7265120002466645538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15934701abd9fa7a4f14c8a88cc5d2359ceab34ff0597820bb43bac4a0e7fb28
Date: Mon, 17 Nov 2025 02:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763347313
