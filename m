Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11C171B49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706654297; cv=none; b=hN/RQviSoPmd4FQk1pNdV8R2tbG+7FDXcWSMHIkkJKwULZK7ffNkQZxxwReDocxaKZECyNv+4sX8q9ziS/EFnGs2sw1Wc/ezFiC/lComRbZwd2AAbIdr/cK3RUEdyRUF1y6xCBvTVjgKWXMMmerSuP9eIGqX6XRBj5U0bqwMIzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706654297; c=relaxed/simple;
	bh=RxZ2b+04qm6eVjAfqUfbQxnAHD8q6dm6KOP9zCgZQiE=;
	h=To:Subject:From:Message-Id:Date; b=gLw7lb4af5ELlEADbLXkto2ONz7mK7UCWZol+4BPBGooHbnJ1zLY5ETHfKqSDZiBaUc8KIF1jfsVx64COCphB8u6kBf7eJnML6MWI3amOfz/y0kQKvCdIhyULgLN65uVHe+lAA5mgf0WoCO2/ceMm7RJfvztwXfzckNC9aYuL/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLM2BTRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLM2BTRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA80C433F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706654296;
	bh=RxZ2b+04qm6eVjAfqUfbQxnAHD8q6dm6KOP9zCgZQiE=;
	h=To:Subject:From:Date:From;
	b=mLM2BTRGpSnWTKS/tHMBVjKf2zLrQAMbJFdFvbvCbY3L9wtdvSfZEBT0guczDDqwC
	 e5H1v9NgJV5RFeLLoVkn33UkLzn2jieu/Ie2qr9nUuClbyuqWxQIFia5rf+rhfJzkW
	 qT6d9BBDBdiyI5+sIYcEBEkydSb8CYAY8m7wpGr3g4uoNIgb+bnPI+5SowbcpGWVvm
	 Jot8FNw7xN0UKGw2uizF+ap1YNCepzj7MRQ9NaBDGpYq29cR5PpRfq1qF4mhLlBe9m
	 RmZyG+Vy3lNd2D8NQgo9zAAl4dhonP5KHLup7GCuwBeDrmSCUMMx6nn4LgQVpMtmLS
	 W0Dr+U4a0m50A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD98C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170665429637.24185.2186779081005280104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ac7711fbecd8d5701b50db6c8b4d6308251e2f3c2bf1c2e2880d482cbbef8b
Date: Tue, 30 Jan 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706654296
