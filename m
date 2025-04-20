Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FFF35947
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745128194; cv=none; b=ADKZtwVu3ZrsrLmU90Mzv7yzbgLKNsVjDApCPJiQN9WtyVCM45dej+W5l55vLoe8ft+aB7dK62lwa0k73ehBjCgOlIhehJTa17cIr1MczO0w4AVdET7rg3FD5QPXEvGh8lnEge3hAHCg+5BIy8NkfhtoQH+ojEUF1sx/QvyCVTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745128194; c=relaxed/simple;
	bh=C0Zpl5O4BFzK74rZaZ5QYGS2yJW/l8hzNuKaRjmiEaQ=;
	h=To:Subject:From:Message-Id:Date; b=cGgtCtDMPu1JdwjIPYybt+bJ+ZC0FOVQj/CFLo1F4y8VY+l7yyMvGBOx+5N1m/WQPagoQrl8ZkuL1H078HPPgh/kr9mILCreA7ncv0UgR2MxZbIbw844uCP/dSheEDq5ZOJ811yuftlXfPeKPShg8xJo7yZNFViYxPA53zy1VGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRWAMxnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRWAMxnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91E3C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745128193;
	bh=C0Zpl5O4BFzK74rZaZ5QYGS2yJW/l8hzNuKaRjmiEaQ=;
	h=To:Subject:From:Date:From;
	b=YRWAMxnb/CyDU51KlqGTeBw2uMlCosAz9hTYa9IcI/gVak7ieKcRUZkRA1Tu4fY9a
	 r3ZAtiCFXJP3vMAfLF8utW4k9OYayjkbDGpEdOi8tmafV8LMkDDRIr/k8n8lZ2aDTI
	 EoO6LEwJuYnJWzJtRu68NrSnAT5o4IIEO2Ks4slSii5ss0ptCivLgzpKpzJFoQkIjL
	 FIQqLkXC+O8Fgl44iDGlbnVMiKTnUIVIbL3gIT6jCHWKHdWbaxcVn713E9NBjn1yj/
	 zDfTB/NmT/cV6qhSVeQl6mjfSctRfdCQ/rRPFL0KJc9hS6CJozit7qbsX7AIgoI4d8
	 xBxr4OgcVbXVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B21C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512819357.28088.1298279554158405051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad80375838fbaa3ef1257e7ac328fb771337f6399be670bce01232a20db603a
Date: Sun, 20 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745128193
