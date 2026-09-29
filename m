Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E634344D9B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790642434; cv=none; b=b90bYQ6S6fzu+MunMTC3qPs4+ZAyknBm1GQbNG5bd+x55/iKhXYF+FpFiLz0U2+D7SeiDDrN/zMmqAFi6Lf/EvkrHM9G7WxpsYgZ2RyMgUSVC1okZtmCdFmhRD2R40lNSNLl5l7x1QBjS6eH6wJwCX2w7c7pCtfjrOo+868T42Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790642434; c=relaxed/simple;
	bh=11KyNTQ/7eJSkxQqTamcQOO1OSzSHAfj7hunVi6qtxU=;
	h=To:Subject:From:Message-Id:Date; b=jgCvF+l8Gv7qbX33xEzHohAzssBkxeRTLJXb8OM2w/TjSxxfwuSuv0AHeGzo+FAjhXj7kzoA1CS2xc43Nz/NgSjcDLKEh7kveLjTK5gyjESt03rcebvtWQPTwJlOuww2FI1PjU/+nT1uICuhXqv9wsbLO6q9zJMnpGX5TxutdQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJ10QjEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ10QjEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCC5C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790642433;
	bh=11KyNTQ/7eJSkxQqTamcQOO1OSzSHAfj7hunVi6qtxU=;
	h=To:Subject:From:Date:From;
	b=rJ10QjEl7eLNxxUPMT3Xw6zC3UWLD+BOR5SQ5cwBxZg4qOUI6yqE1dAcTd1ZNbE2+
	 v15EnL78cBMAspW+OjhoHxGYgb9PQs9KJOkXBjXveIl0jkCnZFACy5qe+UdObU7e+W
	 q8FRUutyF8E1JUYfnvsj5UpSUEAixfhae5nKisdzjLMaMksK2Tk2H1xxVHMgIGyCYQ
	 +vNhUSi6AFZ+eOPjNo9BsgRdNbWc4CVQ3KiA9dRPyv2vY9+73XfCok46lM6TRtSITD
	 v30Af0XcqImG9GJEBPin0JV/043WLsVo5uMWFIlNHyNfGkr9Z9usRtFbmPNeAP4Sjh
	 7OCQMOHOpr5vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAACCA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064243368.28403.9109543700964998537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efb3ae8fef3f3ddc7ae51b4d1731c8d55ab400bade878600b028162541e51c0
Date: Tue, 29 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790642433
