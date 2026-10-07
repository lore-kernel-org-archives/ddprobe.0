Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5547541C72
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791336634; cv=none; b=VpF6PzQCn4KOvvM4UK7Wgz47WVUjuqCYWXJo5i2G0Ag6YHdlAFbG/SyAB3IMzh27T5uBphITPS51jjDYEqebMDg/qu9npfuz4DX2KbwgfGkI2RwV8eQJGuKNabXGp9MO3aLsYjS75EhD4Ct/aP/X1/b7fVS9cza433lJ9f+wea8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791336634; c=relaxed/simple;
	bh=HnnSSGgNVwLRO5wtZVDdVXzZ4v+ZiJJ22fHo0QIFTNg=;
	h=To:Subject:From:Message-Id:Date; b=SRpU8FRaT8T1qmEUv2kLGz1NRu/pZf0bjd0lvM3AoHc6VD8BlM1Xh/1U4c9nybY8SJRC0hxzEmBYAaNnEOskYfjk1GZhJWSqHow/BFd7NhFLkZQ8p2/ogRbFHci6ExPcMEj98JMe/Tl6L4qgQUNNU0ZWbv0ZxBgiuDgCwLCMIoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+CU0dME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+CU0dME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D339AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791336633;
	bh=HnnSSGgNVwLRO5wtZVDdVXzZ4v+ZiJJ22fHo0QIFTNg=;
	h=To:Subject:From:Date:From;
	b=A+CU0dMEsNXZzJ++O3+a0DkYiErAi8KcK2vSQADGY45aW+xh6Yd8iyLTQRSQVy56c
	 fls/NRv+0lgcvzXkA7J4xzeC0tkVfUhUsjR0e9wi9z2eccLD1kKjX42s0MfFDxMKGJ
	 vhaXdZZ+H1yB7wNcIFIZT5pPg6h5tj4iDMjIw41qmEApxns9P18KaJaJlz2tJL4l9U
	 AsyAkXfmsANipVtgtduI1kygA8eKbGjfMJ07lx11JoFH8DTNNW0RSHDBNIVzlqjU+L
	 xFaIpt+3xiSnt9NmOaGGEXippkilBKuWwrKdt2NkFzLsGdbUfJ9FpCSZvh1DEzvWTl
	 pxWwhzs016A2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD702CA5FED
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133663368.3837.6313600284169872009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5149f2831beb655a316618591a2e3771511da7e3f89f8c5c1a2ed8dc9798b191
Date: Wed, 07 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791336633
