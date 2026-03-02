Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A718280A5B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772474694; cv=none; b=B7/o5mTUMe2G85W1ffvZDxjfYYt80Hl+7vGejtCK+Ipwh+m8bbFul/HzEa82DRVseaFZybSNb+ui9kJBUlbe4nmrPLdQ76bAhDtbUYA/lv8GA6JZhx9BF6F2wA4r7AotbvcVAkc50EZcIuUM1DTsYyXFNjSTJY5fQ+iWWXom3UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772474694; c=relaxed/simple;
	bh=jJ8rEwJ+KTp45psiFPUcN7Bpcn/g2bmllte51E+9t0o=;
	h=To:Subject:From:Message-Id:Date; b=BR+UTobWZaezQoYGLszcDTPcr1HqPjWouIPxlYJxA3JgwT573T1D27ijjy9v+uUgzsHQDLeVGmCNS/7LYSjB2PW85uc/QyzXuRlFQQTAbwf0demEISpNH5KXZE5Vs/zlPfacoZwvtd2e97LMYzNWCgYQ9uPyIilXGMqQ/myS6cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRlazcIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRlazcIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB666C19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772474693;
	bh=jJ8rEwJ+KTp45psiFPUcN7Bpcn/g2bmllte51E+9t0o=;
	h=To:Subject:From:Date:From;
	b=XRlazcIY3YrI/C0KtTNVgvlW0t1a0Uu5+vNTnL+RJTAQi7xMeoRFj6Yb04ITt8ojc
	 CxZZ3nU4xoh/yweSjCmUNUonTWHRv00nXbMzwE+66tTRjWkfXWPbZy28e3LNr9g3+z
	 DUfO6ohL5Fs6dtO1xl/c+zo9rdI5f2d6JugoDIacEIxprBYbJV2+6mp6fVyMGZgo2Y
	 1aZrhhrS2/6u5Z2I3VEsZRFOp/nq+hT1C1FjNmEs1OWeZJQFSOPapshia9eGSznTbv
	 CygzAI6zwNXm5C/uizkhOV0+jm4hwgnaHt2WZRY9ce+qSWwDAMJLcye3tyQ4XIgcxC
	 jBbbJcEW7HwOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53A9EB362A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247469365.5220.2743553054366327921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcae603dc01ffe2b30a64d1d7ddff4f59c9bfc005f7cb93ca5e650cacffdff6
Date: Mon, 02 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772474693
