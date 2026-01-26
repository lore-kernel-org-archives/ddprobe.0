Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073143346B5
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769444634; cv=none; b=uUN5FQo0xlVMxfoASfvg8MzrJ3jazHjsIErJuhSOA7prxDSniDenAp9CmF2ENmrLSx32sV1mGe/W8fg6Lj/FGGwhuSZOa8mXT2l4+QYOmgJex86Lzgl2Z9LM0ybXnwKnIVJFlIUUdBKfaW0ANn69kEtTCPqlQOFnggxacM200Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769444634; c=relaxed/simple;
	bh=dnUynV2S5XT4Nhqdpvi1ombIC5PKg1UDb/kGHgeYeUg=;
	h=To:Subject:From:Message-Id:Date; b=hFmIfPtIqynOuJcG9+T6t8HS7ipCBC8YAjK5nI3gyOF3AowyoP1v6MXf+uggrkWom2peXfu1Yy2hRmFiXUvM1xzVydwJZ01SOvyFOyR2PAHZEM4eQBHwVZIDhP6p90gp69h2c78aEuN7cIakNeAvAlSxlsISoGWR6I4eix9B3g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oivcI+d6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oivcI+d6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12DEC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769444633;
	bh=dnUynV2S5XT4Nhqdpvi1ombIC5PKg1UDb/kGHgeYeUg=;
	h=To:Subject:From:Date:From;
	b=oivcI+d630Cz3IrtdTw5W1FEDiibnO1y3HpFugBqIG7tYa+F3+svFrtFYlA6VKqgv
	 13A0b/K8QCgJ6q1of61UAWP0FgSsvYWc45O3R22g9kFmnnYMQmniNOQTnn51zsekr0
	 OcYbSkrhy73xTHjFv5jg9E2TmTxVKL+kaQ9KeI3R0j8Vzf7T9Dpv0YUek/Bnuzl3m9
	 RaYXxzUEwdnkz1r/+iNFqI70Mg+70Qzx/ysrrzTi6Y1bYrjYfr6HoHDWXAhA9u5ix6
	 UVOwBaeFrkta+gu8u4ugD0EzXOjpAEIuWRidxEWz+x4B6bgr7bMuNiut6ljSWMXgww
	 zolX0q1FLeW+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92227D19501
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944463358.7967.6189456266428096730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8875d4c52b3e321b15c1581f34d5127f24ffcaff2e8f433502f5ca3a1aa9984
Date: Mon, 26 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769444633
