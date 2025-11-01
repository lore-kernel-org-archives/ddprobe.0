Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E67634D3BE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762037394; cv=none; b=oYsiyRbJbHXG3vDc1wwaQxMQPDY+AMnwal07ucP7bOcs5YJOBIGWYku/kJ86pXKJTZZjQjNqOnVTg/JGwW4zWZCCTL6LvqNJqsUIujrb7PWpsMCKWDy3/Ksv2PVngUwaI1MGTl/dO+DOq2KYNNumofzLQ4uIjOMmqL/ejv9sPGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762037394; c=relaxed/simple;
	bh=11xFAsPwt9nCIcb4VW46jPBgOnqLUyCj4AVuJB+rbvE=;
	h=To:Subject:From:Message-Id:Date; b=jPyL7jg6SN6AJ7rJ793EwHBAUPFZ/nbkjgqaKLasPABiQabMzndz15VexRHdqc8ppb7fN4fV9inXL3WE1El7TJA09Eretp8pLuKag7DwwAiEHj6lXXozO4ktxYBytRjUt131R3bsxvzCV6drQv3/s+vhJniOLOVnkJv69PzBOMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQFd6xT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQFd6xT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1655C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762037393;
	bh=11xFAsPwt9nCIcb4VW46jPBgOnqLUyCj4AVuJB+rbvE=;
	h=To:Subject:From:Date:From;
	b=fQFd6xT4FlAmJLbtPWUAPnwdKg9lmj1vpYjF8Cco/+3oB6mLAXwFYQxtHXByOlNsH
	 komX+lAHvSTM3L/YwtpSAGjrUv/v32d/N38p9drSZFi4s7uyQALdts9G+y5zXWa5H6
	 8psrC+g9CeXapUjsdiHU5xjsEBQCf/3fKA7+tTske+3w4cg+FINDsxsSKjPG7LIXtL
	 tYspH/EAJgANLkB6vQYZldOgw/QJ+BuqH3Meb/lpdI7YN2i49THUmvknos88GBx0P9
	 pQqa4NdLMVgilSAPR0/xzfG6X3L4S0uklWkAAVEYaHa81JBhn+Q/nGS38t9ncRz1QN
	 MjbPQvUC8JFnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0131CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203739360.23193.5011248853096869581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4f0a591bca42e995e087ab42a685e548a1ce8051bc104c1bd86a88e5fa1b63
Date: Sat, 01 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762037393
