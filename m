Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466B214B945
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744604394; cv=none; b=ITrehB47X0F+L/wCDwWyfh0MzVdRplfl0C01ACB1gg/3SSaEmdmxfHmaVcg2ildGHutjAHd1SRAJWaddpJHZ0J2oDB7e5EvTCysmbdHNjwLHZNXgz6WsgAIC+/v/wnNGmjcdS1bqAqaRw3fu9fyYlHORdPnfVxbIvLUr/fbX8gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744604394; c=relaxed/simple;
	bh=ARaMXjOy7CbULj2SNXrD/U4Apta5HIR6r0a46sGRjkk=;
	h=To:Subject:From:Message-Id:Date; b=tmm9X/3CQGokzvWRzrhgnM0SnJ5xnMG8wyPoKcCzIJeR79vdbm3hTdYnp34zPM1tcl0cFCJNMmEuyTnc/520UT/ImiOeBC0mMC4zaL8TofuEJ9wPXrlpbUcgXTm3OGuC0ox/iCZzFsVDfaPmFtXV9U7wwTpF+NoqSRQFQIXSAe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tP6Qag97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tP6Qag97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48EBC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744604393;
	bh=ARaMXjOy7CbULj2SNXrD/U4Apta5HIR6r0a46sGRjkk=;
	h=To:Subject:From:Date:From;
	b=tP6Qag976DUN92M5G1IYOdq/OmjDmnmQRFRmt/gVrtvaovkdKG30LIPv2cBHaMgOd
	 y83QrgWHLpUycX2toCUmWuxysFskSp87MfSDAzW7WkZ3K0vPyjeMxJ8km+005Du+Sd
	 WkAohLzbtEUSxfU4hdQQGEcSMMyQZ+Ei9IIY6uOlN48cpq/7WOaGD19vv5/CF9xtyX
	 cxlorKx2QIaVwE7lYPX+D20uYdJxD9Vb4xqV6OpeSwGlXPRUVdb86/ccu8nTlgCylA
	 2786LjOr7S7qd/zUqV494aevu17iFHSfvT0zgLf50eurouC50+d1CVYQA2Ot6e534M
	 5J0czQqj1kiUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93799C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460439359.8439.4167666417348108878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f8f59f7becf2953743d17ab7abb8a213e9c00b819057fdb73576eb0b7abea3
Date: Mon, 14 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744604393
