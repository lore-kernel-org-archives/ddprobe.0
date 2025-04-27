Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390B48C1E
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745770794; cv=none; b=KFEFRuKFV6L/Rw3ZUTG8vYkAK2v2/vc0G9mKs51OmX98I4I3o25Q1DP+cFmbnJ+DXZZzrv9dLJHtpgF8idIGCiOR4ErFnMKjaGfJdznrpM2P92KkmxAAZrNtgmvzhBFqnd3dUusZFYRO2VcZP7PJ732OxfwNwrRd2heDeIy2i8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745770794; c=relaxed/simple;
	bh=hokGOOmfRef45AzjJis0RC3FntJcrETbAOdQyDzXa8Q=;
	h=To:Subject:From:Message-Id:Date; b=V7BX1O1GTyOLnTZEfzhBMj2+QGdL4+FBIMUTwfRzmX0KL8Ghq4xDNDrg/AiPmwpHkDg2Sisi7pGSJlW/UFvX+9ATaZR4a0fax++/P6qr0QWC/YZ2IBgkPtshPI56ydaYFMm09NPUniYffQyvB4Sx6QvTiPBlSCg9ch0Xdhx+sfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jv/ky4pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jv/ky4pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6338C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745770793;
	bh=hokGOOmfRef45AzjJis0RC3FntJcrETbAOdQyDzXa8Q=;
	h=To:Subject:From:Date:From;
	b=jv/ky4ppj9ClwSm6IEfXMFtEwufYZDVfYXSt+uWpLFEre9xT1CPxjLyKthrPu1rKY
	 UTMOAlhq0RXEcEcsOn6N9iY+dHCL+4XOzNpzzEdL68BB6iHboTd1l4EdHbHOukwk8z
	 zTYyphdZB7ULsTBlrWFvFxjORQH64daIWH4aiow/vCZT9O1nm9YwfWrbYGN8F1yJM7
	 29QKI1YWQ87SvtToJwQEtLgEcesWD/eybiHUlsz0dKyq5gs22i4q1BpRZ8ncUEx99i
	 KwBZoD9VwRUuNIzMeu1afQLVU0vvJ7Wqk85lgdMW1xyTXQhFzbjiZFZTdAHySp2fhj
	 SI9Yl96vlb+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E70C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577079357.16681.10275245959311851453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed52846927c271a645da5db28a63f3fd53ea65224adeecc2aaabff02330e8c3
Date: Sun, 27 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745770793
