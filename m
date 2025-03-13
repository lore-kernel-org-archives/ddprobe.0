Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41D4747F
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741900734; cv=none; b=F9It+WGAYqll61WaxQvLf6LO7UmsOI485tdocgM0Kgg40zwKv/fVgJFaYUbEzw2Bbp0/bgMsiEzJzQGOIWeuoZcgtdtuW/Blh6ciSRfot+pgLkU5bG6lnU7UyoEzZ+ELf+pd5KB422CTzkdDJIy5unHEr6FY9jwbsCha6Q8X9aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741900734; c=relaxed/simple;
	bh=G/qevGclZdHUgOZSsci/KvXrEQXY4MSWRGZVfMZMyn0=;
	h=To:Subject:From:Message-Id:Date; b=CuTA2YL6K8l9Hy7BarIYuz7HJQPolkL46dJV0lk320QP3KQz+7C3d/4b8WLsYk+BG70pCpXlgZblMPdcr2krs0lvl6ezPY970Td3vl0CfPaUTEnIzmAXba2OdLqjyWt1pJOGuV7CV1W6ldaESoKqBABuY9PLLz4uYm3AArJ+2e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INAquT3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INAquT3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABB2C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741900733;
	bh=G/qevGclZdHUgOZSsci/KvXrEQXY4MSWRGZVfMZMyn0=;
	h=To:Subject:From:Date:From;
	b=INAquT3Bberc6AgL6JSeP9ceQsajrhCNH1GqI+o0j8XwwZoBg8gOgrB9shGBMMM45
	 1T95qr91emaniQKrLTM4GwqzIOlteX6Nd3F4BpnwiwDh1/Txw3+bXt6jQkfhjY74Jb
	 1Rc9oVs3UlVo+z6B4KTWv5pWMQoEIgKfVNGMosp4FtmS5gzsSEZ5o/jUnA5gywhxlM
	 r1JxKjxx4dWmGLzmFwwrgZpPp87sdPJxp/R9nHWYFHHFVxdIzzV+jCwsOguWgnk5eD
	 6cKBfNU5sQ9Tl+JfZBYinuSp6fA5I42sj2Uy/SH62riuB++fU6zzuzk1OO4S/KheiB
	 rSQZuIFW6ezKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8E0C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190073360.31993.8934553887390557656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3111c04e34173d41aeee172180c07f6e19502b3f1e2c14cf699ccfd509e1b4
Date: Thu, 13 Mar 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741900733
