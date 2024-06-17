Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D5D288BD
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718596703; cv=none; b=F0oCVIFI+MJfdCzNvuezVFeCs85zIwNatXfw1SP+cUMzTzzPnvgrlluaTHnjJhSQx2661r8OYV98/PdQdxe56DF42+hy3P3Bek1jZfEH6SXlz3T/MTAKVO09Pc5sM4QMOFgQISs367R2boFBqrNTXyGLRmrCe7o/UxcgGpodfGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718596703; c=relaxed/simple;
	bh=112M0ApmEX637GmD0pcDOesdxmdsI2G8Xndgrq72EHg=;
	h=To:Subject:From:Message-Id:Date; b=Q0Z6evlsgDKuVKIU49lM5V6z7x26JAaM6tAtg8VLDyNo+aGSjKyYZEQiLeFnlRr/2zHhA/Iw5EvLwf4fpLJJSogsqIZqHRutOlTcvbqP7XYaJi2waAdR7VpCFBPGIEdBBjnbgTaNxhZkNfZpH6O5LrYJJDLkUWE9LvBzjLdOyKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq01kHtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq01kHtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFD0CC3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718596703;
	bh=112M0ApmEX637GmD0pcDOesdxmdsI2G8Xndgrq72EHg=;
	h=To:Subject:From:Date:From;
	b=Tq01kHtCHWQafGIwxzbtvYaSpE0Tw0GonX3fswMBSSzLPJEq8WXPHgvlNUy2xwgGk
	 Buji8kRpNGN2V5UZ/yuLuBZOFd5L+nnt0PqSYzmWXRl3TAs0Ky/EaFykeIL56fYpxO
	 z2pPTfQSVU+S406l2SaA4c30ucpYrV09/gmMR9kVSm6rb4pTXRe7lx0xD+i6yOytrq
	 7c9DIG5KRxtSE6jyFPN36KqotyRMbevwZv8Ymtr0oaLnNWhySnmrRQc0HTPIPEdUFv
	 d2imNz37wZHL2Zf0wwgSIkPSL4uCx3Wrjb3uZmX0BrFNNoEKAhgHGq7d4BSmQP16dL
	 1xu2lgi+nLs+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F7CC27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859670283.7993.3542284990579060762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e5580bbe1e560d8932c9cbcf89da7321bd79638a995f51bf16d1c79feb8f12
Date: Mon, 17 Jun 2024 03:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718596702
