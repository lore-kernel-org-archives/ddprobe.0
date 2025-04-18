Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562F88836
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744937395; cv=none; b=HE/xE9khuagyR7bBe2jl2BRC3EbMkpb2M9Uc7O33h2GIJS+7iT7KPEzvpyHWwEFQQSlhVRKAZaAJ6p1ubfIPepkGTQrE1upfQL1lKM2O8n77bR6v0D6nJ4U2rgyIvPoI+6MLeaswDzkyNz+YQLLMaSb0leOrNvH/GJbuCszB5/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744937395; c=relaxed/simple;
	bh=2VAoktc3vmNTUm/uV8oKVe9jP4DbxABxYSU0pwxsAFs=;
	h=To:Subject:From:Message-Id:Date; b=E+l2z1fidnEvM+sq90s1D5LP2gpjxMEhUYPSu2+PJK/99USMpf0HCBruAi1jiAZ9z48gTIx6cxIVVh91Fmv+q6MPhfuan6AhE6NqbJxWUWiScX34HohBwUu45mCP6Rh5Gl6xznfTRRcOMRonc6rTPSZ+rG2p/pXGJ0kAzS2d9Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h197SqTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h197SqTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44D0C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744937393;
	bh=2VAoktc3vmNTUm/uV8oKVe9jP4DbxABxYSU0pwxsAFs=;
	h=To:Subject:From:Date:From;
	b=h197SqTZmMuW6Qt+FD+bEeqU7VxHhmfKzrbWZ3wLF0SdifNEBIbLv3vtw34BsaTax
	 1kTJf06psHBAmY/xRJGLv4BJ8ff1e5+8+K94ncnYUYSF+Ml6lFbsuGCNW8U6/smcYQ
	 r4w6voSjC8AK1VYaAGGZ/4lJAOG98qRZ4cLDRsdd/FiFuV1REvFdmLH1aQVu/ZbbUL
	 i6CuWKMsrQEK6bMwwM4o8pOJB6DutVQy36Nqd8456jOE/RSfvxaVKlpDQrdYR4CE3p
	 7/TsQbdKx14/vuioYeQyHLQfM4B03qgN5ZuKTx6lnP8t//wudKRIjND8TnuXs4kiDR
	 d5wC8B4fbYcBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D43C369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493739362.7878.17681261792314971916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5dd28a83c791ae0194326525b092a3f238f6363e81d3acc8567c7edb8e257a
Date: Fri, 18 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744937393
