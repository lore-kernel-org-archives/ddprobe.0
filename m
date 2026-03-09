Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A64345CC2
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773079494; cv=none; b=CESnswrD6qdJDdzh5SRyG+EYJ/LiQH2T5Dt8bdXHd0YjA7EK4vxF2Wta+shnDC4nyKKGYDmqr29+Jnh2LM4G4BqoLhS4AWCPrENG1OnzkeMENBkBLIT6DsPletZzil39ED7sEJTa4DRbT+xvDBzNMjZ8G4M0bep+sG8bhbF5sGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773079494; c=relaxed/simple;
	bh=MoaG4iX0e9hV3b4tvYGao6q8oOkwkrIbVgn/sbV7Ti0=;
	h=To:Subject:From:Message-Id:Date; b=ATxupXRUQWA9nsv9WH0UD/6npIdymznila1z3ejl4oo9chBdRH+cy+1x3vIEUc9cmm8ApjEnSQiQx8M7hhulZccH/0/dtJyIM1C7a+lRSO0GoURbcECOvq2m8dhi9AzcYXyNY2v2EsyMxG60n//P2BHM7pWLGjuT+MXN4+47S1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al4iZj9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al4iZj9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F66C2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773079493;
	bh=MoaG4iX0e9hV3b4tvYGao6q8oOkwkrIbVgn/sbV7Ti0=;
	h=To:Subject:From:Date:From;
	b=Al4iZj9XAPA59CCmIMzy6YBPRV1ghnX0+/hHN14mdqGz6xybm4rwZ5ErbIvN+yX5Z
	 +QYjcoQF0zoUz5XwfD/c5ZOPnT42fp6JJF3yCMrO04sV+U4FKyEvCA444K/R5+Nz0Y
	 hEkMxWFXwcRMhsK0TXe8c+Wl3hufpFiyi/D7QtV/s6lIneTKVJlmQFO3CJS1LuWfuL
	 smjpqnBxp8QxW0Mg4hxM2+rf3FhVbHmv0bvwtk+A6n0QrxfK5K5FDuYHoKS5fwzW5i
	 Cm3UEARefj65y9cSH0J5eT33AZx8Y2tf29mSL58ZzVrNE5t6feGDL5pz7AeIKGgNRK
	 c/EVIgUDFheCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2747FCA170
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307949365.17736.10696393387202147662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76340cbcb8a9be1fffe515c5214c230d0f8caef25dce0f16e53032355a1d8fee
Date: Mon, 09 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773079493
