Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4454723EA83
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787078434; cv=none; b=FH1wnW8jBi20MZQDIjbE9cwax1/sdUjix3YPk4dmdRqsxr1wbgT2EwJEylJ0zzXIP4s4dvmV7FMKV6yzF9cIF6BPCYLruycFWqRXt6am0z/gFICmhejn/7lVx6ugfPcahrNowOdeCXzc2bj+g2uYBJAlmfeN7/tc4PKFccmGR5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787078434; c=relaxed/simple;
	bh=gWu8dywKzZxh8B5LRUDNUF2szjoA60J+za/48dnQDU4=;
	h=To:Subject:From:Message-Id:Date; b=L444cD/48d/ScPyGUxNiOyGT9rFeaxy1ovvdwYhPXd2YD+SsT2oFEA8fKzIPEJKzqqaywIDwUBuNOzeQuONNpb0btR7dmBr/Ho6CvV4m5oXoA3auEgEtI7WZNmj3g+60j76r0AutHjGG3DpTHIimTnJ4+/AUQtn1AIY0P0cAKMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEIr0IeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEIr0IeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11C5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787078433;
	bh=gWu8dywKzZxh8B5LRUDNUF2szjoA60J+za/48dnQDU4=;
	h=To:Subject:From:Date:From;
	b=JEIr0IeRqRHFD2nmEdIy9C/pMQE2Aqc4lvbbHPstkt+R8gMLhGb3XW33J5LbVZD03
	 KJcNfk3Yz4auVkOe+aLMMfTKKgU7gwkrD4/THEswGKQv+UpgGbIsRThUsXL4tYkYRN
	 zNg8wnqIWkWJ2UXzwyihCUFKbCvJnmpi2JIFKDkkTddQiG0MmrKToYwCJ+LLEIhryf
	 fKTZL5oVeej3BEM9ZuL31WrBOA4xQMIor6Bu+jxaE/4W+WlOdj9VlDLUCiPoCJ3md2
	 avaBs2OK1+zAtfh5XNg3gfCgZIf4a+hb6Oc2x3/k2GbasOIDewbqMl/H6HbM9O78k4
	 HcgYUoa1lbc4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6ECC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707843369.32395.13922311279549804192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72caea288156ee13c275b397aa5077b1e12927258e740df502983e5f12d42e8
Date: Tue, 18 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787078433
