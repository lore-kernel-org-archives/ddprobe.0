Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418628642D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769640234; cv=none; b=HDgXcHsNSH7hyagNoorEeyKHs6QUU6bYGSm3+BkW/lnX1qO4cMhGYp7ilFDztEXAfFG4WGI+mDYzt2Bw6LOeGMKni4hO9LHkSzKeP1fW8xZiMZ4wtEBki8Uk9kFaM5kLakQTm3xBhXUBHtRHRKDCQkoHZg8/xb920NuVHDc7FsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769640234; c=relaxed/simple;
	bh=S+3XFsosptiTHMgdWrHHamj1ZQA1+SjjcgqLgP+G8aE=;
	h=To:Subject:From:Message-Id:Date; b=pzGjMfQmZZrbMTUA5ERaBeQXmlAcTwpZJyYoVbkhnI1ZF8SuAdVAqxo7OOneMGln3JmepZ6DrZesTpc6wUgY+PAnx+AJb+Fv6pzWLEcveyauoV/fCBbFOYOjGRylCAE4U9xTXyAUgRYWU/Ip02g+5IkSB+dzVuDuuE6Q/MoMDZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAAKnpJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAAKnpJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7BFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769640233;
	bh=S+3XFsosptiTHMgdWrHHamj1ZQA1+SjjcgqLgP+G8aE=;
	h=To:Subject:From:Date:From;
	b=bAAKnpJMmdnfjS0izG3XkA6HZhV1eIxDM/wNzhoqpTGy1PfjW1Q8/YKohyLdwLoJX
	 cxcrtD3oDtUYZGFmC2af9OXvukMgUadr9xGcj7IGlyNTZez3eFeczGZzRb8Bw5EL5P
	 r4lDv2V74W6z5PGoGmdKbkMj/lG2tcPC5G6x7SCVAs/P+CWEDGd/W8Np9Me2c4M+fn
	 OdActQfyJ9iOjp1fqmzvCNq+z0fkN80VXHoxOaQp1ZUYMZfea38RrI7YFq8ZpyhofK
	 C4vr0H0wX85PkH8BC4S5OPizzZzJ5MhrtM7VhncROySYfi5pl3vzlYxDsvZ9wbqHRl
	 pje5spXn0svIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96836D46C0B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964023358.6951.8568959840218495513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8258e3fa67267b7312fae0772a62d0620e717c75a02b26ab076f9bbbce53fd2e
Date: Wed, 28 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769640233
