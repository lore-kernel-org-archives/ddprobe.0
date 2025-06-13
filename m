Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BAE274657
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749798594; cv=none; b=fAlZXfWy6awtZCXSfx/IynkmFyEufjTHmcg4Jk5QZzgenJBtBYOyuX3hPpH6ScRuJ9xim9JIE8tJXTE6EshTQxxgwd47Cp6xv+O+p1IOV4ZMxzKvdJTAT1fKGtD2NSbnud18LQl3QJNPx4RcKyQ9cLNGmahkmhsYNOcwrO54HAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749798594; c=relaxed/simple;
	bh=5o8I56rBk/qjWxVPW04cZSO1Y1i9hRTTrCPBz/xAAfA=;
	h=To:Subject:From:Message-Id:Date; b=tkJeEuI2zP98ZtRnthVQO0IrhVFtz+AlaTVHrQSFG8FpAF5UZ3vWSjoNIGOkNdCoHEK+hhuHW39TpBb9pTnXtEg0VGQlItTsjVmFHXBIa7tDx6LjO2L/cA05DwSocqbw7pCHtULQlZzVz5Tprn8+Izb6sHqKr4aaggkU7yX04UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijvmLotj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijvmLotj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E02C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749798593;
	bh=5o8I56rBk/qjWxVPW04cZSO1Y1i9hRTTrCPBz/xAAfA=;
	h=To:Subject:From:Date:From;
	b=ijvmLotjNwyt0mjZocaIq1bk2vf4VXMggY8I/gwETW7e3CKGluo/n/sJOWM6kOo19
	 lBER8PzTvJ9N7aUHd7LAFJUh0sSHpb8rxdST+2poBtd+l78uvh7Ztv4wRoHjImlCPy
	 PBYr1WlwfkXvX56LXg/W//7zjjbxuf8Ouktj8wI794xoDLcXRSaBXkZjpyUJ9Kawoq
	 hmSvIueyAQDLqiHDNPBhYPhxM4d9OQxS0h7Bo1H+YLA+WhMuX2tQ5CabKTfSODtpNE
	 Mc1rC2uVEBGpWiprZJ/9Qvbcqj930vD3/pmW1CF9rdCb8PAWdeRUQeFGBqJbPE5H0P
	 7khHx40A5k5Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97063C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979859358.29743.15370953720606472290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce6082f4cc96e23ea5c722a0032c2e3b7bd6adfeee066536bebf4136e8981ff
Date: Fri, 13 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749798593
