Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479DE31D375
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787611234; cv=none; b=A0mQ6/uCQOJNDlnwegCPC4be9H7zCwH8oZH6Lak6E1/6VTTwlb+Gt2qI0irTLtkCjO1tBHSrK2WAuo6cPMxywYv2pomG51oYX+kPJE/0aCvUvdp/2lBMNnHsw6mWZumPsgY3qaER3NBgaK+s4buFOp4zfuTVwht9UkSpejiWIec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787611234; c=relaxed/simple;
	bh=bScq2H+sK3SjGK3CwjAlN1pbPqYx8Rb98wC++xi/5ds=;
	h=To:Subject:From:Message-Id:Date; b=Nz5v2SiUY03aPP1bRh41OVC90fGWXYHCW3VKidozwtIREyn+u9WU0efplQ6gU1s3Ps6rup8ilnUuWGVIod/zCTrf71onvpDKWgl0Hb+igoa0c5X9t367mfAhBU6rvCH2Z8aRmda5q0yxu+UlUTPZUznCEZIC2b83ROIvqhiaUrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzGQFyfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzGQFyfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CA8C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787611233;
	bh=bScq2H+sK3SjGK3CwjAlN1pbPqYx8Rb98wC++xi/5ds=;
	h=To:Subject:From:Date:From;
	b=JzGQFyfkTklDdCNxhNPi5TvrN+2odbEvne8iwvegiKhZR0VqS0jT6pZss7sVRRc3I
	 Vd9rba2mrrGIAFAKqh5V1snky9/G9c6MEKODvDuChb6PdnBEeInhzf3l4cVzo2Xvie
	 EF+q705ffLwZ4G+rQimUsFnPe+N2vdh5RAb72lh+fMg7N+8YdFnJnIPhWeIK0K8Uy1
	 60AeoNpV6n+GXOuIGoBzwNQJtSsRZMlBLnEMI+BPJK5KF3L9WQcKcEjyzMh3o4wWsV
	 LxLvsn33WCRwcOx+NK04+qPdUGJfbEZ1M4WyM60rUZEAfTdHOeRhCJ3VV/TJ8g4I1f
	 xvAstmFocG9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB72C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761123369.27315.7663562715740303358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7687cae2ae26faa52972c81600dd255906c9964f32f9f54f8294ce0489d365d
Date: Mon, 24 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787611233
