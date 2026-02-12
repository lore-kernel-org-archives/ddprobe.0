Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B8A1E5702
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770922494; cv=none; b=P/g0jc7laf/rs46cZZBR0ipeY2G13VRkyoV+nCHCE5oOYt/RXKrPmQrhZH3EYIU7FoXJSWiBPAh+Bf1vcdkp8RkfQPa5TLWLrs9mJ4WmZOzyFiAp13jRKSre9HdyDX+KfBXr5FMDpMCcjOstVG8On6FJFlQ4OMlBbl3Yux/uQHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770922494; c=relaxed/simple;
	bh=A89gHJ9VkoJCJWG/sMqffmgrvwJTNRwzb1ubd51jWnc=;
	h=To:Subject:From:Message-Id:Date; b=IrxqzoQZdGV0cBr0D6C9j3OnWEmAY5prSQvmI+c1+Di/aiorj4qmWLNR05FJQeRNS/szut2Tr4I4dTr69QFrVP+akgw78e0+7hQKqJdHxBamNWEbXOJx1fMoOwqiRrQgcVSMD9mkmFROwi4HPknaJsJ2AlHb0CdjsXhV+zhHweA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecD8TnKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecD8TnKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48D1C19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770922493;
	bh=A89gHJ9VkoJCJWG/sMqffmgrvwJTNRwzb1ubd51jWnc=;
	h=To:Subject:From:Date:From;
	b=ecD8TnKyn3nAbC90NOIF3fUIIwEaggHVWhSinmzWomXldSOytWKKGP0LOEg87dqdA
	 /RdRyVkZm1kE6C6VhDqwVsLeVqbSYO7LU7CHXdO+GThcRLOAx+Jnxqy+dlFGXsF1a/
	 mQzMVYk3rxm7tROrNmSWURWwEJh72EF3ZbDt0qPo0zAK8wxUu9l34N5wxrMMOxR5B4
	 JQq4VJEiri4bx2F7kaKrYm6ehhTIdaidToycTy+wKrz/TcvnfW5gkXc445HZEDdC2K
	 /Ii0yrZXV1En83OiukfKnYWagAOzCzW2jWchTHQlcRox/zqI4ZYP32q382jFaVIaxw
	 P/onb4fE4itIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE18EEA84A
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092249363.16847.2417329635909450870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622115c456f74d8a3b239a680489c3632d7f88739d2917ac90da59843617857e
Date: Thu, 12 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770922493
