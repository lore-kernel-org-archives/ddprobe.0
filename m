Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D30C3BBA0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791898234; cv=none; b=S1rY/kxT+fhxwdQLLgIeHeoLExBPRM/yEliducuWyTN/DnndapwGlr6Vd2paEtrITeLPDPBd75zktQ66JPfcZcMymte4w8G63/UwBa2t5scVJMu6xzPfaUQqPgFhkq7nkfXUSB67VZYvSk2gJ/c9mUeAAalH9gI1HpyqLHb3jI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791898234; c=relaxed/simple;
	bh=2TwJe2nmNpG8LZiStIt3IZOcxJ95NwQV6TAzvVeUoU0=;
	h=To:Subject:From:Message-Id:Date; b=b5Pi5Z1R2qbqfOOBtX1PzLAYTeF/Ht2WcMjF9Rq45kUyC7YnJR+Rg3eUfYS32qx27vxvuM2N/hWlW5gxvUZ4Uemjwg7xmLVLooUQTEnIdNBEkXTtxGoKpDJQfFDcl/+RVTP+1GOkU8OGk0XOnfR0nu132z75uvCuedURwH2xwGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX+ir53Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX+ir53Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84CBC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791898233;
	bh=2TwJe2nmNpG8LZiStIt3IZOcxJ95NwQV6TAzvVeUoU0=;
	h=To:Subject:From:Date:From;
	b=hX+ir53Yxh7dqA7qMUv9BdIkPwCwN65WL7yIp2BrLaWbpMECF2uFe6LtXYeuIWgJp
	 K342kn4bly21/NAXrx3hIkJxCv6sRd42OyF+foRKeqSsY0jqjnkSrY2BlxADfPrYp7
	 nVk0+R0arOKGFLUbxaSPq2JqAVJNwVYn04fH3Q5LPXYD/uvbwTq7qP/6zT6kWdpY5E
	 iiLrugDShdvepKukh9gDwrsb9lYi0zoPo/LG0YEyWjNvUdLET3qG6Hz4ZLQaTLM56/
	 Rg4TghfmVzD4VC6/XmEzkDsGRAn1k7+vHWAYtKAc9kGGR14IAz7+qoYCBa4VFUElT0
	 fxTgYfhXiMImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B189FCC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189823371.2284.10907578785423383536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed210127b2f40a45202fe279cc26a9986ad067673f7736672d845133fe27d619
Date: Tue, 13 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791898233
