Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760801BDDB
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720351583; cv=none; b=LFcjTKG7PYNYde+J0lQf1xStIXmQU3+Amj0CzLgYVrIXvU/kiX354ejqahkiid00ZVjIrU9ZV8QW64eUEGf2aJbVanu4RP+9PzdI9Esm+dwv2mE5jV/mKCY/b/2AaK+Nm5TbPdl+xYdYSZcEUpIMfr7/3R9IjjSnCrDjsxA8V00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720351583; c=relaxed/simple;
	bh=Cw/6dNQSIsZmTBzSu8GONDYQpbwRKtu4Jb9lRtz9lLE=;
	h=To:Subject:From:Message-Id:Date; b=LFGaTnGDllTbfea1KH4Rqf9J3zo2kPc9K1Dgw8EBuqbI6elur7KV2SdjxtSTzmgbhFY8YBW2zG5+r+8FyVfSwAmHgOS1W2fGBLPOX/GGJdR/QptPr6LUVjY/SUZ+4XrOgm4DfQHOrmm51L5Ag5rhNIH8Z2YV3AVaKhPAZ3CTyj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK/OS9MT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK/OS9MT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9922C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720351582;
	bh=Cw/6dNQSIsZmTBzSu8GONDYQpbwRKtu4Jb9lRtz9lLE=;
	h=To:Subject:From:Date:From;
	b=GK/OS9MTQrWJE5jon+SLjH2NrIsmC9pc4JnmblfB9w7OsSRWOOUmINIKkE37pCVRL
	 aPOG1KIw1ojkWTxX0kIi0gWosnAC8iNiKOdu7YF59Ew/sjGx3sAxa8n7gDjpKOizRA
	 qQ844R16srsOJeGw8XjVs9CK1/O6Au/khfANJDIjeYC95oli+WHB1+ROzyx/CxpygT
	 O2Rsg56GXu6cGGBKBnIlxMkHzmFWd+7HbS7j5rWMxBu1PRjqCoETLIUndRLd/IKucA
	 lRG7p7yac+aAmYPw56tEaPWIs5rBJBXPhqjWBYo1T8cvHW5CamfLTURELZAD5P9XGF
	 SNRfjFa1vsmVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64BAC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035158277.28271.12152830314031062610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0169a2e2cf555402afde4a0fb4e11737a2bf97fe21284546022d75b1390e0acd
Date: Sun, 07 Jul 2024 11:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720351582
