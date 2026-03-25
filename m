Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C62B38BF8E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774473894; cv=none; b=GjUO6qpnPZE2rpU7wfnmyADOzbDWHFKh9rVuSORCTCZwE+vXojvGlV3mixMRFdNWcP/w2ZNLLFMvHErfsDrmFH5f9sg7BQgCdfN3aKXjDdeEC3vqVNtfE9GbYEzQG+ba//O5cWM3at1vv88YzupWcpQmQrv2Pgn3tDya7eROiAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774473894; c=relaxed/simple;
	bh=3UpW8HfHWMJFo2KEICDgrPmb22z3x1y327bot2C5aLE=;
	h=To:Subject:From:Message-Id:Date; b=XtOafOEOrRwu6jWIlDu1JQX5aEM2+lv0eF7fqpEvJGytFbxla+paD7VyG6mIIrQ8TywRUuK/OTD/M88b4VpZkHnrP2qEYBUnoETLkg8LJwudNy6v7Br4LrYRuph9ZiV4i5RS1LuVm+LZmgqozRF5r7EAJztzn5y5dpsx5AWmmpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJfj1Z5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJfj1Z5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A190EC2BCB2
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774473893;
	bh=3UpW8HfHWMJFo2KEICDgrPmb22z3x1y327bot2C5aLE=;
	h=To:Subject:From:Date:From;
	b=XJfj1Z5K2mChCsnMdS2zvxm03sBEQxnky5bSlLej6B+DRoISDgG5rRz27ZFeBezU2
	 19EibvUOMlOYkt1f0OMys7jvr9SJIM97aR9Om6nxsR7swA3MVQ88iyV16Kbobp3KeZ
	 t/r7wIulSYOMzj9shdDaB2U5RnTGI4f5uVaikY8lc018Asqw9H12QYvu28iNjSijNX
	 qufoV6iregcTFoKIhFoxWg+spoK2s9jQmbUzgIxId+vzmEjIFOuGe1pjmse+7AQjX+
	 TiWNmVO3GRVBSg+Bt8Jy4seJdOoUgRK7z6sPlCJpP0htZznStJZwcDWcV/9/x07FCv
	 ZPx9s9C6gLXvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2A1093168
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447389358.15763.7126881316131964341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecaf476934f6e9b6c12ac37116eb956245a8a906411bcc2d32dd8fa23010ac28
Date: Wed, 25 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774473893
