Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129C3500948
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768073634; cv=none; b=fFp4Cc0j2YIKGA2uPmziCl9r7s4YqEiVOdgAveg/tyFk1G6ory1rb4MiEWvogvJVTlnjlQW4VXLtO/lmeTdDnfiJS/sARixaTYEbygPO2xQBjS7lpd2Z2VS6Dk2OAPNByVL9PHMk0+EZQX9PmbXMncsfzrcF/LdMcNBG8Z0DdGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768073634; c=relaxed/simple;
	bh=PcVhIVhT4/zlU84gpksjsI3boZ09sCQMA2zoNPeK9dQ=;
	h=To:Subject:From:Message-Id:Date; b=Fhl97ChV4C9IObhGUHp+MZay47xs650I03gUumJTcahtNFovCaCTGcTyIZCEPS6witgB9bcHEjcLl/SbdYtOjujOwiYqk35MzZ/zEH5xkkdnPDZ2dQdh6rMHULUPy+Xgx3SR0RHXXE1obp13yWN7jt+NiS4ZbMxNhki9gTV7gHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0S+g++h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0S+g++h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A40CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768073633;
	bh=PcVhIVhT4/zlU84gpksjsI3boZ09sCQMA2zoNPeK9dQ=;
	h=To:Subject:From:Date:From;
	b=j0S+g++h55MAJVIOQh07BDKErmlJnO8XssBX+dzWO4lDn/jIrYJEX8xxIeFOByk9u
	 3pu5kyAoJ6mkFi4Al8nWstlgQWwkD98slnRuXgw64BvlKklFV39HUABZUwpmiHElir
	 0FM1kC+BfEdm611FSZjcEkdu646ChNJPEIKgDy4xy8f7qTci/fXH4EU7YUyakXSByb
	 ao6FkraWvibRTgRcmv53y3Ppd00NGEdMZjzgjefaXijSPhOyI5Sbdxo0YfBVm3FWIn
	 KXuZ1xb+/oUb+ZJHhWlK9f91y7mdGllQxPg3sKaG3RFcjBPKGRBUF9BBYqVpQfz0mu
	 N2T/831f5mRtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB57D277E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807363357.28130.17194234871219307213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044f1dd6e13416db395a58c35a9128067d71ac6c41c73824f6093c9160e64061
Date: Sat, 10 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768073633
