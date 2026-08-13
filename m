Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89AB13515C2
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786637435; cv=none; b=dk1eslLTM9m/4iI7xN/e7Cid07puYNhGvbZQjBWhRvFi/HU9ZGBGWnaumBEizibVpfjT+SyKh6YpiSi0g2OQaOknjUE5JpjpFXF0iF+pBejV0fBUC4eLqFTGC0u0gwtChrpkQAbDGumT0FR0xf7ed0msYA8otS8T3I3f0SUvLGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786637435; c=relaxed/simple;
	bh=84Z/mFMrGqbaBK83OSlxzKlvTElI2g8BbsDZ1EVtJi0=;
	h=To:Subject:From:Message-Id:Date; b=cBRtnRPtkfVeamsfnCdRRPo5RYlIrzm3mK1sm7rBsI1EvDGQx/jJ3SVIuE7Nvs4rgJeoLOfKs87544DT9tC/63ylrbxivErUsgTB6qewC9BXnUQ6xHyAgcDMurLovwKXoC3rBDsS51zalpaGxtdJw3phq/gFhVjmPzNaFfbMXkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOmgD/Xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOmgD/Xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD5DC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786637433;
	bh=84Z/mFMrGqbaBK83OSlxzKlvTElI2g8BbsDZ1EVtJi0=;
	h=To:Subject:From:Date:From;
	b=kOmgD/XcXjmK5LCUW7xV2Qrmx0Tct+hzxN5rmS9a+Xj0O2XC5VbqQG9psm1gaj5MC
	 M6iQmVwnP98zyqJBJ8Q6WM2daXpxHLJLq5xheIER6qbTfQr4hHr8YkMtSgdMoFkDB4
	 +4IV0oj3zlqL7sDllxgw3dkw8jLa+o5+Lo59xEzDX8Idmw22aL/LleEXdl9gIcHRVF
	 vFdb2PxszTx800QyaM+LD8EySFBBCPY8gZWbSpBE6ZdI1sw9OjAzdlK1RTRp1DBZgf
	 Cx0VCE1cxMqQ8/0YdQ99Aafu2jnGGjvdFyPkgz0xqgRWpBe/tmknuM+YXmWIUaSBV1
	 Kjla15u/QZORQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89AAC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663743368.26818.16177799344894090571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd815fd847af6bbcd77f7862ca2768b9c7cd3c8a331bf88933b89d97afc9249
Date: Thu, 13 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786637433
