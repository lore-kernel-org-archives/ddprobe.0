Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D9324397B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743676194; cv=none; b=odszZ8mKoDW03Jgvhrmb0/2lw/Uiw0WoeCZbDk53wQTFu4+xHExSPCmI1B14KxOarP2fb1iOwzbXHQIZo+8/IqY82Pc1Ht9w2RODYpi+NOYD2N11pogXSEXZXDVbDAeJn3/u16E9yiFlRsOp8S3jghtE83wIMYMhzPw8xNwS9dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743676194; c=relaxed/simple;
	bh=ahdqj8OLC5Cp9pLV9tj/kprioIe6EDOvkyRamPqY+KQ=;
	h=To:Subject:From:Message-Id:Date; b=i+ug++4PwYL1T475jtzJmMDamBE6hEOskEpMZYnY9yMYKDymbZQfcSm7OuPgPtbjJXlcox6vWov+D+0nV1PXzx1GD7Xl3HXGIBKvRk+MWIVOLCqSKyIpwXQbhdPjSOi/Si/jPr5rw7bk6b2ZKcNUVPt5GXq1bxgauNsKtVhi1NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJgYPkZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJgYPkZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB41EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743676193;
	bh=ahdqj8OLC5Cp9pLV9tj/kprioIe6EDOvkyRamPqY+KQ=;
	h=To:Subject:From:Date:From;
	b=ZJgYPkZFD0pKcdA6cjcadZQGCmA7fo3grgNzpsW/pJTPmzPtQ7oAfiGsnHO3xJBeR
	 u0Ccb/p0PM3iH65FZ63ywu7AX5ZJU/xS9niQN37aEx/wqOKeChgB3uIliEJBe44qxw
	 8jLRfXUOs3SJE/8+IEhLGljtRpo+Vn6jSjqiC6TaMdGskCBNkM/wvYS27zN8se/voe
	 yyKIHjFeR9+YknoN3//3weTJ+kHpFSRAlDimr3FzA6x+evqKcYglCps3sGI9xoMOwU
	 tPJ/+nQMwqwiI43wEH0BbR3Z+VcFNopc37R1yAF5ZNCNXoEbm2xO8M34LUYVCX3j4J
	 1ZZfWh3lrurOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3110C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367619372.17794.3390156969013364501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939ea20bf9f7b31620ecc3fbee405aeda4760f2672f8f7d04b8ee745c6cc6a56
Date: Thu, 03 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743676193
