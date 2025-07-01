Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337FC242D96
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751410794; cv=none; b=iJGsPZcPRz9ZfSehTYuVyQyyte4eUYKQDdhTOzJVQnT4zkbUL1+0ZEQHPCjQSvEQG1jIJiNSbxUvpSqJ0HHiHG9p13M8PUjPV0P/qeh71M9MElAWcFMjs5sIBk2BpIbV6SbKtiCVSnkzz1NDXNTiPHiOo36VxvHdE5rBQFP4AHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751410794; c=relaxed/simple;
	bh=ada+iK3E+T3xBLPFzVXBm6cNJod9fGySDXEi+G2Zt5c=;
	h=To:Subject:From:Message-Id:Date; b=jqj0aLUIiWZW0ha27JTWEb8qFewtNyJXX9ubgb8+Crjkza2ADnx0O/0nAozEAsAWYKBaHofd5wIDjBAYFoQtUAilBqMkU9ugrheb1X0tzozgmgp5UZn/7sgDTZo/KdRk8EJXFe0bZtBgxmcmt3H+fkHBv9eggZlWCo4J9XfHk+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDBgkUMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDBgkUMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751410793;
	bh=ada+iK3E+T3xBLPFzVXBm6cNJod9fGySDXEi+G2Zt5c=;
	h=To:Subject:From:Date:From;
	b=nDBgkUMsHVxxQF3gv/+U+BGsGj8TsQ4fFDOzcqHpyp+LXR39wRo5OOSTT7LMpj7vl
	 U4bbDMQq3UL0bBg/lBnHARKk0P2y3k+ZVJ9+70nuRrOn4ir9stuus/YU7BxZQhWmw1
	 piVRGabvgogNuXFZOqfMjNyaEWbbuyct9qKQZXEoOtrvUi3gi8QESuUFXBbeRmnDxv
	 EhK7FhtiAOmMZBYErPuZZ0hOUr0bZl+3EmukjMXshMsY7blnfipyJiIo8to8IAAQPb
	 6ULBE+5zJ4jxHHkRDobJIO3H4LPKtxcb27Ws7KZZvjDO5MYmVgsZUeEUTLmj2pfpcs
	 6I1ba6X5qWQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB95C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141079357.4950.2775692128391608430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b5184595c989f484e78beb3a851512689924902810cdf696320042c3df9e8c
Date: Tue, 01 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751410793
