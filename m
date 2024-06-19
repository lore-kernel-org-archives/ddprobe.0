Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7C3262BD
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718764763; cv=none; b=NxIhrMpgCDCzQjiP4K4RjmC8zbs91dvwzx7tLUqQTUKQ8mvQOp1pCnSvEw2Tl7BFm9BN20QGMFXP0XAyx9F9Y/413ne3UBRx8LchjaodOIuxknzu4mH41ubgZzWqeCammes3jW9wtRfNmZ9cb7byZA7g749Z3Eykyi4qqArLx6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718764763; c=relaxed/simple;
	bh=qXQTp+rcxHJQUqW/ooZMJ/sJhT/WXu7fsgo3qL0eB3w=;
	h=To:Subject:From:Message-Id:Date; b=G5Umg6x0TLPjLovEthp77d9u5VlbCPeULU8xWCf4wvMhK+yh3NvsmHqdnQu9irOU3x8XU2JmAV7mbWVd5g2Wj6e45ZUq/caO2HeJBMVsLrQkIH6H1CA/Pcr9mAY4WC/zSQN/YLygm6cZB6XWzV1BGA9YJdUH2AMraYQS5vn+Ypg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQ925oTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQ925oTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF301C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718764762;
	bh=qXQTp+rcxHJQUqW/ooZMJ/sJhT/WXu7fsgo3qL0eB3w=;
	h=To:Subject:From:Date:From;
	b=BQ925oTl3rGMCaEYtffS/FrAoqv8em9+Rcyk+m7jNOgd01Cmjvn5hNQxM8Egn/YPk
	 CIO4bmcpg0vqK9xwL3xYRirs6x+0NL3mokY+RGtyVwDCUgmm7VrjuIu8sXs4+z6r69
	 5aBGWWm2uX+p0vbKYidR3NJPFc+JuDvEseI+88G341DceMcpTaGayF6rWM+Wu1226l
	 Uuu8c8yobNYq1PiJ+wJjKLgVZQl9nTPgtfJ/B9HJQ6uImpaU2vdjh2dB4hMYYzb89c
	 DlZeGLScw21m4WE65mkrTjNF45FibyYXGzxxUyIPrlIiFATnJIuDxn99Mksp2y2wFv
	 rOI2idLXZWeRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA924C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 02:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876476277.13161.10002437379541152296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f32fae7ac96fee902a650f00ed08cbb55cb396ebc343fb8f75f95e35d54e416
Date: Wed, 19 Jun 2024 02:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718764762
