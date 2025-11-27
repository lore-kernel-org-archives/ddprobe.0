Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE041DF75D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764223974; cv=none; b=PjWyTijUfaDTz3AGebP6QwFT24/MfJFxDAQhgvcBcsU77BTUpmYV6bsopp/iJUaXUh6CJ5oiTfYWtXjBF/yGYyWAG6CWiz9TZNAVIYNVwtd9fiNI+C8RzXno6sbO1Rve9gxgB9TweTaD65pK/9/GueF/cGUmk33EBRZpmdXHEQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764223974; c=relaxed/simple;
	bh=ef9Ae5JfJC/+xIGHY1jjkYRSvQPkYEOWPo0xosDufCs=;
	h=To:Subject:From:Message-Id:Date; b=mfYAy8I146hxH/4dgO0t4lTwE/vYvMiBSWhZZsqtU2szpcaSN3cATQj61EkE79OMEcipq7vz2yrSlAXeWNAUbHyjAxNVpnFf/+VeBJ2Var3+Idv4OTEpZWV6ByAYLY1v8I4lcNGv1XUfJrMIV2oMAGdtETGIgqGW7nHsYt+FXSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HepF4/4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HepF4/4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFC2C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764223973;
	bh=ef9Ae5JfJC/+xIGHY1jjkYRSvQPkYEOWPo0xosDufCs=;
	h=To:Subject:From:Date:From;
	b=HepF4/4YWRyVvK2VQYvZ4z20w8tvXBFYQqAFIhA82acMzCs3uw49pCeYLtKCWPQPI
	 zbxy4vMjyPVlmnJDgdYcaPTQ5DQNHx93YkZ1Zac2KiwJyumWm3k+VOS+CeMJR35ATp
	 Y2BCAnLaC8IDK8agv8BE356Jdmz3hC5kGbCF8MO4B2UXSj9jvi/MVfNBxeH3BiSs6w
	 OyAihXqqCFdPQDDt2qrn7h2qaHIvcItbG8TvhVWZ1KD5pI2pK+ZzioAsydxqBSTRyv
	 p23o7gcutg5PgJlNvwu/DMwei86WqTnkX5gZH1ti9hZ9A3GeIK8yGUswHcvNsIgXpq
	 37kHjRs8MlMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71ABCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422397366.20928.2474112090966644173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22cc0a2b0875e00c59c1b297ec33c571db75c5ebf9417c1fce42fa89df97a78
Date: Thu, 27 Nov 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764223973
