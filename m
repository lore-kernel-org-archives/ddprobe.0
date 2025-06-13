Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E8E2D12E1
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749822594; cv=none; b=mDgLSq+sRpiLRdJ+xyfKUg77OAqvW3oDTyNwRuYOKXrCSjp4WsBSzFpIpA2QwvPds0CYM+3heixkwLuuhyeEQ9nt0PHY7oGpEBimZpa5OFV9JH+VQvC4jk4lfsW/GpJq1lVsU+wkECsjT3KR2ytC0mlRSXAaiRnfq4icY1OUhbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749822594; c=relaxed/simple;
	bh=UktuUFMSYSzhj6Xq4kdwdUYMypeqFpyPH0HqQj4MNBk=;
	h=To:Subject:From:Message-Id:Date; b=gzcM1qLL/uEA4KnxMJa9wfGH1rFlX0ZFhWErsHOwBmUzVQzMudIktdZj/N8PTUGyRmY142tVu7TgpPYICgoB8z/IYoHC5RjChEx0bh6kqA7OQMD0jjdXkDitIFXIu42CA08nBdhUlmC6ipNX6isH5NhCsIKARzpOSCFOPw70Czo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDEuGcDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDEuGcDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EF4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749822593;
	bh=UktuUFMSYSzhj6Xq4kdwdUYMypeqFpyPH0HqQj4MNBk=;
	h=To:Subject:From:Date:From;
	b=fDEuGcDgjEhMmT3irXBgsZp7qkLS2HatTWGzpkJZzmQ+O29IyChC1AHQV+egY+0sx
	 pTrdJXLH3r8GTeKAT/L0ELAfQB51DdKzosuneOJAnyFmTLkCbSNnHWl+kbGLtAlOgX
	 LnjaMmwg9EqCISMpVpQnpjY/oWLUtsO4rAp/1GjHac8s+u7LaObpXDZ5IXdrDvZ4Hn
	 8eShyjBbh7HkhhrbnE3JjQn2xJtOvCMkzVQr+OrPIUYQuT2EkL9FeiWRoS6bueBs+d
	 pso09nuQQ4D298tZViF17ZWfM9wes1FhZSwaq0sqxQpSp/xmpk+hGYIWQQpNHhe9pF
	 NNgHP1LYDBSWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95201C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982259360.10185.9368669643247326511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777f1fef7ed893ce7f525eceead13d504f958f24108489fd45b02d6ad0f9f3e1
Date: Fri, 13 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749822593
