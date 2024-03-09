Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B41A2E40F
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709954297; cv=none; b=tFyRAptqdWOgQdRGcANtcDF2dF8zk+Vy3TiHY0DBVdQmg/pJ5Yy3B7dj1+xNQBWSIm9ZwmDTLvcmJwW6yx73Eqys2MFV8PLsLcxjglPPtS30zPrN1yHla0gr3QiJmBo2e23JJBqKjfVF5I5DEVoeGcPhTsw16KKhAH+UfmHlKz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709954297; c=relaxed/simple;
	bh=U1ezBtWwXyZkOa3W+pV83c2fsOHDsvmPg5Ul1T9HT+4=;
	h=To:Subject:From:Message-Id:Date; b=fBMVq1UmJqjHkpviMSFwEHWt5qQVlveSNxSMVL7zTQ5eVTqzF9tt+JPe3T5FT4wtmSjxaHGP5yELm6CLJtWAiCnyDnTmkKElcwghMQlz0w94Wo4wAw7R8gqcbeBn7ewomJjfzv7nL4hdeeGldkJd6uo7tvS14U29/nhlR0czFeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4t04Wt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4t04Wt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E816C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709954296;
	bh=U1ezBtWwXyZkOa3W+pV83c2fsOHDsvmPg5Ul1T9HT+4=;
	h=To:Subject:From:Date:From;
	b=R4t04Wt3Rk1c1n/2n2cgTWg126ON4egLMw71ry6Q1X1pr3TifydOhFr5Wm4h8vV8k
	 XSnDDvR1mVQap9HMf3/BqRK0ioxuSVOk1TIoSKrXFuYNJETZRXP/0Nwy0GOEtyWtXH
	 Q78PUK3EfH/rYjgpdcFku/bsrgj7Od37pAD5Qu587qyc/xprT826gTpW4DJ7xdOp5h
	 3bcx62ldVrcmBmc/NKDldSOsSGQeDojgY0b5iKr7JPemYe80/D0aFnFgdzIFp4DZll
	 MXH0ZntrC4aZD1V9O8A8QfjmSmfTR0ogkAxlCp4V+TXGHjMSyqveM6+NBUNw7vCsL3
	 Ow0RhTAE7kj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60033C5475B
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170995429637.17284.17621306307985651235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d246452d75621432b0f06b5076a8331b41c7df65763cc6c8a9193386f0570e
Date: Sat, 09 Mar 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709954296
