Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C5337DEA4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786314034; cv=none; b=e0hqDtMFdcrlBV4fUPjMbJTOvjOaE3xZXjJPIOV7WXHIo75sNnSgC/TfGwpTA/bNZrmD+VriyFkAuz/oMkFRn9RNfCMlnouPtgqx8uLCBznwTGRLTS4BxginITvTP7/frttEq19vLP8ijXfkEqatXmsK9AODicmK1hL5UQZX5Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786314034; c=relaxed/simple;
	bh=yBYQAHkWeOeKWGHOa8/s2QJwKqf927WDRJRACpRplyM=;
	h=To:Subject:From:Message-Id:Date; b=H4QKuRmfrcyEA6EU1eGIJxmOMKbnCXl6Vy/52XS5ZPMkcgnlmvHsMKnb4IQNqCxajghCV4bY5NUSBlJCpXBOxbZvvg29zz+v/kY07j/msYa37eMR0y9Xl6hIAax3tOXSG1kAeDyXVG7KUD5+VBTIfawEiCBOOPjGdmDLRBSorMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTpJ9l9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTpJ9l9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01E2C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786314033;
	bh=yBYQAHkWeOeKWGHOa8/s2QJwKqf927WDRJRACpRplyM=;
	h=To:Subject:From:Date:From;
	b=HTpJ9l9beCLxuRVa8bvxK2AYaOcJp0rpZ8X1/ueRRd1LAIMufcc+OED4TsbS/9frc
	 MAkx2ZMu8u4MyEYXbgL/ibWJ+1uFt+lfTTYiv0/E98EBHpHHCirEWDW8nF4D556X0w
	 /vKVDXNhViFQGBRE0lXSUoSkpPdOt0LyyQaJxYUux3Yo1VjLt+JJFM9cRKzbSLMaTh
	 2+AVI5Kbs8EnpoP4zfZ4/O8f83mWbZq6BQQZNb29KiDbMhGmPe6U8VHDQbr/wgfUFN
	 7+N1+My19AHyfLKNh7UK9fklVB2RJPh1SWjjMuM0dOqJgiBrng5NBSX2hopwMiqoNx
	 uh9XxTXNO8nUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD57EC5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631403369.20617.6871533116765981251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927729d024ab3e0526dd4a735f1b71fe6d8697fcb92391290b2ab9d3dbc8d164
Date: Sun, 09 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786314033
