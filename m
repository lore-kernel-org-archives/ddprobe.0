Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D8F3EBF3A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769244234; cv=none; b=bTin2QDkyHkyCXG3vm8nReuNBEHDTBGtgcHZ/giDMqylSh6DHfwnxOgBSnOJNGyqp7TcZ9BaLQYA7wAlcw7DoSus2GR5Mcvr14AZH1zcjwBW4uNkivFjka86SKM2kHuSfcz94iqOybm3iDpkgVmkGVU8OBKYN/4Cvl8tYOHMz3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769244234; c=relaxed/simple;
	bh=3hvML//HdrKcVlS5Fe0CCiTL7SYvS2q94EwEnYB1z8I=;
	h=To:Subject:From:Message-Id:Date; b=q+caCUUO6wgAzZSWk9aoDnWGsfCG3zQdPs8JBBW0sYnCIPpSex9/zevBIeisvLIEUtTeJHhmmm7pDVLOQWf3UYMmPsD2b3C0xyS5lsFeFmZMK1AC+Yf3wRxTvEUhKZHcDNc2UJIhUN0qYfADivW4LOC32/mIrhxN/uWpyL20LZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXHrZcmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXHrZcmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9F2C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769244233;
	bh=3hvML//HdrKcVlS5Fe0CCiTL7SYvS2q94EwEnYB1z8I=;
	h=To:Subject:From:Date:From;
	b=MXHrZcmFTugJDIseIMMU9MUboCEttFeWu9Df/f2dV3LharSfzehSvytf5lz176xII
	 e2kcOptQkA2KkDO/V9nyPGXh/AmtAJj9sxOKjyPXnR+JAYeFVZVPJDvUJ7Ndj/73MQ
	 nWsuFm4dkkNbCAplhFqsubpmML9SBZ9+4PIXQz2d3x9IdDMNjC2MYdq/K3Xziy1a0y
	 oi5udr7GX0vAjeOIPMQwHFMx7bEFChG/wHTBxVAZUfJcOXomyeWJgVtlGJZmFxCKYP
	 saTjON3oyDyBg+wxE+RByQHfE4JcvtVCQa2DDjUoyG2OVIeyNJq1dnZQRPUywS3YWI
	 BlyXhEUk8D84w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC4D715C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924423358.28092.4666165840591760887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f0bcec04f4661ce4ca400950cf6a1604ef3ee4cacd424d7d4d1b5429af0303
Date: Sat, 24 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769244233
