Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2904C1ADC86
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742640596; cv=none; b=SyVjbKYbUJtm6tDjVGz5W6Pr1k8tGl0w7IKh//M6lUTT61WFwVpembYUQnDvnnvmn7g0EAbZo/eR+CwL5tQb+2wXBkzPMp21N5IZlpIvvAliJiqM3mN/20AWBCv/wyTef4Q+ZrCJisGcUPP6Gq3xfIYu2FMjJ+tVHKzZlf5kf8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742640596; c=relaxed/simple;
	bh=PWZCO4rq2FBRXY2cH/sdwAUTnBDfqdSRvEX1/wj/WMI=;
	h=To:Subject:From:Message-Id:Date; b=UDdOde9u1PoElK5CmMqtABsiBsV8IeJxwQum11bBX+ZSA8dw3q9OxWV5lM26U2TO0tNevwJDRPYwmdYUsaT+CmleJ5lwIWflOsZdEF2RHQIx52os6NxY46hV6nzTCGZnPzLDHyYiKZyoZCED8o43lGkaF5aCNVAReKkVs4G8cVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cepb6WmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cepb6WmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6535C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742640593;
	bh=PWZCO4rq2FBRXY2cH/sdwAUTnBDfqdSRvEX1/wj/WMI=;
	h=To:Subject:From:Date:From;
	b=Cepb6WmZ7X4BR2/kLYfjeBCBKy8ZhF6wWgGm45YkG0FlBuz5wz71S4ZM5SbcmttI0
	 hb4XbXN6j575n5Xt2nAObFX3gN/WZgyZ9a9f0pdGaqJZG3gwDL5086GRk5Abpiepjc
	 a1P5iwWV5acWADURZGMsnop4ZHcV6os006UMCXCsofvqeXkjmaA6xclx5Dec4jwmzI
	 9q1f7oAHVNvnuWy44T8olxi7rSSRpeGCbF1b6ap2/8ixWgyLZ3mNPpSZ+QerE7eMxN
	 2TjCFRCmv/GVTvOpaDyGyU0gnuViuMc5dhSgKS7ZsLOSfYfIwxIVOoKENZByk8ehpo
	 MV3eOzgS8Cp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BBCC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264059360.23232.18061118537461804035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c1f3e4dca93ad0e5fd5aea8419f9cc7ba3425eec8d56c91034acbd6330e6bf
Date: Sat, 22 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742640593
