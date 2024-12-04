Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534591A8F9F
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733338554; cv=none; b=ERQ+5EfnNkiB1hiEX9K0Ep12CR168lhsrgbKnjCO0N/+3GRgFkWInhvWf1hXboibgxjnniTNs23VNoVzqywyy/Q2ULbTyi2Zd1nWTqu+f+rEPCLKN3B1vKwdXtZLIpnjUzT6MKdxLd8IWn3Fcxc+uXZIDAnDJqVdkpEinEDpMis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733338554; c=relaxed/simple;
	bh=RucF/NG/iO8Zfe8eZu+75h/e7RuzAklpagTw/f2Bwk4=;
	h=To:Subject:From:Message-Id:Date; b=Sl7imupU+itnCCxuj24GPd30f4xlDWo/p50k0DFffWVpYwuKctj06OFHTSriEOxxOOzqOBZdeiZrsdNTbxPnWNtisTvDPOtiZ/RZUK5itCy51w6ZVTwGP+NHHNWv3XNFyqqAQHDy3IXM6qAdJchabp6mRpS/N/yDa4Mk6AgO7Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBpM5ww6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBpM5ww6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7709C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733338553;
	bh=RucF/NG/iO8Zfe8eZu+75h/e7RuzAklpagTw/f2Bwk4=;
	h=To:Subject:From:Date:From;
	b=cBpM5ww6yWtuVZ/YeIOox0w4C0b06IPPkc7PHP6/4t7MD1joteMOXfK+UXTF8HY+L
	 shf/D5WsRZ0wC6opeUYGChlDGKSDFd4cxZiLjlBEjBSLDIUTWTjfLo3+Uv8zuOp1sm
	 fzXBzQmxuh5hsMJjq8iH8XyUoEjCGg/5rUxBptgdR8ubxiWiKEvw1krscpS1bh2/4Y
	 gVnn0FLR0aWHTRKyHp93STDtGFsUv+T/XTNPganb7D+P8C3XI68p/MxVVLoqaxNGfv
	 02t67ZulCeL5GpFGXV/oUo3exfgsEkZrAfZJGwF1CrArPrD/suML+5mPRlFMAcxxUe
	 ELHyk2eDQwbJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06A2E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173333855364.25892.17565566088027750346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b192738dea0db5e77c41806b10a17ba69c73afeae7df49b4ee04cbf87829ad3
Date: Wed, 04 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733338553
