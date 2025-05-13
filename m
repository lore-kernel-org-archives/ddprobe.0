Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB8D1E4110
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747171795; cv=none; b=dSTDXDzHF3BvTu02unaMd/QOAKrcsbwFArBuEZuaVjyPAaOObaYbNIDHahqWB9nKjDjBNaa/3V9zteaqPAx2ztPXnIBsaqExkF7L0UtrgbBS7vGyObZZP9RTgSrVPu+rGvjU2Q0KLJerVYzfO/s55dNYTWip6Xcsgjv7Ey5M2gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747171795; c=relaxed/simple;
	bh=MskESNZFQm4FT9BCdJhoo0w4I6P+NLxpE9GQ+ieC7Cg=;
	h=To:Subject:From:Message-Id:Date; b=oerGMwf0QH6lsUVfwW/NLEtyxDSTWx9Wqkk1nw6nKTM96EiSotEI9TCbrUZLw7D8T2ON1tCuaNq5OQMPcuHmVB+KMaGqYlBqEOBy5sSBMxkLL+KihTSCFeBy3IYDC2aKU0VsuGDEpHkClo7wJYN4Xx2oSCa8hTAvYENODOZ1IYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhxTV6rN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhxTV6rN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B4FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747171793;
	bh=MskESNZFQm4FT9BCdJhoo0w4I6P+NLxpE9GQ+ieC7Cg=;
	h=To:Subject:From:Date:From;
	b=hhxTV6rNcO2wR2+0ZrAgBR1w0Cv4sZG508i052Z72/ri0kMvGari/EuS1c1aY3vF3
	 O2uik2BcfuaZlW4lIxFxzf7C6CR7/FbRm3Xrz5ZfCWCNOB5LkLWTMpg9RPLSyAHdf0
	 UKZgUGOMSiF2k64pQz6zJgSFseQR0Fu3+8cdcpT+JPm+34gXugJN3DpG6DQBf2AZUm
	 8XcLTzsl3f3Bxi6s7gYDkNoeoovO12d/ENxM9ATL2tPH0DP39NXhSy4LXN4HO2N/pX
	 n1OM7W0t3zNqSS+mHg5swZ6N6BEZKm2lIVxoXMQQloTrcrgK2w2AVlpw5oeEnyc4Po
	 1bBoBoqnaaxUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E1C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717179357.16844.9857892315976738706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95a52b212aa1b1370bd461a853d675eb21e7ca926b2183fc018820e3d65a7f1
Date: Tue, 13 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747171793
