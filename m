Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5778D8836
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743319195; cv=none; b=XrjMXkiVvNNFzuFNElNh9SB8qXMA0YEoWcDResnxIoN3ieVfyS6tc20uFL1ABnDc6zm5m0QhRHVEOjf2SkYArnTvgRjQd+n6tNulw3rSa4I9dnwwLy5RhSAkvbWK1jeBdy3QRVea2Sba6WmkmtY0edsk42ZwoF1Wa74+MdoaLfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743319195; c=relaxed/simple;
	bh=M+W5zmJzQonjcy/oMuQztMelg3ZKfnUVyWjHvKz0Pg4=;
	h=To:Subject:From:Message-Id:Date; b=iM613je5Ur8EnrGoBn7vN2nCT4SuS/3rp3e9dU/cLwu6t20ZfKvRmofPlwHrhEBEyf00NiXFoDp78afmvHz+awbSAogTOlOaXSvsnmwNkfRV1heoY53u7G2Ng9E630KcT/iq+F6jC08USs/8QTOrn+HWN7UfAUW+LtmgSEIb2wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXBC8gze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXBC8gze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6516C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743319193;
	bh=M+W5zmJzQonjcy/oMuQztMelg3ZKfnUVyWjHvKz0Pg4=;
	h=To:Subject:From:Date:From;
	b=FXBC8gzecdlohL1TTlldBs6WNbfR4DRJSYpMTzGa+Li15Gxn9cSviLPVwjAH2k5Mv
	 HO+pKqRqAPR9feRDWZK3tw8SDzx/q33SP+7SkIHIkv5JPals4qi16xAz1/PyUn0k5Z
	 +gsxJA0NLoONvjZDW54s00HM3sD5v28GEFT0qIqgeEfw1l/uXSiZzYnowvWhyyZYxe
	 tF4sOTcmhOdfmDaCmaXRkqImHRu5qDJJP/N6bC+pvB2UOwtemVpKtCDcPFS5DnwsHm
	 IN+1nbAIBzYSr5r2QJZydzBr2KqnkkaeRTVxeXkE3k+YGPd7l/0a3Uirl0oJ1tmsbg
	 z1XGVRR3U97Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B271CC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331919367.24132.2446849431966042267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cdaa9e2a33f18b6820e0cc3c640030b1e9625459098d5db9af98090f9ce567
Date: Sun, 30 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743319193
