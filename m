Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABBA236A9F
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751527794; cv=none; b=etbx8QvtJ05lAj4UuQb/uJ5YA9wCv14GjGB+aKQLNZUMxheo20Sswcm9s2Sm86Umd2vgRaZpkwwp+ZkPsgokdFO8abC8inQ2bCXLOKnNaWsI3Ir3ifXmkdUo1oLyY8mF3tZwW1FR7WM2Ux9wXwH2x6MZqfLrbbgJk7jYpwPP7mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751527794; c=relaxed/simple;
	bh=Ysy4O0WuzggFQEFX9AOereWO04OeHaA40bCNiZnT1Z4=;
	h=To:Subject:From:Message-Id:Date; b=p4KU2l+h7+Qjl71XsiwAiNMTfuyXa8SW0RwMsk94tDvuRFXT6dDoCmvUEKls85VQZ2Lyyg3xDH8qpyjcBo4TDJ1AvMmwiQ5YwNN3WWSra/WwUabBaN4iKQhZmjFXhvNjlXtxlhbKgBb5iZ/b54/M3u5bXN/R8kXzK6KI3sUKMP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCsRxr+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCsRxr+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D57EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751527793;
	bh=Ysy4O0WuzggFQEFX9AOereWO04OeHaA40bCNiZnT1Z4=;
	h=To:Subject:From:Date:From;
	b=sCsRxr+1NyBZTB7ja4M+8DdxFrbSOxt2Ax2apabf8gUDK8di0Hf2cVAjVrAq/IbaA
	 v0hC0nzbOqTdpax8cQOOOUE00wvXBx8VtBdI3Lj2xM1I+aiFo+1TVTFrjI5iCK8e7m
	 AK/nfpdRvQCLAIAjzeMwDNWX3tZ40XwlKc12YoLgPRVOhvtBIHR8mugsbRr2Z1JVoN
	 V6AHgL4gxsH4MXSRCqqXpcLXO/SfKcnPbkVTtnUwzyG7wbqmFdJ4thnw7cEgE1HIqa
	 9kSbXdw3FKsAyr6iwSgoE8SoxTOshj1G2t/R7HHJeBHu5wt0X5nGBcnqypwmiCPKzz
	 Mm6qwi54II3/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BAC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152779357.17451.9075906609216428059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d215e9a88925a2c6ab3c4fc486651e71d7e3f5d672badc97cd3f6b80af12501
Date: Thu, 03 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751527793
