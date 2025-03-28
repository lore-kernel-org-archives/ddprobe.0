Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DCA39ACC
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743193194; cv=none; b=t57X4alS9gHtfST+4T5rkKzOKFzvuMs82AwPi+T0XnVMrZS2ZYp0jbXUMMarQRBgr6OKMZO8OxzLHTnlxtbVVNH4JIJw+0FBVJNztHLZmBvWd6biR15pTRLObXu3HlolBLbHYeilcjeUuD3Wp6cVuCrk90oUiwBWxSApy9hb888=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743193194; c=relaxed/simple;
	bh=MvI7ZOmf/9/dOSZUIDcZg4DV3Tlsn7jprEevwTPNHDo=;
	h=To:Subject:From:Message-Id:Date; b=XExLEpB+9tLMuyHg5fZeo1RGNnswjUWNEY8nsid7KyWegdK0nta6AC6DEb407M+qe5z9GWGoWy5le09C89/v3FhFw8lj4FUjKdbIxeX/Q0/PsHGiNevPOpNt94apK0glv/fZ0Ih8GfbqBUQ/ghda03ApQvVOwHSbYyecuWKRiSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4daqtFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4daqtFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4808C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743193193;
	bh=MvI7ZOmf/9/dOSZUIDcZg4DV3Tlsn7jprEevwTPNHDo=;
	h=To:Subject:From:Date:From;
	b=F4daqtFVJRPMNIxhTUUj0MgLSgceHV1NHuygmP1BpWcO/bMm7hwQz4aWrCnVloYL6
	 2YOjaJP7UNP8UAuXZ07I/fEJ48tKJks0+nvI4F72GGCRpMQfzn7e76elmtPKcz26N6
	 yKqlJFwNR6l5+UpzBfNxdjjOsCVsQLduALWltktv6+Ei9gBI9fkG3jxJD5nIwfva8O
	 +vsrRE6ywFPgRUiBPUrCOt7nSEnKYKgYpA6d1oki1BpswItF/jHKLpUlosSyWKNiNh
	 jTX1kP+wOA1OV7cd30fUHG3ljfaR38DdOzUbqG2ifml8BSh60kjZozCXUPGQJCr+c3
	 UFeDySGMtIYOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0660C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319319364.30199.1964800268772163655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7eed8cff52d6570767e9c810ffad5241cad0e2a814a55906c395d0a89ee2a0
Date: Fri, 28 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743193193
