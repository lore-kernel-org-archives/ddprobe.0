Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0203B1BD
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766555634; cv=none; b=eOCIGUkaG+vXTlZ+Cb6aXBLoDa5VdmiiR89f40DOpHgQdtO5GjdcK1g/FrlwA+oj/hDoGQc3wWDSl52EeSUObvKrvug+GDfgciVjNNgXTtLiLDESI3m4CQXa3nOq0XKn96BBYLs3Hcn6mGD2ZR37agz55PmCnyzxAjXeK7xAdLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766555634; c=relaxed/simple;
	bh=1ZQ0kNmoGYMU00z5/bk9B1U5dW21iAKoURVY3t80CVY=;
	h=To:Subject:From:Message-Id:Date; b=ABOM5WXNILjDekcqL4MJSr6yO4baiugmIKJJoxgMA5ihTLdMSQmJnWu5fgQddxMAjt7Zd5thYWQOPh/utnDGnRuZ9aF7iXHwhiyiIO/terhzDudnFua7ls5zhI2pgQIscSa8aAKNAg2bWRJnmmJyEePm/9rpGVFNUWzrWTHrdRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3VkzLG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3VkzLG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63A5C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766555633;
	bh=1ZQ0kNmoGYMU00z5/bk9B1U5dW21iAKoURVY3t80CVY=;
	h=To:Subject:From:Date:From;
	b=r3VkzLG03mip3WrG+Vw73LCmv8TcpsjAIFD9cgLX3txl9MclQHsSd7HP9aw9N4yqM
	 CCLEVaoM1m4sh4cvpFBK3Y83Jlw7C+fk9e264lxvq1ZxO2EAQvvHj/pjqYwLgAuc3n
	 AdC+BgMoAyP8U9RgmnVYJjfV7jaIEUz8B6nfhYji9uxUFD3qWupF2bI9GLzaKBQY5v
	 zn8ELBobNJYkWDOTTk3SbxL3KSlV+3XfdeliQ8J5yW+Gz5otSlrtLb3T6W1s+nRxBe
	 nBx4NL2+mCy857Ez5WHbLZRaqmo2XHBM/+32B2Z5gInA5nHuBmNHhqVYkyUAjdV1Cd
	 8dgeMrUaRciXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94799E7491A
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655563357.1924.16291112670456521033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26fd71a33345dc31f47876aa2eba8c6c120e23eb5f1f34236574b67ddb1fb7c8
Date: Wed, 24 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766555633
