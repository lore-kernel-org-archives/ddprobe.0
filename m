Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A8E1E520C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769267634; cv=none; b=PHiIjKSYT5kGY0oIa4exJkWI5HXQtoebLe0Q09ea6IlqBPz/wvrvUI8GjeU1LupHffiFiIrBvQ52Nmg4F8IrI8VrwRA65UOSgT9tYuJ0GZvK32qsqLO+j4JzdmmmvJcC5p4c7spY3zBti7wXzopD17NkTA8BZa7PU1g4ENgTii8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769267634; c=relaxed/simple;
	bh=qIjQb8xJM3uiXXirJej3nDluYw2iU14lPJ41ckJWjmg=;
	h=To:Subject:From:Message-Id:Date; b=NwakM8UpqXKWFC67nHSccU1JtcXtfXUm9eVBB7pSQEY20bRVCEGZwkKi+zjtSRxx7uZy0048OeVSCq3fS269Dmk/b11KmyB47/PvPRaLWgUjnVoPJ7k+tDg64tNwvE2F+WdEE2f9EsvOu//QEJm7cjmIdiTtBzRLd/UPPAlRKfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5oddDGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5oddDGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34FAC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769267633;
	bh=qIjQb8xJM3uiXXirJej3nDluYw2iU14lPJ41ckJWjmg=;
	h=To:Subject:From:Date:From;
	b=s5oddDGt54LUlYTegWvayAYMmBtFgmh/hZhrjy4yEOVirqxIC/v859Ty7D0+lVIXW
	 98te+7zvTD9ffaBIjQIG8MC9yZ44dbwfVCaTVMY6LGEJGeZudNWfhzjbYCfGDTv/66
	 JiXrSfH9/w7KYq+t76TzKz/ohVmgI6FbnVZ0lhFCquERhvltr2Zr4NmQk0BSowWfvu
	 l2PlhvTOMWmFZE/7MGsbVFS1VuucGpXhVjHIGnmkbO+Vwg06UE2RNI/fXEtXmyXCMT
	 RO4zE1jKf58KJXn2TtjO0abXlaCcfkuZk1agdqHP0vMLGGKbtfPIx1PNOJGnJH2rEo
	 41bUBHhp60lFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F556D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926763357.22187.12156068319461859888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5a8fae9b7f92280506e2619f11b806e00317e82f8fadacf8506fab7418c1b0
Date: Sat, 24 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769267633
