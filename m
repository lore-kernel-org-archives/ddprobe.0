Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147AF26ACC
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759215594; cv=none; b=mXabEMMpo54D5l+4u0qp5b6Ongz1rQGauVvO0rmadaeWH/BFWf8y3SKWF8FHZYt2/8GnAEnlQ+BJQhMPTZdZoqaTK0W7lZ0S/2wrC3+6dvwBpsVR37AcJ+KmG+5OP8q+8DabPDTTm/wM5Z6FaiogEHTGhPIObynesru4wYu+hjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759215594; c=relaxed/simple;
	bh=ZQUcrh6ni9qAbBaN1Rip2mkysDX/wJbdiEaaVMvtdtA=;
	h=To:Subject:From:Message-Id:Date; b=kJEeNyguWiQmV9EiZhhuFFV3SR4QcpQbR/R5xfKNcwCmI87TNTuH0iuuA+KHUdZqp4uaDcJwqjDc2YXFYDliNLRPlhirnMYEVJfZMnnHLrflNbseaZs6XmwvFA2KqCKc09Y/HgvVOwU5uK0NKTaoAbJpmoXKKL1MxxlQT4idrMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Au6Vw4/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Au6Vw4/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA8EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759215593;
	bh=ZQUcrh6ni9qAbBaN1Rip2mkysDX/wJbdiEaaVMvtdtA=;
	h=To:Subject:From:Date:From;
	b=Au6Vw4/cSpZ72oCQoE3pc+nUGe+pk3V0ocBiSyoqClrtkza37+xBKzuP1LYhpUoYB
	 bzXDJUAS4BAxjd/URcNX0aPxxzyqOpMVPHBsr7XIeVlhdfFqxd2MpRUFWYyVSRR4rP
	 +psMgORTLgusiDoEd51j5RMQ/hNG2jKVXnicVj9b9Gug/F0Fa2c2rtPJdiB1SdmSjg
	 I9ia5m0VmNojs+rGwti3Cin9KmsMrBn6zBk15GhIg9VgB/3Ew2xdkPxzuW8A3RFetV
	 dj//PPNoBc96U4cw7NMrQ1IGXLD0ygT+c49GCt12m9Dn/QJZ9jE04u3I4lOTFLYbBu
	 S8nnrFz5sXSDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BDCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921559357.11677.10871196014357278302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778b1f7801650a8a1d8528a39bc135ad43421fe401d83a9d489672354842189d
Date: Tue, 30 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759215593
