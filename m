Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E135B21A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784257114; cv=none; b=a6SaF6+kH0dkMe8GicfpePxadsnzSG7AL2htYizvnAfN1m4qSGneJsoGa8nICf5G2vBpQWJ4zMKNtXk/9hi9qaeYYhX8ucpkgKnCvoExPVpfdjjJumDJEkAaIZGlz6zZ1h7VrzxciaQ4Wjzi9QmaQZWeQS9uedx1CmY5ga68ZJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784257114; c=relaxed/simple;
	bh=ZNFz/M++G6bZVJ+UP6usva8wdyIggtfv6GrrS/aOWhs=;
	h=To:Subject:From:Message-Id:Date; b=GJ8ZQ3HDCiZR+yyC8JE8TKAvpHqSM6jCzbb6r6ef/xxD8pO2oMK0JMLVQhp+vSdS5M5NdQJp0q+ItW0z7K7rS1HXtyKVaaXR+nMOVaHPJPUNJRvlJ3xek6vI7g/FXv9WHw1IHarZa+KHQ3IAe9rIv8IVaETiQAAIa+QOkL02psY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1oRQyry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1oRQyry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28F9C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784257113;
	bh=ZNFz/M++G6bZVJ+UP6usva8wdyIggtfv6GrrS/aOWhs=;
	h=To:Subject:From:Date:From;
	b=c1oRQyryJRvH4zCS2DiwOY8nyG0oYTjrLKCTk14rWu+jvXpnVQfc79w07lusNqHGO
	 X4gw9RHw7+SFawp4yNVwvaOKeMLOVNv1WxRg697SkWChy5h3gCyhCGk0hFOEbz8G+R
	 PLNHfzPmTHwkGFQJoBf94R0/mX6jNQelovCgt2m3jPn62uKXkD5JyFIt1UN69/7zb0
	 DXNO0SHftLKY7ZRxtQlBwfSVaEmS2ZW1Ux67iDHhE+iwF69q4iivl8N1HtRGXfYjZ0
	 AGS7TNDkR8nWgtxqxlVFTSGgKV2p4pYxUrLTzhrNUw3AuX9T+UOZisutKljJ29/RQY
	 wJ6jWOpKZvH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9B1C44512
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425711369.5122.1178052121816860016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4958c92abf2327a6864cb1cff9240e183edb4c59e227cc4a2ce84c6c22ea0064
Date: Fri, 17 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784257113
