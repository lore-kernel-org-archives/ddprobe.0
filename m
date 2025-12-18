Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECC5298CBC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766101434; cv=none; b=nZdPdF0NGbQYql7z9UxtiCTowEfkHeC84krON2pXRFCrkKU5OfbMCnnMg540fiJxHIteDvoxcNHWYcwbLJifdCUl2Bw8NG+njma4QJhHBOkqLTD9179QolF8CfYnkxJNyc+Lc8//bDK81dK20zXxqoQqauYDymEJCsN4sr8AJUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766101434; c=relaxed/simple;
	bh=LfbKs2+s87scbkhBMFVQSGBv/Z93dyEPnK1SBTQL+1I=;
	h=To:Subject:From:Message-Id:Date; b=r7xlMgsrPFiVtO+i11nQngHqQJCd6/WDIZHWaYBjVdFdvx7pIfO0ZP3AZ2uUlErf6J4gf8SdpyCoPz5JXYCtZzH19IMtAI8sKALUIyUX/BpD5nm6HOtu1qWGnx8d6aw4seQM9GcNADrWYuhsQgztq4qL+5NPMyjcp6RA8LU5oUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzM5CJwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzM5CJwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DADC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766101433;
	bh=LfbKs2+s87scbkhBMFVQSGBv/Z93dyEPnK1SBTQL+1I=;
	h=To:Subject:From:Date:From;
	b=kzM5CJwxRF1raJqwtBEiqWhyEc9NPsVrZCfL9ik9v444OTxpbAlh+mYc0/JNYZBtV
	 +Il5gdWUBNLlY8TkpddJ8xboorOz3iSZAw+PFjPKkxtP0TYQlAITtq8HR1wY983up0
	 YuFuAj13SsmFEizJ3CPS/fginvCdNyeHcv+n+KTfWakt+xf1GdAVhDiEks2OnkDy2N
	 u+KgSDBdlpIqh/stSc0jgiVJ5ec/5tYurFTlRTDM8DrSkNeE5KMkNqdxBXp0zFsO64
	 GVXXzuoErTmgxPM6ImUEb1yFwg4uoMUfXtePw4iPS9mCEMc/i12qlaSKoDNjNrWedC
	 wm8qLo+8NAEsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95197D711CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610143358.26218.90224002151896506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f5ee67e2d75176b54577f987859b329e1723fc5556d389bc94af8f7b06f763
Date: Thu, 18 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766101433
