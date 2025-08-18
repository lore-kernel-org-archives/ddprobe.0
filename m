Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69423314C9
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755541794; cv=none; b=O6y7ud9jNHt9ODvza8WA9aBeY1WWcqJaFLL+5mB4pHI57wwldGaFLtlV1b0TRcTJznFYLo5R4igO4wVa28MjDcfpAlhRP6ZlzcaDATBfRFHUnHkCBZ6+Ng5D95efsV5q1HEqqPCq51RTFIAQbyccp0EdBHHk4PZddnUtxdbfIuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755541794; c=relaxed/simple;
	bh=f9dQG5SvDguMRdBKvYvufwSVctB1f2zGF5QiIxtHXEU=;
	h=To:Subject:From:Message-Id:Date; b=Pn2QBh0/chbXEcma3qlZ4Svgp6V/u8ppJScNtqO+hSsyAPPX1QM+g3aGZSVguaiiX0+DlSA1H0jtF3W0uOuSZ4Df9ID64JDmIJSVtw9ah1+Bq5cs3HNGuelAiuhQvVKDOcgaePau8T9lZgmDkLsdBsIDJhZ7UgwOLQBWhITC5cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2dpm9Xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2dpm9Xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2734C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755541793;
	bh=f9dQG5SvDguMRdBKvYvufwSVctB1f2zGF5QiIxtHXEU=;
	h=To:Subject:From:Date:From;
	b=u2dpm9XbLmb4mQS8XQwOCLFXnXWv5s0K4yeFxOFZNcwY3GG+XMIl7q9bznvZrIIGg
	 su5IC6DiCRK3C6rzzyKYNyyuaqGjFLEPEkLfZvfu84+g4rgrj6/4ATJGrtH/CxbAz9
	 0BNqy4jndLie1FrLqXSO9Ju9shXNj5UqID++X722H+YRJ62PIRiiparOe0mH8Mos87
	 2xwoX0wRumwz+tM8KkhByS06A7hx7El4IN+BN1N2yh6FGSgeX0rWcMw6iV19z53iJ5
	 7ob+BDEU+QFtMlhivGhalhgNG7piGgKMxxpExeu5bmCzz83lYXKwtDAHbL7FfxW8Yv
	 f7d5dDXMLLHmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F5CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554179358.4713.10851567489607856914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dab12e03b74d3f175dc65a5059df877fbd22879d4d66f0a122f96315e241426
Date: Mon, 18 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755541793
