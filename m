Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C96B3A254C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781168794; cv=none; b=M2BqnVzK4vUfUsiV6MZv2/m2pZbc2GFyIGB0iAO06qzSRD5FQuZ1AmVBsXGLjq23RGk3Odul+YBoLVjCblRpCQRmJtVSdJyQrwYTSkcJvMGM5ygUjjPhAO67CmqB7ZPTB8R4oUlhENWcrx1db90um53JraDQpB9qaJUSUuQWAD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781168794; c=relaxed/simple;
	bh=pEVat0HElTM9bO4k5+mB6kUSrWSlbUrVRGd2I6YsXXg=;
	h=To:Subject:From:Message-Id:Date; b=LusTaHs1yp8/xt7saUCMd3WMp94xtR9mzKVWs1NedvM1fff6me7vEbEr3aAv+tHQlShHU2QWji22D7OCpv7ImQyPnQKZKCsu0yiX3vCTc5FK2s9M3SkVrAJYbqEaqoHcS9nuPtqejHJlu6c6KXbt5WVGAvmi7GhHehwEr0ldtWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alQmVpfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alQmVpfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2544C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781168793;
	bh=pEVat0HElTM9bO4k5+mB6kUSrWSlbUrVRGd2I6YsXXg=;
	h=To:Subject:From:Date:From;
	b=alQmVpfE5aLhO9B/dM7aW7jA2jakVFZzfvTUT69gjdIBny32ZCC547GvXF0L5bTsH
	 6j2HcBsjFMl55CQ56J9DK8KEP4FX0FHYHrEsdYyD2ZbrcPOEQz6+c9KDZYa+AHDJcK
	 pK9nNgOMSMHrxaSldmf/Mc9HyHIs/D14qCFuoD97Ym0C9Wyh3UX7tKyt+sYGJPDpbd
	 JZQZFTPCsbm3/59/C7uve9+5Dk+XYpOOuz9d4549jhIkNblKGUmgax6ptQ/+Idd8GV
	 eXGtpIwvfa8ZAn1v4LP3QuMQBQ5fAOzDQp91U2y25UKpWYh6wk6EcZudwu3F7wBQee
	 lM0O9WRDdNP3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2386CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116879371.10753.13246949705868103790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a5ed417c9f661668d6ac7d0185352b6fb0807088f301f2a1b5bd684f1b74e7
Date: Thu, 11 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781168793
