Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A6431D362
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783750114; cv=none; b=l+zJfEePsAhlA0xZJ2WUqQOcQLLUY0Hyi36I9URO/vu2z2plQDSYFe68XdgI8ZiYXBDLvOZSRjTr0iefLY/XNcGhoEroNwSAp6nGDhSEuDVKQZ1bgurcnNUTq1XIlX0fILxIu+icUEc0l05bZtySwqPWBMV9QOwVTou11Tkseo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783750114; c=relaxed/simple;
	bh=tfrrHALf9N2/G1yezEs63HPGkLswMRkMS/e6mYnJYRo=;
	h=To:Subject:From:Message-Id:Date; b=p1Db4ZBilq4CwQY4w6+syEHCo9E8mAcpoEPZq98mDcL/VS82OqrT8kPQBdR5ElBA4D3mWqYsihNEOArR5+aHr2VDMkAXQnoLQKUnK3bR9t/bSWEJPQZAfVNEuPglSrGZupOv/ogLi/UOJSrRrvEAOfiJvIYrugcaBlQ41O+4XD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChLMKocf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChLMKocf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5519C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783750113;
	bh=tfrrHALf9N2/G1yezEs63HPGkLswMRkMS/e6mYnJYRo=;
	h=To:Subject:From:Date:From;
	b=ChLMKocfIIbP3tv+nSUGFagatMRn4YUyvGNqa+R6ldb7NfNm1fuHzFwL51a3mY99j
	 V4TdhaIMgB/bXasn7FoN1IDDK181W9VQbCR0BJ85MkzTum4KxWIYpo45m6ybHD9Vpp
	 ii6ckogcAdXlJ+rt/eDwCnWxUu1GngKYKxkCRnGypNbSB7guu3baJ8S7bvO0tY3Hab
	 NjOjbiTID29FHZG2TXQTZmi9ewkocsYviAu7Qx70wIBZE3lJOHTaIRkGmvXDzEyBR/
	 Mk3AJFT64lbLg29OxPSGufJ7vkIWBtMkZolbs6dTTYTHimDuzfo2jWHqm25mBVmyLX
	 0JWTaFh0kXiZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E68C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375011371.12652.6388832530534420498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb54430be89515cda44b51c10ce433046e4d96288d791fcc3e439766aefb809
Date: Sat, 11 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783750113
