Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D6A30103F
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762556994; cv=none; b=AVLi22/ViIMClHpwMgMJ+lOm7oYsiYp6z1su2yraDH2+HRQLDe/ip5TgBqsEXf57DK3KZBKPJJa4alSwgo1a0qEL2qyIzmzDDWutLDK3w2p6H24GPB12SLd7lXUclgVBTcqcLAq8UbfZr+PEjAHV9RY4CLkpNmiqBYQM8N5+O/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762556994; c=relaxed/simple;
	bh=BO8vU75p/MP7IlAgz0TAcj9XLLiWqqGqjjTwXRcZIDw=;
	h=To:Subject:From:Message-Id:Date; b=Px13n/YtT8vgUWfsjrRJX0mDBTC+juCzkYcfF3VCs91eWZZQzHCLpx+H/2GETqZuj2zlIz7vEud6CIUC2S4GA5x39cAuL+ie96Ih7vtOvIQTsNi+2CAvsNY3aW8pbYKB87RTWbMuqcfJXn+VyMySA+Xdu0Wu4lqMdpT2szYHyQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIZYbdkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIZYbdkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63EFC116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762556993;
	bh=BO8vU75p/MP7IlAgz0TAcj9XLLiWqqGqjjTwXRcZIDw=;
	h=To:Subject:From:Date:From;
	b=vIZYbdkffD9dSECEWQAgSCmlHrlWeB6AGS0h/tjDRm3ZAxvc67Jtm2yK1ucItPYBu
	 AbPT2z6KqFY/H9M7TLFza82MHzwH2HSP5eJid1N7c5QbWnb6lTIcbnZPrygmIe3+by
	 YwBT4lOyQSEQ5DeHbPent8XmPi/7KHy7wHyx7hoam4BAtyRbePyyw6hBb0OtyNzFJs
	 Uh8GiwQAtyJwzb/rCEwouhN/tH03zh5/S2VnLFOS2gVttuZJbMT8Ho86vuuBC3Qknl
	 P2Wgw3k6y9gkQyu82IIZo0h6wgp+gAOz3kez6uxKeJ8MUoPrQdW3WMENK0l8c9W4HU
	 T/XZ6GMKss+FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D50CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255699360.24066.15998672182236049844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05da2ec9dec5eae4843daef2535f1a184e3b03c359bc8f0f0c01df2ddeaec26e
Date: Fri, 07 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762556993
