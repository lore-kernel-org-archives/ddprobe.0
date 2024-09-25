Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C322F32
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727239554; cv=none; b=KKbfcJSowpQrYuVhZ6iSK1iHci8exgywU84kYuU4O/VgifJyYXil87U/Sgcfh3HAYFaj2cXuMw9ljk73CuzbO7OOJJv5WYA6sjYKMGNaPv/lfEtOJGhT5LFZuDn8iNwMtt45MemzfODkXmwYPczqg+WoVmoM1UBNcrJfcMO0h58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727239554; c=relaxed/simple;
	bh=NCXpcIT1AcfKOJ2j1okux6HF1eKib+pTyEWVKLfIc8U=;
	h=To:Subject:From:Message-Id:Date; b=tDbiRmkLifLZlWH/4/RA9gIBIajHey26F7FtKwtAK6hdFrdXelWRIFt0hcCFA7V0jclb5uR42hjmgsm+EIMO/WRBLgrKgiDaQqhlEEiuIpq6hIqE/D7Rsp78io3GrFOVzyOR1iyk3FRvAZhdhffc1EzsagAbfbTNU9utv8aHyBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kn/pwuV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kn/pwuV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD330C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727239553;
	bh=NCXpcIT1AcfKOJ2j1okux6HF1eKib+pTyEWVKLfIc8U=;
	h=To:Subject:From:Date:From;
	b=Kn/pwuV/UXTK7BrjjyX0Joz2L1mmJnTgDpKbTU9f/XMrRYhChWCVxZZlAYBtYcE3U
	 sleuD8K2RE7A8dL8VUOtkdude3bfUtRSZlEtgmTUqHHDJQfDXVSUXBcDioCUSpHR97
	 Cm2U0M5Lf/GGYfX08WgwjjYA5qeBiQMa/iowLdBwISSng8Wbok35gJ0+M8VOP9zx9T
	 8Hhg0iVP+Azt1k4g8rjHw2VT5deheSp3pTiFMaCvx37IX+rpELzhupAlkRIoipQrVY
	 7XC8eYRogzgghUFwk/bif4k5ruWit9XeAGo1EJKXWzngQhjxF1soVGeUqmEPlFd7PE
	 HevL1XV4B2clw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18C8CF9C6C
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172723955362.3185.13580662748483314163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eef7f61123607dfd1388257da5774527359daedc6a7f427aefbf9748a9a4859
Date: Wed, 25 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727239553
