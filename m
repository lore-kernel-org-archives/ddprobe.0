Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D29B259C84
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767767634; cv=none; b=bXHnvBI9m2PHqXQ3PLJqZ65v/gPrEEglNXSuNWJC2dbJWjVzwtuz5eo2fAnwsgcFU0LLh6cunhYGs+QAxJgDuB8WKM8BGKhc4cYrMOtf+BmeLrioKQgOAH+2WW8RN7CLzXnH7kHyt2taHqDHm19q1xfMcqDuOs8ruyIyvRohED0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767767634; c=relaxed/simple;
	bh=XpG7o3QzBEShENZV/jqwU9uozlA6ulQpy9rrRBZ1nvA=;
	h=To:Subject:From:Message-Id:Date; b=pxdMQO1iNgzGgdjHVyqo3VAesn3FBp+YJhrYejIUwbMqfmaXDoiRX3bsWM1RNEVYyAkCIwEvorJj7+UEQz/QrkHRth6x23JixpccOQ84tJRt4iQLS3p+ER+gPwuYG+3AjXprsmR2uVSeVQpp8WFWVExfI3fjVpJh48HcTOCsxlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQjAtk/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQjAtk/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6276C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767767633;
	bh=XpG7o3QzBEShENZV/jqwU9uozlA6ulQpy9rrRBZ1nvA=;
	h=To:Subject:From:Date:From;
	b=oQjAtk/+i1DPRqggZ1QPXmZ+ll1l4CwHfz3nOs0gD7qQyvySjHx5Nw9ZAYinOWvCj
	 qcBNmh6sc/uNJRAdW3TsomJnuLMHNiR5h3Ypj37BXzxpl9jUQpXFKHQ/EQybCUwN/1
	 YzrLU20qPnIcLHwpeGCeWkaAcDsPd3Vzx6Jm57VodUVdFDdk82FChJ4zswT+Yo4Qgz
	 QR8r5ZCS2OeMlyGJKwr5zFTnbzuLd/aIzX/jOj/PQxotlkS2ceIZPtWDxyzgRPq9g4
	 bKIE0hltrJW3Z7Uh34a4HXZ2lvWWZLZ+iW3qqsC9WEGPCts2HINlno1oTja+MpBM06
	 zsYzgbsTCbqWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92628CF6BF0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776763357.15783.18138846755718208708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee5e7386c77e3b28cbc6c41aa4d2920b025a910d2a480db587c5443c3ae8fb1
Date: Wed, 07 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767767633
