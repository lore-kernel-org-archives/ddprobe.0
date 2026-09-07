Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501781DFDA1
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788757834; cv=none; b=bkRiO9qxooUWDRPq4xlqit+qkIWXEMbmyhG2ZLjFVoPhdsEccwhT9vokMQVXk6wpC9rHCOBKxQ01Isz1kkbyTV6CcWLpmB9UZS0mVNoKBDE9TzIDOfgS/h658urZGhPRgtlv21iS/T1gLnaPDXeugIdy1XwEqC41q6B4GYCtlAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788757834; c=relaxed/simple;
	bh=TsjAmpVWhBVfgUgg6kES3vdRG0wi0WYXk/LgKDobVjg=;
	h=To:Subject:From:Message-Id:Date; b=WVbDc9wYwTlEPEAHtopkOD96A0tnbduXpBpoMbg/DsLoiiotscpBrD5RZU0FQttrdox8TGKrf9KJFp8holyCBi5jPJAxs0JT3x05m5MnvpnaPpMxOffV+Y7/v/hhH3kBup2qd74AEgiWn2/6DuMt/YA5lCDn62V3NscVrAXIdqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kauodsOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kauodsOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CBBC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788757833;
	bh=TsjAmpVWhBVfgUgg6kES3vdRG0wi0WYXk/LgKDobVjg=;
	h=To:Subject:From:Date:From;
	b=kauodsOZ/JQx5AMH9BJZZq2C1G0b8yRibitolKgUY2y5iOLr9xZJ68h2Zw7dBr944
	 tjnaf8sbP1KJMkTZKkIwOwyo+0PgX4bJZoR8vQmmA0lhUUXEYzggyS4yq+Wv9QZ3V2
	 /ilu3Kod8rUJNTg13obAI7X+x0pgNC52wrjbc3TdPufFV/gjfmbda7iuFV1XD/0xNE
	 ThU5ZX4jT7jo5nTgwdr9WuQvozkmhXOaX3nJ0MPTisAK3xf5Wclumk5QB7dtCIrlaD
	 DCndH6AzZQs+DFe4LQZMLJd5pFyzEJmU/E94eieHJ9GpK2wifZlr2uB1Rh6PFWkpFd
	 s0QXyawKf+NfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5240C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875783370.19065.3080584586755491458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4799c50dc6ecf2fb2198e55b0de6045ef59730c4d0f39db6ccf545e4e99e307
Date: Mon, 07 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788757833
