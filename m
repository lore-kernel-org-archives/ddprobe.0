Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB0D233933
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787186435; cv=none; b=nqffdqZrlmiHUMFXnsaFHxTB5Fr3lBJVfxiSE8fQvg/6w2Vr4bRE+rdvXI2XShLhk/EzxmEmqZsMhXwe4zutH11+MhFv4OmqxE3IjGTxFb5f1wGpL7lG+8lj++gCl01iMm5uzXnJgMRpdbjYbGdOZEVC1wZE5j2G+E/82Gp4gyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787186435; c=relaxed/simple;
	bh=qY+V5tyAy/u0W7ywDZpqK37nFt2EwlADszSgUGZ4/AI=;
	h=To:Subject:From:Message-Id:Date; b=pGxk0kPNEb4pIM4aYPy+smNE7TpFDkddSqE+21+fsWD6Mf4/kdO3GQtCxRQxI9wsuibYdN7ACLcitYcB7BfbOS4JuCZIRp6xf0ET4epb6xI6/Hf2Fi9e9cty6AxZVTyY18xV2gYqtwvOBsonzzHUbsN9X/Zf0Oox8/soF8rFic0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOTDlh+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOTDlh+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E49C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787186433;
	bh=qY+V5tyAy/u0W7ywDZpqK37nFt2EwlADszSgUGZ4/AI=;
	h=To:Subject:From:Date:From;
	b=EOTDlh+U0m2yTy98/xJ3ReZ4KWfHfL6iZuUu9R79YVhujjOv4usaoH6i0VBvn9eZ1
	 m8Q29xuK5JyPK2KSm+y0dGeRly1fvwx6Jb181h2x7Yb1mjCo5BKsehelDKSdA70oBG
	 FlQGQAbPu2cgn3eEfmJkdjnTnxlSSIAUrrOkPIrZDm2u31u9J0+wwk5eWmNdq8Ofir
	 b7iJK7s8Urq0CoLTq3QTeQ89ZMRtlLZjamB8InuYvFqHO1khK9iBL0TdYmwqv6YU/n
	 pUVREFqS+cBJtyutaOgGn2rpJNFgkxGrNFZ3GGJrQbcDShh9abPUUwHjbPfCUk39PK
	 dZVGTptWfggPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6BFC5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718643368.15270.14856436404149378065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f935fcc8f57d9d81dda717539a2550423e356a0dee8a6c72dda1704a9d8a8965
Date: Thu, 20 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787186433
