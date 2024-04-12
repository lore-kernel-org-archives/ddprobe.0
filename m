Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D19584DF6
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 14:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712930963; cv=none; b=YXgOE+3OKADFygdKgIWOT6VbwV0XczSXuW/NgzEWdLfTYGcyqbrD+uqEm1UhAwlkvOghtwGs8Rwh4UJazMLvFjzWL5jWczqCiZK2GUJLGO1QRH9xr6Go6TRIEsZgjgD8S0VAj9RVMlf6XLaRn+qQxubExt5PcV3DLvfn1xAa3AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712930963; c=relaxed/simple;
	bh=RREMuC+A3EKtgNy1l89gFh2BO2HrWQfK5onoDvmWEJc=;
	h=To:Subject:From:Message-Id:Date; b=WXCGDDrqyFgMhjjXE8LMPWpI1OaFpzwWjuaJntSC2wW4hYVLB1Xdx6RGRCJJ+EO2xPyTK4VKi38Dg7A+deoe2a2+4lXHlKQZIapvUkcY/1olWL8rSSvpMhE94Q6C9MQRYewibXh4fpbGfd+iFIqbp6RnuV0VlE9sRqPKOWtvk4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxtqosWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxtqosWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCFAC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 14:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712930962;
	bh=RREMuC+A3EKtgNy1l89gFh2BO2HrWQfK5onoDvmWEJc=;
	h=To:Subject:From:Date:From;
	b=bxtqosWXkuwcu4b1iucTQmZKLkm6RwtMVOsvDygl991tmHsG7ie82Xm18vIal+nra
	 a1JthhU96uzKNtA1stjEu8689sYwI6TNQPqg1yicfZw6yek2Eju4BEgld+UldiYTBH
	 M5C6hUfkagnjGb9AfQoNMzx1GQcOJsi9Q5lRSAuZhrYcgPtA+uKRuiL/HmjAaOxBB1
	 rTJby76Car1lAvgbb0gPa46OT/g3SMnAam3KyfomlEBu2q0UvnIR4hc2PRWPM3Zhqi
	 ZjXeOrLUh8IfMheFTiIzC3iaxJv3OXxwvipnb2sBYVEh2HSn/QIXppmUAKHhV56mNM
	 Kp9oSkc872ntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1844C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 14:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293096284.3648.17301075393669168871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d9b0a5776a18b3f5fbf31c57fc264a684b60a7b1138d5c0d1c1c3faea24ab2
Date: Fri, 12 Apr 2024 14:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712930962
