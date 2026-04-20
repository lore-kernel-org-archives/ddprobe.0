Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239FA3D3CF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776727054; cv=none; b=ekaL8XcY9gIiNpzG0CQJhQDckyPiqQYwxKoeSxPROn0NNZAOhk9t2ZX7+hvlaoo/iFVNywE6md3bToIAxfTg8WTtzQyLu6dk1QDfV5L5+XPYSxfi2u9bwS3eUpdXIP+Byc8MQwGCgPfm5jzRkCrm67+KjzfXeC/WW80WYOFw9nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776727054; c=relaxed/simple;
	bh=WdMBSC2Cz9XKLr6O67/mx4tSPRGq/ADxtPg29pwA3IY=;
	h=To:Subject:From:Message-Id:Date; b=WIzFm7G7GOg8oqe28uIsYh+uVG+eC7r0ZIZCS6GXkmnvROmc6HF7SuG6yMHjus7gg71so06A1IuFavi9IFh8sXDzXHG03205soz/uKvjrbcBqF3HLX88TR0FOd2Q1wfm+hF4UeLh9pn4QR8iKbX7k/3BnVOxx27a14mma3MoRcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+DF0rdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+DF0rdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB781C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776727053;
	bh=WdMBSC2Cz9XKLr6O67/mx4tSPRGq/ADxtPg29pwA3IY=;
	h=To:Subject:From:Date:From;
	b=W+DF0rdXOuV3EiDZmh+yI7+X67maPrqIrwNzulI8M5GKmuMxzk5IpzvHw7xMAofZf
	 UEDFTIuuFsTmMQ5wUtYHasee67MiZUQpWrF6oN0sGun4UG2u3Kx96T/hVjo/OcLdie
	 qt5DVV6vwAZuPBjhpuc4/W/BaGWJACgpL1gHIlx/icnVzBcVgIjhQ03RGkWZX2VCD7
	 lEvBCJeRS79MtbZUK15gC0mSlopKnILTT1l4Rvwpjep+mZ2IGeK1D0SSBGTK+ZBJPQ
	 rkZHdjzUmTIGBP3v9ofLWport9Q5Mj0lnQduNObrl5FfcrT/4mfV9lvK89IaAjWTdY
	 xINkA6oOe7MBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CDCF5A8CE
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672705368.21950.10202746056299900188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c222842613a3b7236ce549b18678258c08e53142ab277ca43320b530cc09b923
Date: Mon, 20 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776727053
