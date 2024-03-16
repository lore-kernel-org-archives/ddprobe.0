Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC792746E
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710564497; cv=none; b=FtCrsGAaq75ZAdX/wjpLaXHMoFgxq9OJTAUY3/k3dIf49z1SF9iPZ8ibAUhmtn8MRX+QLLhefLfjt6/etOvRuM+ypGSSfRpucDntRp46srR5uq9+jzz4sfltH+k87gkR0flXGcVs/5IChLFzMdK0HNF7a740VqdREDxEa6CxO1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710564497; c=relaxed/simple;
	bh=s4BP3H2IX7nqprEMj2IgLA8KjzDI08LqlbRLMQCmKu4=;
	h=To:Subject:From:Message-Id:Date; b=i1KNX2sbOEI/NIv4tOa43gLAduB9TtNiJIcklYr9nHoqHqAyc6XCMMiGglRjVZG7z0b9BG+POqIrT09WZId9Q8g45Of1Iny4VlTQL9cwUeL2DkK3D5/QNnqP7ie1VTXGtTmpKeXJ1aJXnmKJRShFyCnGtYF7Dt3hEqHeAA7hvIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDUpvsRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDUpvsRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C39FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710564496;
	bh=s4BP3H2IX7nqprEMj2IgLA8KjzDI08LqlbRLMQCmKu4=;
	h=To:Subject:From:Date:From;
	b=aDUpvsRXrPfwaDSpUpBkAucKVd8a6zbKmMEK5PFAZ6aNzoxpZhd9P5hrgUKnwMUdm
	 iWUMG0H/LtkTQALA8XMHvMCwbe451Fl7YNcc1BY/3Uk3FCfmMjvC9/QyidHPCd1n7V
	 24eCzz1wUu6pXsPIRFqok8WYEI4ExwYmobQc6AkD9NlIv0MWTCK0i2To18ypLgJtEh
	 sj1GX9QisnqMBAbrmeQvTJT9+n2fhPMd8nKFeb/PzIf73cXZ0edM293gYMJ2VoVXrS
	 0Gtz14nN35P2OFVjvf4kuneskrn3TxIuIp680P8j5plSvJ+KUmGXpojo9qQfZ+2Dv/
	 pwlz7BBLvs1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62168C54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171056449636.10967.5364005999576682140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a94c3f758d316b25aef855b1b8502b8a6e1366f4b51cbb64884c5301824abd
Date: Sat, 16 Mar 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710564496
