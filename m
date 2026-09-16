Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BAF8442FCE
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789588834; cv=none; b=P2NQ/QXrMpT2fEQVvxgZtI6Va6nZcpRz3+GjXeWgVGUEZr7h7wWVgAyTgVAHImgxXI6iasOFz9kj6S39Op/x4MonT00j/z6KnJbCIgaycAHN06z3lPKTgZCT9IEHiWJCJyHt7uG47m+hB/SteGqOiTA9UWdrVBtRDBNFLLTDZQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789588834; c=relaxed/simple;
	bh=97eIBRSh7zY3GoHvbiIvXOVLWPUs9ZCxIAocMot0UCU=;
	h=To:Subject:From:Message-Id:Date; b=JZ6Nj9pno76FzhlPErALy199aF+U2CGgbzZeJ9ULlF8Pc0mZFFbaZXcDzOVbo0nmfBoctnvG8fqVScvcfQTUT6amhmbnTV/erfaR43sJqRMv0YOf6un/6TWg88Rm4u7UnNZ8EBAOa1570RNQDrtYoKfI3QPaWYf2g2zxROxJOlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktc0tgxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktc0tgxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E306EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789588833;
	bh=97eIBRSh7zY3GoHvbiIvXOVLWPUs9ZCxIAocMot0UCU=;
	h=To:Subject:From:Date:From;
	b=ktc0tgxidUFAPA4td/GoqXjf7EcH0v6jsswtyF3dDhHTXdFNF+40wQ2YhuuEDzCw7
	 c9yFaPosg2fKTGHY8Z7VtCauUZdu9njTR+n0wMmk03c1XOptW7ye3AJ7SVgBVNOQEP
	 RVfB5aodfl8kEuD1FtESI1eW/fqkqtL1IVoDvtvEgwNxd7KmqtEjERE+Sy3RVpt58c
	 KdHdcESX+eCGxsz3GfBmSxYMy05/rtUmAAqBUiMQ7rUHRWkYPZVtnP+tC73TuzZ7lG
	 Z9DolKLvzMvTkpv/k9kHOpRoSCEdiOysd4PiGudkdIHuTrCmT8JMr3BeTSQzSU9g1W
	 TORNkK3QqxbWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FD4C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958883370.6567.4551840655142240848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6b7f7f023a5b0e8373538a78f510eae45b726df4afbb33431616e3bb94a730
Date: Wed, 16 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789588833
