Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A93164B44A8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789659035; cv=none; b=cO3oLW6mmkMf/BUj4RJk7B9LGPswkLsddEtcOKYqsoD798xKnGvdUJaiw3fLMVibAg9tKfgqNLhC9zyyQUv5A21/fNIokFDZ0epMIPwuDKZqpnE76r/CUkBm8GvI26H78oCqK2kpHt5a4IkB8XLM72SzWbKGXjkm1wodz69jUok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789659035; c=relaxed/simple;
	bh=is7kXMY7DrEM6ybZxSUx//85o0YK4GoXNtQG7i14cZk=;
	h=To:Subject:From:Message-Id:Date; b=RRUOFB6fmAFJJL14sQZy85vzzhzUKFrjvO6EC89r/5k+a5l7LEW8S5a3WUrKKeuw/NC+mDDZUz8q2Yb0KQfTytTK0mB/KVP8D6C1f+cBkrpJrDbp3yS+ecmq2EmAbKElg/o1SWjV4XsKh1ow5cEZ8LKrnb/GY0e1zICDU1oFcRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnj96fZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnj96fZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3937C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789659033;
	bh=is7kXMY7DrEM6ybZxSUx//85o0YK4GoXNtQG7i14cZk=;
	h=To:Subject:From:Date:From;
	b=pnj96fZZyMwSDEw2pQx2je1JC67cxEk9JBQjY1Oe+G3pQtEBh0tOi1KOO/HqTdpWl
	 kIMqnavp0bDmjvMJxIGoNviABks2+ddJJtZ/3x/oTrQWe4ZY4QcmzSpINcClEjadz2
	 0akEJc0xkBRofPPP4VN7iol9KnsKuO0Xot8Q9eiDsaRfFNboGZtvY/4NRiCSTEsUI6
	 GlOA2TzapGaogZt9drnTP3QmhUPbPbe+QLT5XtiubKLwGDfLmubBQeCyX713j44nqk
	 EbxAsYGqYojnEDhIjIItniSaZZ4DUX0LdNnjVz4HFsRzGcVywtSP5ksl5NKL4mAyj2
	 GRdJcGlt3XOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0CBC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965903369.20753.12429172713850255342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf467ff52c58d20769a228b593b8cdd943700cd210ac2cc1b1b404cf38ddd163
Date: Thu, 17 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789659033
