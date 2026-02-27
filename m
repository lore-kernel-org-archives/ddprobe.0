Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E562C163
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772186694; cv=none; b=AK/++1zJWobbOt7nXb06sr3Tnh+oZjMa+beNDIep7gxzv0seBwVYi1eXrz07uHMbFpEOsZfXItXHArUfh/yVtIobSH4V74fMl0zT8r6LhLZBu0VGbRCrKm5ZgOohVHixmOPlr6FnikSs9QnNOTcDZm+B+ksQ13FseIBFvhzk+e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772186694; c=relaxed/simple;
	bh=y7jcdFw0eTbeq/80KRd7NmhsgGmKLLCRNBCN3g08dRM=;
	h=To:Subject:From:Message-Id:Date; b=fC7fcUTm7Q/Q/Z5R7vuWLoiJChGzA40GJ4X9j8rxdegIEd+lCnE9ubhPkRUGWpUOYfU5bD634tqje40cNq2oOddxoz5I9aYA+hs6zhfdFfupAXxWAnkqCboI4VdlaPdUBy2SCrfvVfjhbcU+8n2MKF9ovX2/4D+Zsh3eJYvkU/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRw6H7wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRw6H7wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F819C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772186693;
	bh=y7jcdFw0eTbeq/80KRd7NmhsgGmKLLCRNBCN3g08dRM=;
	h=To:Subject:From:Date:From;
	b=BRw6H7wx0tOpvU5nVYH0JdaPf1G6946z4SB+Q4jANj0m3bD27a/bVDOGQpa/OlMjr
	 tYVkbU5BFtPylndMrHJ4Gl3GORCmLqJbVZNeVGslAjG2SVr/g9ppX749zfgwzie64X
	 lTZ8ozEj7pJa2vP0pRdaHPoVkg3FdCwdzjpkje2RZPZ+/uq3QrJRUhO9KzgvOeoYPC
	 9yqDL0+8EfgDhZBymtahpdNHqGZWzWD24jfyq+2kXRImnO2U8raRVPvU/syo5AJIDh
	 wXAIjfIIqhnD7uYW7QgDTGrcLVrBMulZ6TaPvKe2+nmeu0Ir3YpT/gF3XK4NTJcEVb
	 S/9mxPQtjMNFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA2FD5331
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218669358.22926.13076104115801108371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056b2a87468500cbc466f90a27677886a40bfd1a76ef096aa1d92871bbe3c3be
Date: Fri, 27 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772186693
