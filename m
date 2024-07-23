Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F2D8814
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721705154; cv=none; b=kmEMkoG18rcFqq8GONUCuwcjh13j4aEPOTCd5Xh1X6B0fsZaZU2l/+ONI41RCalveox3QoAFQ3+U38XioJIN31Ok9lIMIayAkDioFrWznfsjd8ZTsRGvHZxxVyEHzYSdpTl88CAvtxxaQG3DsCS9rOKYmPHa4twf/whqrd0mzQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721705154; c=relaxed/simple;
	bh=4+PEqn6jjQ+d04lwa+gt8at5uLk1oeff3fujJ+eONa4=;
	h=To:Subject:From:Message-Id:Date; b=Uh6FMZ9SEiRlWxRYKSahObbowrdKRMzURN0CSfsiw0JRWtcORnusk6IUIh3ynNQfwW5BY0iL5gdHicTn3FpZ6L1xrDC/mp5yJE9QIhO//8pIbehnvqYYH15zbGsiKpMwXenH1Ret/WqlK74UgDiQmZeN3IvHtWztAo4FggC2ZsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuCjDvf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuCjDvf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E5AC4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721705153;
	bh=4+PEqn6jjQ+d04lwa+gt8at5uLk1oeff3fujJ+eONa4=;
	h=To:Subject:From:Date:From;
	b=tuCjDvf7yS9YHbUrPuCKfuF3OTghArowLbb9rXXPDz7VnHbT4DYCgnNhauCYHrIOK
	 OmAsxd5n3NEHl+Mfl9Avw7BGRz2Cq+ZMgixgKi3wyVyhxuiPzai/i4w1c8FTzsvpyL
	 2//fViyv015SoXaUvN1SizGSc1kn78RIzgxDTTjrA20Cz5sCXDR4eqGNUeS5SiEXpd
	 iUQkKUUw7bjBCco7q7R6t7QdmnLW2qbEESRmRyv7Jx8Yxbh787UGuoSoZGSDiQGDbN
	 G95wzRfviPJr3nf+6eZ7AwoPjRqKP51UFADN5ksstHK31Ajutsc7m55Vj3gOGTeHjT
	 AohZqh3XslaCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6EFC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170515363.27075.1290774658154635687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b84a90875271d4fd2e49c980045d3cc2cfde3f9e65cae23ca707ea7a4c12ba28
Date: Tue, 23 Jul 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721705153
