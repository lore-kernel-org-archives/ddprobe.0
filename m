Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F08A31813A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772792694; cv=none; b=Xenm1YWIxCIGf1lbSksojisvEgeo8LX6HtwNmgS/YNid7aMnJuLotwhYAfD1SEe/BML+agq8X9FodOo9nDZTanEyqgqHKtlUM198CoNa9U8QZaaKtsnN+8OZSfBgsTqT+SiM3HVmJs+SPd4FN+so0pohBUgmAmBfxT5VE3NnYaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772792694; c=relaxed/simple;
	bh=21nqnODRtEKas88DcCrmanDmDT97Mug99J7qYuiBGf8=;
	h=To:Subject:From:Message-Id:Date; b=i8Er+Im3O9fQP5LLIWKPREjc49hcWIWDIsbA9K/ArOvPQWv+IjKQpZnPy4r3McN0mZrb45do8/myYB0Me3wj39cP7RW8Qf+e2KETbH+3edMadaYhxu5tKUaCEdXAY/AZGX18GpPiQmK1bQND8ObR/bBsmUJxuQfvNDxFKZQCOS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ontD84sz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ontD84sz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AEAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772792693;
	bh=21nqnODRtEKas88DcCrmanDmDT97Mug99J7qYuiBGf8=;
	h=To:Subject:From:Date:From;
	b=ontD84szwJPYmNyf1FsJlOpgIll5mnCoURRQYFnAZmdVHTYLYFS/CePXHkgOtCBXM
	 9KRZVmRa7rVebVoj9P2MsQO80klCGtBd4CISuXL63xwUzaEB69P9kLqHySBppaSSwU
	 0Aq026Af2pOjdmyAO0rchN8c9T3Op6Q1T/8gLjVbVfq9qzEoSh7kHL7wNxCwe4wV8G
	 Q09ySnCbriRC1qYme3xbTXfCQEgotpVcp2+7Yq9MQfxsuK8OiJY+gTet7PZkccM2fT
	 E7Pb3HgKFyQXGdU9fDE8Khz0cWgvQyGcOH2UfTKYs3mui5msHPABciApauA1MxWBHl
	 sYbs7s8H3x5VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C5F01825
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279269358.1799.11892095878021883878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efcf8869844106e5f3ee4a5e58dcc8c89c8bee33fa53fb2f519bd3fa2e88ad9
Date: Fri, 06 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772792693
