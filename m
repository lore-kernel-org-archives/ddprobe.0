Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E5944375
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727535354; cv=none; b=nS3PNY9jSHCUJI1XKRh2pMwTlH7g5W1i1GtZtjG1IHDRYinfKE/UXhLCLpwC6LfvB8vtjXxhODGaTTuqubWcWSx2MXLlQU1Ip0Ww39R5/cx71rZOyTsRyVHtvatd5rfJo3TbKah0CQr17Z7fAqLA9pgzkQNEZ+mWfMQ1oBouTy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727535354; c=relaxed/simple;
	bh=ckWF3pizXvFhV3KeUjM6XAcL4whmj6HM9V7oH3N9ntg=;
	h=To:Subject:From:Message-Id:Date; b=UDvyIRZhoCMcEuhryAXywPYF+nI3RJlR+hXKDzULV6A4B1RV2phqDwQchzEKzfn2yXYLWxdbygezL9ZPww/tk3Cnj9ks6btKmtHsnGhkKjq9xNrG6DtxVRqi9pRspfs/Wl9A6fKRDh7lGQ+JYmH+0++xHh/5+AK7x6LCwrUnids=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9d1zvSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9d1zvSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AAFC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727535353;
	bh=ckWF3pizXvFhV3KeUjM6XAcL4whmj6HM9V7oH3N9ntg=;
	h=To:Subject:From:Date:From;
	b=r9d1zvSHik5mfzTX8a86E8wPU883x73h6MrlsNDqUCrvadga1meawHRu/ioYlqGNS
	 amNEA1XFUUDx6kEdoHDpc+2IYPGAgV9dszSm28xU5Z1uQU0B/hXxpiQ6gsQxRAw3FJ
	 +FZGwBT9J7zrdF7D5JL3+0IF+t5fFbDHQppufMeGDbKL7FcGGObzdZTk4DxfGqLcpk
	 0fGOUP433//7ya7Fwq9EiIOJebk5PWGdwsDerVbxSqfP0NZGxABWe4Lf96H79Rhf8J
	 DRu3VKPzQ5Q/jhyyJOi+gbmUYsg+IHk5Nia+Bng6BcsY5KXsjumPDPAJ1o8bn95hS3
	 76OUqCmT+/rMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C6CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753535358.9359.10784643196737422783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf7bada258eb93ba6a548d1adc6b3ad9bc0e1218bd1a4dbe66762e39e247dcf
Date: Sat, 28 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727535353
