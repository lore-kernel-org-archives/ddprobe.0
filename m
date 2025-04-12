Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC2F85931
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744424994; cv=none; b=GFGGiYGlX5aMA+gxetBgoSOr0cF1NyAS+gZV3gY8oJHMxc0UseMXEqYjLiUW04/YqthjJsI0zvDWrb7OIwkX8sSfnD/sYSc6YSRXAN0G5+oel1hvVXk2xuKOupJrJjrx34vX7rW+4eb6lsiM+e2epXcAYmVMjVNP8NDfyVJWhPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744424994; c=relaxed/simple;
	bh=fUoRQp2RO7l1pWBeGX9naYD5iStA/Eq8E12KluBoiyY=;
	h=To:Subject:From:Message-Id:Date; b=GW3BBKBQaUdiRXXIZ3x07cL+72saNsAFnyGI00nlu91VHfqZVESXRmUgaLqr+Q7hH3xswquaS8cbPEjZ4wTlq/gPEnUiFBe3TxD5N+ipbL0j7s0cmhjhHQ5JapPoAuGJvpQGb2SsdGgq/1fmmYRFEvy8i0WJ0PBRJ73SZ4IRoCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAn1XslU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAn1XslU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ABBC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744424993;
	bh=fUoRQp2RO7l1pWBeGX9naYD5iStA/Eq8E12KluBoiyY=;
	h=To:Subject:From:Date:From;
	b=nAn1XslUyJZbXACrtn+rLZkTXUGmvZyitm8nFcL032slXjrxnVtjO+LhRc9OxOAyx
	 ynlI7wVYPmWNYbabNC7cM2Sw/r9YICy6l/Dm24VzNzriOJxQuIEG7xMTcajdekO77E
	 4VfSQrGFV/ApLLMqnu0pbuPShV7iocRKP+8vDqqMeKKcEz/nptBFpR6nknAqSOxdQI
	 e03gy4tr5X2bW0+sl33B+RBoQ2lpVy0bDhCR+bM92L1SJ48Ag6Zx0NND2k8/6A8bDH
	 uaW/n488PB8uULP/B+Ihr8tXJREVecEFaYtG3LaMVa8kqTXctXXMuVbEdhE7u/JVv5
	 9yWMP/qYbl+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ADCC369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442499361.8250.15609723342639054042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8eb5707f66d34d8226c4b32ed9793263489c438bc3c37135d0a32bec6a54e22
Date: Sat, 12 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744424993
