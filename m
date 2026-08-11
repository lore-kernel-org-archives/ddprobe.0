Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A03240F744
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786440034; cv=none; b=DX9d5m1xy2Gp4fnnFQREyCkkGKR/Gvg1qD2wYlbJHTAhNfe4A3iND19O9ZMKhsWRLMZ/Z1i1FwV5Yi5yBQziQtO9JBU7mFzEdYr51Eclq/fp6GRInQarZMzS2fKbFnZ9gaoT5SBpWy6Uzy5KTC99eOU0JTNZfFjzv95472eHyg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786440034; c=relaxed/simple;
	bh=hO0SOskm02BVF6LDp15cvZYcZssCjBUbn6/1m0whrCQ=;
	h=To:Subject:From:Message-Id:Date; b=VLXZ1WrdgP/3ztB6yoSMYtV4HJRdT86xwaNSCVLFAXtV4EukzovHMzvwQ+cAlW9/9UhSszXnObN4Va5YyuX5KV7RCda/szv8a02ykOWdf5wAAUAZufS3KpTB3yiwptg5gyrnH9Ln1WywDgsqjOlqDM2YLaVTRtlpoBY5XSN6BgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqNClijc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqNClijc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3C0C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786440033;
	bh=hO0SOskm02BVF6LDp15cvZYcZssCjBUbn6/1m0whrCQ=;
	h=To:Subject:From:Date:From;
	b=AqNClijcJ7nYOLRZ29XbUrKP3ZwUH/hqDcX7m0xZu5F7tjNtjdcHLOmh10+xfD6gN
	 KzWXUvj72l50skAPIO854F+P37/oMbR3IgDfFTYTFQ9CYLZKZkZYnVIUEAENK74dsR
	 ZAT05PPCotVu4xHkKtPwpunmofK0jiPCQHTGYKNVlQXP1jSPYNEdU0YvAPcBQwPrNQ
	 LdioPXVkH5bwqrs+CKrA7TTBaZqcvALp+1Tjrg9osgj7Y8Ei3d8aPBcc9t23s+ZknO
	 AvmQCgGQ3AFWZOotrJ3bnuYaU3klbnLhwtKuGKAH6/K6WCkZ1QfL7molr5pQCxYM9C
	 HIxdELn8Zuhvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8495C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644003368.18423.2511772539490899789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53a73c85ea55c8000e1d886def74502bd6fc3aa7ab290a2534d7f1407030233
Date: Tue, 11 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786440033
