Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB95F4A02
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774572893; cv=none; b=NLwedOa41QLNgMF++hmu3sktND+IFpYQcZwp59CmctftMA8gJwh1QAx/IkNttVWoRlwASndZmTbCGFRCpUQFi7a/bVobVFGmvr/8qtDYJ5FrRWwKLDyMjSiNX5Oh73FNITAUrHaQ39v3WK0acgWuF3MWQ0OodjLWG17nP4I86OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774572893; c=relaxed/simple;
	bh=gWVpZ1ub7tOP0g5b/sCAvZAob9yqP1he2ldNQG9uztI=;
	h=To:Subject:From:Message-Id:Date; b=I46XCNiQV0ws5a2P6eoTJ3nVMBxxqEkJ88np3BpcxNEAU4a6KtOgFD7/i0GwI9mZsMr8H0QuAlZ+YNjeK1w3H1k0DHd7YdomWz7Cys1LL7/2j7Aqf88uvb2kmBL2E8W1xnoW2t2mJvfUhwfQUahkiymyST137MNYDDVN4/ttxMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WG8Vuu1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WG8Vuu1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0316C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774572893;
	bh=gWVpZ1ub7tOP0g5b/sCAvZAob9yqP1he2ldNQG9uztI=;
	h=To:Subject:From:Date:From;
	b=WG8Vuu1qULHd5OlBSJYT1b9sIgTfxyDubLJXTD1mo6UfpBpmc82qtcgDHkd0D0M9e
	 DPjs2PhodfQUtXiLrSL1ZiNsXtePpZx5W5V/T7JiQhUyuy4rF9lMSKSIpCPdKSUrBR
	 NSWyoLvpOBw+ZX92gTQKjfw5pg/uYs9NQ/N6Ncq+M1B+a5PAiktvqH/GodiH1FjBfE
	 9rYotOK9CjkaX04htzT4pkuRzj+TV+3PdEbqUIHawNOQ8QHHeuBdfcw4vcl5XigQrU
	 wgYkwjkKaOAA/i4USrjoxGF6pfvk3dIQu2wuL3g3nVpjPlESzgDIiDK1QS0eJ8HZE+
	 RKsiQ+azvOzTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DEB10AB838
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457289358.24154.5876618826931465482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c23319ea38c52307c80f5fbb8f918cf3a399bf3c46c1e37f63bed2b1485340
Date: Fri, 27 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774572893
