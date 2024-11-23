Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B94523098E
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732365954; cv=none; b=SvaFGiegHi2Uc+DukVbPH+32c6L6Wqsw/YFwKf8w0ZYKpwsURww7a0lp2oY8/buQ+iaFiRhNyeoZEvOTzl8wijMBJXcJRlU5nbmPLvW1szTm0AYfSOLDDMLPZykXjQTAzpoeLcSg1gJt5TbA5ygV0rIVfVVcMl9doBv2ViZCJbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732365954; c=relaxed/simple;
	bh=P61Ss66jQIBFo4FrAmmlw3zgNzuOSi9UJYYHQofox7g=;
	h=To:Subject:From:Message-Id:Date; b=fQpOc/r/Pzh/jxUSbGi/s8Dlc03UaHDUAZy+CPVnj8UOqAmC3KZMIMO/vZ4uqPHchRw8JbsDTvo5CywLSh1/kUh1TSJYQro+fbWHZccc+JNaC8bZNEsXXV3ZHZwpzAYNVwPbdb5/zxOdLG5R8rTKrV9uJyzk7nANUQqGPoEUTyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq7pRNhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq7pRNhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B93C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732365953;
	bh=P61Ss66jQIBFo4FrAmmlw3zgNzuOSi9UJYYHQofox7g=;
	h=To:Subject:From:Date:From;
	b=lq7pRNheV1H5rHdWkIN/mmMDjLQLQ70en5mG/kZ3uAJsQfjUUlTHbtVpcJRkRTWne
	 diBhQknl2o0ZjacINf6t2i6SqRjCeodCOO7cCnmnoViqSdL/O4Tf8qaoY5iBDgYCQX
	 lXVK4JwyC0KUloVmeWHi2GJDuh1guqejQsoX0P70jGx6eWFPjxu9+xBE8cI1bguYPd
	 f5+vyNuf7db0Q0wMwJCApz5F9kmT56TesgjEhodnUuSZUMIDi/bmHswDHD+GLlQt+N
	 85VdFQ+8jdDHjpVUMCAyrT7airXWXqZkwlNkwvKzv0ZG/QIrKv23rKtwJnTPDGlVUy
	 34pofGVddSqRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9941EE6ADF8
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173236595361.13477.11915822492323944332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd724e83053c19b8ccf1b62678b37dfe70b523eb39ebfc6c04e422aa0e6fdd8b
Date: Sat, 23 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732365953
