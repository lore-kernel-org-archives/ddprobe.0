Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F314A00
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721790354; cv=none; b=oTSqKyIzkAhUh7ICXuExG6K9Igk4B4u7J4AWt4ZuxulvjdbTp+HtvSJFGMQyiFdT9bfKmqEZot4KBBWcSzzo3xeSdG6u5gHc5q+imj+EehrLpKkBgzQUQ3UC4sIBMPN/I7/tOxZBwcxS/oyy+Y2ccMXlzrMoiR25wfhSWsPdR4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721790354; c=relaxed/simple;
	bh=vJqkRCQHBlkovLrZNdfWfw5oy/vxUWOa3iEj0hZa3B0=;
	h=To:Subject:From:Message-Id:Date; b=ogjsOxbmu1FPwyAFufl7xapO0F+rOWnpXK7ogFexpkQAlX1f2ambWrBoKsYuK8sEnSQZdPEk5moYuuV9H+lM2UmCPq/BrlGw05zl1QECae0iRkghY2VTt6yUE1rlWnorVjbqtv1yUJhIANG5tYXgvJLzJkmMv6p7GxRSn5tPcMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIF4OxBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIF4OxBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1269C4AF0A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721790353;
	bh=vJqkRCQHBlkovLrZNdfWfw5oy/vxUWOa3iEj0hZa3B0=;
	h=To:Subject:From:Date:From;
	b=WIF4OxBWiskd4Rp/DjwXbMHUsZ90jEWXslM98JGetpwyM+gXTb+Q6agIpsDs7Dafi
	 Atejap6DKNssLGq+kx2P4HUi1BuWHT5TWRx9s8iye+KCcujsVHrin2l0s+IyEJJd3f
	 fE4DN0bIYAogUIlqd5r98wKi4qFYBf+3/FB//gWQuT8SPYOju/ZbwfjqbA/31XAwjP
	 gUHD60FH48lZwJpR9E9l6lERUq4eaMLrqpP/SvgGJIPKfZryZKzUQtPxMHrL3VCDwJ
	 9eCt3qcyoGfU4wm6pPpYLP2O/T/e6aR0Wn6CCUT9YthaElswWRvMs3Ba3bHQPj9/7m
	 ocYR9XZV2oUzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEC3C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179035359.10949.12741233702591716308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6895913b94455712cef6f5b32849736a2cbfb84f37a4f6db5d99900e901ab93a
Date: Wed, 24 Jul 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721790353
