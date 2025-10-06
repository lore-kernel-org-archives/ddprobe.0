Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398C41400C
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759733995; cv=none; b=G+BfgpLUAEpRCs6CwO8K1738gsrB4ufGATrlmWbhEsI05g49CyxgMYDPsHLmne5bPlgHmXgJmwDhEN9w9V9lVGds3uRj8HyOZUBauZs9NqyzGZVscULXfbcEViuqf/SDrUgwbiAWY8gbrqlzFOKKcIoeYOQmy+CBnanIPD0dGQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759733995; c=relaxed/simple;
	bh=8cJLUZBkX02R2fZSZocaW+INnSqpCxc720t5dFIhuCc=;
	h=To:Subject:From:Message-Id:Date; b=PAQtoX8sJZsOznwDW/XeKg7de6YdeIMuemPDueKAXJ27dyLrVm8bh6OQ2sHRaDhlqdLm9UXGtmftA/2gfWA+lXMGYa/xz8iv4jN7Mkvz8nVqQmdJxrD9QzhhxtueNC/Eypc5jtiD7mlX1F0yVxO8yurfjmHrmg+ITmgQUet2qCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFyzAqMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFyzAqMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E146C4CEFE
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759733993;
	bh=8cJLUZBkX02R2fZSZocaW+INnSqpCxc720t5dFIhuCc=;
	h=To:Subject:From:Date:From;
	b=lFyzAqMdCZ5qqb7KYI/aEjw2pBkje4QhrXJNRqxDVTYjoNw90JtUGl6t3hKS/YCrS
	 I0wxW5Q/oJLyNdoOSbJ8e6ZkIx2u4hgBLjXRxAOUxVxj3FsKzGnn1SIaUhrrHVdsjL
	 Ns0cQPSVL7WVHimxhdx9C2u9y5pfWdhTsFUe2AtCkRyd7kttwcn2Hxp/z8dCGq+Ou6
	 6MZhdudfzZ+Zhmye8Fb349HhKPcZpHMiwokXYxprSsnIYaFtqcKlhp4CAy216+Jdg9
	 PvHEGmOCmngCH6nhaeZ+KwoXNc0+0qnXLKCXgSPu3wZW/ZQYrbO33hBr8LYMiZPkob
	 T3XU6cXjlY/UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91443CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973399358.18929.12994648768470798929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01167625b8483d527593675f35d7135e8ba5657458b8c192fb98c1195350cd56
Date: Mon, 06 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759733993
