Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3572922097
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764636174; cv=none; b=u+ZPhd3kRo5/AbEyWreE8gzpFZTYIcmd97sQRLdxaBkFBrtrbnHa7iv4UxjzJJObqXM3gByQj2Yh3TXHjAWBK85zLcwMYBfLPGr4pfUaDAFnZI2cHYIZlnKrIsxuiP8Y2YhuogCHEr+7iSmgrUW/HxbjWGvlIdZOcWrS+21gAEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764636174; c=relaxed/simple;
	bh=zspR5LnCyJWI/TATKXHzEAra+ZK+tui/FBJKLStPL+U=;
	h=To:Subject:From:Message-Id:Date; b=PaPfzs4D3fS0n+jFAB9y9Tr3LehvNOULtcdmSizMcki3hGae4Ct6HxhTlBYrlAixEhVDboxPIn4EzUo6mDGFR4aiqP5IuktyIJyyvu0r0uLY7UeLdyoXlsKzwzSyQ2/0Fqir8JlSSAi2NYkEXQGRpg8vPVGRJwIXHhRSo6HXF4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeUwJpah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeUwJpah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2503C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764636173;
	bh=zspR5LnCyJWI/TATKXHzEAra+ZK+tui/FBJKLStPL+U=;
	h=To:Subject:From:Date:From;
	b=NeUwJpahUpe4DGLtwBewu+4HmmBp9l1IzOxJrwKgKi+qjK7TowyZbmpB+r6WWd2C4
	 IHWSRhwj9Z9gRbfp5jlF0LXFbjuGRRmc2rdDH+ZavMeybN6EYcbX8Yd3y1qMzV2Kky
	 vzEvSH4FEJztrVGgw03Nyw/FVfe88bHkQ1/qQL9XpvotMzjRReXD+tZaiMdKvr8mLb
	 L2DDcVfCHdRYJFAZu552JtGs7EzG9xz0wn9TpVtW9cNJRMBhYB4C73Q741JCpWp6dg
	 WLAOxxOPeuhfbdIaKnt+mLK11UuzAWQMmxPJu87TSZcPPH39sHJCzvWWodQLHf6dcR
	 QAhgfDWoBL85w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA48D116F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463617361.18650.7912577963067667764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fda790515a3295ebad14e0d09016e7d76eba788007fa9ad4e027f8d482fe830
Date: Tue, 02 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764636173
