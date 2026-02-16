Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61E22D739D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771236894; cv=none; b=k7995DMBjdaUlI0HaeS8AQuMafXEtcSrnvYpp6Wb5yI3GtuGb5NmuZg21Yvyey4tCmXtsqW02lnTEboZh0xfLu2TjzytM+Z6jqI6TkGfj2cIv5jr9THX2mAt6mzAvMmp/QQN8uqtIXc/AqqmWpOI8xs3C1McZFpThqRAiugfLpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771236894; c=relaxed/simple;
	bh=wuapURgdbCSkS+c83Q4Ps7BpoLqhqM4K9kKLqG8EjDI=;
	h=To:Subject:From:Message-Id:Date; b=qBpFGasM6hzgM38upNizkCp7HLf9rTQsa40fP+EoWZpDj/XXsw3ozHU+FzCdiEywmvThmOcmZ756SMNRW+xW3SMvb9+yku18Thrbuih3/0gMJCi9pppGFJ9rF/xdfw3tsKv5YZcMZpkJX9AmhghaoAdLMNJedjmKpagS0IfeaHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKjOpPRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKjOpPRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6771C19422
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771236893;
	bh=wuapURgdbCSkS+c83Q4Ps7BpoLqhqM4K9kKLqG8EjDI=;
	h=To:Subject:From:Date:From;
	b=LKjOpPRo174ZbwNG4Az1Dp6d2QjaM8Tnjg9RZkqurNF6pwXphxLn8dvhN+unof1X0
	 tfHuSRP2bd1EwKCcpDFGWlbb0B/TEJhQzLEnQW2c3Qo4kx91X8V+RbBVQGMRpkxrvV
	 nlz9ynbg9qyRl70PVzXbVSh1zW/8P8y841Gbe7M0xUsjAnKZh2BKzTVPxq20cS5/I/
	 UOdgDYetUCG7B2+TuQyxY1j+kO2MRCJO7jTI1+UtMEnrEzxlzK5ZzorJvSXvoo6Ax/
	 xy5djWZZs03zpMf/HTMsVsp1zkei1dTaOXtwqd5P+rwQG6GZjWGLxBKtqMJSZr6SMs
	 4UUU6u275y+mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DCEE7BD88
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123689361.15000.12071956479922005345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7672b5e2550861fd3f47cbb41e61e20a8bbadc1ee8ce3b40843a842e23b9bc
Date: Mon, 16 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771236893
