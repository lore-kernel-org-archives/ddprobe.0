Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1868614F9FB
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772915094; cv=none; b=fDAtNtDEXUepOKddll2MSGh6TKvKBrLOOSJhsLpZA4DpqTXvGPwq2s9igykIPREgStOrAprQBdYtKQmb/QFefZnF1zwDnFFpaGUkYfY/4ZCOKpfmLU44F5Pm11YQUnss5L6u+BqSbjAcTnPkcV0zIfY/CSZJL8xaZWnDh+ZMzRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772915094; c=relaxed/simple;
	bh=zipLU+xfLxp/7JkB383R7axBfGJ5EavEk3fMR04/UpA=;
	h=To:Subject:From:Message-Id:Date; b=f22w6iFhA2P1ZUTv/CZ+HoyUKNWHm1bB/iI8kfM+s3RBP1xuYfbajX2n2Bgw9Iw3HDmYk92xA7Xb6Qp32EBSdE4UY1FFrGPB0NqMaTA6knIuyqqFJySD+hm4bMPWoBSU4G9WNZWHSDKyu6vIRK9FhIWAVFmNL+yztQfKI6xHyxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjtoYlF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjtoYlF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A887AC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772915093;
	bh=zipLU+xfLxp/7JkB383R7axBfGJ5EavEk3fMR04/UpA=;
	h=To:Subject:From:Date:From;
	b=fjtoYlF/9grdyolPQxGYrWAg7q2ym0VEhB7q4bu+uiuCYS+j2iRiwIPN+XtzhDU0M
	 y41yWOqr9ITFuH8PlHaoLC35Gv+NxrsF3gefMKRxmd26J1E4OQmlYptOKwMH35q5Nz
	 Rcc/9xqBYmaKBeD1JhzvrSDpPAhe29HT7mc3b9aU7akBZeKEbDxq4zifkuxv6kXr0m
	 7GozqLBNO1a16q8B366zDSa3F4qGm+DFvqpKJXSemXnA7iTEJGVhykp5S5LhQIE+xh
	 JkpXss67HqhJhBque3kGp+q8x/N0FhNFkRcaLimj00DXt2dsxnWDgK3NtfbIFnq8eo
	 iV3Htc5iD/e1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95010F55105
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291509357.7409.10523325773169028824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb65ed437df0d550657b6c9815c0076b67e2aa61cb9dd56cf719b0065fb6bc06
Date: Sat, 07 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772915093
