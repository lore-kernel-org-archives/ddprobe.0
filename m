Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C174960DCF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750983593; cv=none; b=bitc/v1X2vfnLRI5K7ztOAqBDtufQR9ywAtscLpcpH9cYXOWRYQYg8lhGcP14y89CgK5O6YrOBh65hVMBJt6r0s58+5ZxTCYFvfCO7jCw7Y8FugrUbDT8jomjsoRxuzYkDIs0xBq2CsgVn7IzwgHFZQdE0R0pjkh7pwOJpfiDCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750983593; c=relaxed/simple;
	bh=bTo7vkiSb8Sf5BsbnE6a6MurIZpUO9vfI0EJM6hXkIc=;
	h=To:Subject:From:Message-Id:Date; b=b8REkVYIz0JeiXEOdUtWHx8kUKi5SHz5Njjgno83W70ibXjQbqlp+s5z2P7FFwZkG7to7fmXXKqqWpYhus7fRYNhkC+SsVN0xGriQDitqfx51+YPbE4IP6ePAF/CN0+rtRtwY4JL9e09kCWy1+sedBOGe9P0NT7ncLrAivRdULU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fybqYI43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fybqYI43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20A4C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750983593;
	bh=bTo7vkiSb8Sf5BsbnE6a6MurIZpUO9vfI0EJM6hXkIc=;
	h=To:Subject:From:Date:From;
	b=fybqYI43Gqn7yfKgNC3PFiusIWgXJiRQxZ5bZunXIS7ceUEnHMV0PcSsthIVUJlv8
	 8UcmgFO4XKo26zBv/a929heODPd5homZNbNtZN3p2Z1h5bUF7itZDc25tMFUJDsPt7
	 VGx7eFRAcnzAXlvCzy8CeF7el4dIeh1rfY+8/sjmsXenXtBdIwdUSGrhhqoZD2/VhB
	 4Qua6LY0YX8FPX88IZdUeAHR21cUOehePJITHqqIjJ8iAt+kJxl8iy2cC/284u6aZw
	 wbOWSMZVH6R37T0l9Xqe3SvxfzvCUCdfy91jeE15fU5dgfDUetghXzZYQIvhuBuwe5
	 Ws6gPnbce4BpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9038DC7EE32
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098359358.29827.3082391474249545542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ae964021db61e5f2eaead02ab2ba91a0e945a739bda73cedfaab347bf74ee5
Date: Fri, 27 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750983593
