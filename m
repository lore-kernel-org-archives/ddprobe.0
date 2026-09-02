Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E05445DF4B
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788391234; cv=none; b=REph2KPMTqZ8eiyzcEpDsKsDBj+D4IaV/5x0pMmZYvitu3v3KUGzqe6fXg96dIT0Ra/qPAu42AFLwxmGuQX3fqxtxAmQRGrrpzRtFnnqSVJPsHKdC+BVquRi1YxMJcSlZvmEdW5cmH/bviEJMCyD3EQLRU9TXqkT7+A5pwhSZz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788391234; c=relaxed/simple;
	bh=1JTY2FFJHfljqr9awpVwNA3RM+ncXQrcef5Fr0+lVa0=;
	h=To:Subject:From:Message-Id:Date; b=AVBkfCq2pnNRND6MrF5/p8ZBaRSWGmePKxZLy+fb7sxbbpgDMLZ59BKqobIyZCaLylB9B2ECMfiN0f9MVd6+lPrttzg9fMKej+R9vKme+mLYVSyZ3FTzTtwclwzzgRwrOCjOW/UEuG4xVsMPI4R/m2LX9Ft+ztV6aFsIgKjv27A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPa14zdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPa14zdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F6EC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788391233;
	bh=1JTY2FFJHfljqr9awpVwNA3RM+ncXQrcef5Fr0+lVa0=;
	h=To:Subject:From:Date:From;
	b=iPa14zdWv4uP5CM/EbF3xAlw/tHBlD7amzwW4iU/DqXAD4mnzuJnWYAMSQr76y2pJ
	 +/Q0j1yTWvz89ej0kuzxngpMmwukcoOJHEEz8tRbDOPYqbJdPGgc1i2RyaGCjlvzWQ
	 cD5laZv5Aj+asN5wj/NEqW7wjmIasoJFxs1rkdWUPkGshttIDHwrtKKiwM+uJYyeon
	 WkG/QLf6dUMVK6RbYqQZg1kW8XXhP031klJ9bl9aXaRlgTWwqf4kKOHK/zJgbPLMgp
	 tH2rLCO6mPjerYm4+Rvy/4Yk1QQQEfipgmEbCr8AHl6G5CUrQ5pZ+fH4+WGm4oGhvx
	 RVYnU6xBLHkcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA62C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839123369.2730.3907234095774340893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320414ca35c1de2790205730d716270a0b6998e85c4e112d3ceaa0479010fb9c
Date: Wed, 02 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788391233
