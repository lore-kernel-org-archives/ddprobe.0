Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA163C460
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716670463; cv=none; b=GQpBlwIfBKVl57dyeghuro2sDfgnfxg8NUObqhReZPUSx3o0p1yrIGH3bN4uVVd0VkX0M0g/cU828MxRfiukLX9X9xymiFbWhVFTvoJPj2wJXTf23UD6q9FRWY3EibXQkhUPiJNuwzsnk7cdTKsByPPZwGxZRONTb4qn4S4arP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716670463; c=relaxed/simple;
	bh=w9sR/KG5KbHt625zEL/xqI8aXac45KvGp4ZIU3nV4Is=;
	h=To:Subject:From:Message-Id:Date; b=odmQfr31ErbwEbadMZSJjccSGLZcJcGky04sX7T3UIRdovDyRI8kzetwUHdcWBbVdt9KcPea9Vs5AknhfDOZLWWV6EJn+2utvOVjdt7Q0gm2ivHZ/kiGiELHIBmT+hJMUYZhZn1pQQq++MKJDx/XAmZ5vSVkWcfv0sLo2gI/eGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSVgx9jy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSVgx9jy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 005CFC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716670463;
	bh=w9sR/KG5KbHt625zEL/xqI8aXac45KvGp4ZIU3nV4Is=;
	h=To:Subject:From:Date:From;
	b=HSVgx9jySE9UIlBSbMyKUL7mwYV8liXqARJOil7soRx4t88RMASGDlV6ayEm2es47
	 0jZIXAZQDkH9dOlAl+8OuK6Ny3CoinyRxnogWndp8XyekPqFEK8vlb0nWidmHoQpZT
	 uDwG3dV8B+b8tAXbRlQzuF0I+5dskDjozZ0zTDxmKCWaM9lfAtL1gN36lP0RdDBEQd
	 jKHcygL9YLAq3E+vG9VCYtEsbU7rOyw+zVIcWEuoNQ6Mg9KLdPTmu1Shpmj4U7Crth
	 U+CyIMVXYSfqloa9jWrjaDomYSBE9mhmaTXwymgWk05f1pE3TUtq8MysggfEIJoCGg
	 90NFu7/FTLN1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D875DC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667046284.27654.11336841550792352401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54ac958af1a41d0fcb0de2f66babf4e2552435fe74d800acc45442002b89e52
Date: Sat, 25 May 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716670462
