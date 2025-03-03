Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614651F12F6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741030734; cv=none; b=eyHO5r40/hcpFbYYg/fP2K0tedBcqcGXls2pqQFOmTma7DgBCeJmmP2ysSQzzc40uPr7iBYimfj5IYtxhkpc0DFJ5UluOrQtA343x2acL2xv9wkqhQExjtSCEaUNMIZ09mcmt6VSDKdb3THRhiSeSMu7e3Zh41UwWd973MtjYLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741030734; c=relaxed/simple;
	bh=OqgKupSQOJ+N+JOl+BHpiXD75hBQt/aLnBQjaehklcs=;
	h=To:Subject:From:Message-Id:Date; b=FnkzunTI9L9sI98+v5olbN0y8BpXeMMOkktbvflt1M9Vr9bNCiIDd07RoyLAWsOBLWSG48eSRztzwBlGZ5erB0YBE7vX7NrU+WVKc132CKcRilvj9CqboN7Du328ntMml6BVQvevaPo9e+aonzUjrYgA7DySZ/EvX9MYjAOdRZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqgfP8d8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqgfP8d8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77ACC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741030733;
	bh=OqgKupSQOJ+N+JOl+BHpiXD75hBQt/aLnBQjaehklcs=;
	h=To:Subject:From:Date:From;
	b=JqgfP8d84oZfwjTxE9vkAzwSH45/YJmPBDMLlK4tuDre5Ovu/CKdTqTtGW3lJpz+h
	 wBr087Pj4J2ULds8bqkR/HiGgP/796NekOTPXfnqBbVDmS1YIGBGefzfy7tksYswn5
	 XZVxSJPf4mbI8lrIVCEt36eEEXOm45+lBCyErEPECouP+4WiRdtuzPTLWZjxs3fdN+
	 nE12Uk2SPTC2jTocniEsPkdYQrlCw0gGWQgjAjOBn4D9VvjgcI5ZZ68wZF3U1uYivO
	 sUYzmZWTGbk/TkU20onpyASFVYdwQHAMnzC3IHBrduUjWaGwJyWtxu4TCvv/cWc0og
	 1fOcWaeK32N8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02F2C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174103073370.14400.9471817624341243291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9864b9db2fa29c3f8f9a2d18abe514e34700a0c70784b529c279eec56b829910
Date: Mon, 03 Mar 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741030733
