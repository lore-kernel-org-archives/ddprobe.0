Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE2B2DE216
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754918993; cv=none; b=ecayQrK+TMmf6R6uYuRP8bXCF2OmXHiQ6y8KxQ+g7D2eVdEXXOBDFTQqO4y4PnuS0OLyvUloq2lIUtDdmVFtZF3NuoN81LezaAZXNiiz5PDlngOXGwJ8QeKARTOpIFeoRv67XxkWiRS7pbEIEz4mHXDVi64KHfoNLryJZfqqF88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754918993; c=relaxed/simple;
	bh=11dYdg5AOc5GMaxy7QbhPIIOXYQzgLRmUCG+3UmifRc=;
	h=To:Subject:From:Message-Id:Date; b=qvkL1tx0mvt9ez1UChjcDwkVhopkcSOVvpdCLLjdmLZyiAQ0Vuij4IwprWDKFGtELoB9X5COA+kydSbeI3yEuAZvCg0biAkyhSeXWsyaNsKtKz29zlSBZj0iZdHM8hFb3NYB2/sXE0qZNHsitvHMxSFrcM+UhwY7lTVxAhIdAkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVU/h0R9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVU/h0R9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC20AC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754918993;
	bh=11dYdg5AOc5GMaxy7QbhPIIOXYQzgLRmUCG+3UmifRc=;
	h=To:Subject:From:Date:From;
	b=aVU/h0R9agylqQoSKV4pnkRJT4V5B6GvffphrBu/LfpsA13UNk49fjuANHrv9Onnw
	 J5qWyTcGp4Fnwycp6CA5DCL+01fpmMLHkt6WEYeld+ziSufV247v1rw7EAvJGys9ZM
	 hpXWNIssmTNQJir8wZFXvQ5SOw3+YeH+2GFlrO+f6eQnq6qkm1HsSp28GsHjrCmELu
	 o1vQBBzgphswTtd/tB42Blyr+oFh8pufifFn8xcre1fuPpysBQEaiBSofX3GnqizK2
	 J/CZOydWnUfL81kCAZmysWn91fEb+j+95wABx5N5qe7+Ys6EFyZfWxOT5patZp9VQ5
	 d2XGmmWkqWHAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4F0C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491899363.1879.16689633550034462821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b07249b6b8602e51e09d2df02a8b0b59eb7095f25467b95d72e47fb1c81fdf1
Date: Mon, 11 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754918993
