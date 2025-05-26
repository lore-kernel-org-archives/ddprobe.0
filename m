Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459904C97
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748279995; cv=none; b=VGtEYaGe1CZZkMeXsRyeubs2CWOkCh9SSH7OSHaICkSNcP3cxNG2ELtXtZX7NcnYRTtEmkEVUUbJPY+3jK8B82Ed04TS4FRJ9P2IjpALHKWHVz4NV/pw2jajFSQ5Xpx9WDgIU4BU0BT6mqSLWRs72xa1LWjnrF1X+yhvtUCXO5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748279995; c=relaxed/simple;
	bh=4/kYOPKVSgOdrd58yKfWe55BRHKNM1o1WQGBGh+xeII=;
	h=To:Subject:From:Message-Id:Date; b=qTtaiIxdUK/oL5x7pBNTMT6eBdaxaYpXD2Q/AfX0Iabzjddxz9nu2kCYtCfAXjH36RGKXkgacddXdMCnerV9HZ095qj23wy3doYQI4ZUs6+t1cMAqJfdEzwb+1MIELqR226lnMxSZqivY2r72M7zNyK5vTiSfVIMBAspu+Dj2lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJatkH5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJatkH5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09ABC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748279993;
	bh=4/kYOPKVSgOdrd58yKfWe55BRHKNM1o1WQGBGh+xeII=;
	h=To:Subject:From:Date:From;
	b=aJatkH5szijfmdij2es6Ua4QOXnUH2uEtmYGPedb2nY4am/o4qnOHCDHG5aKFQUtn
	 OuZRUyWyyCZyOrIuXugl9026372NXdrlOyClIJV5YKh2tiAI/oNIzyqEynsYldRxog
	 h/jQrOBf9oqzKAPru9P794ZYjq4mhpYM+kquzmJ5ufGkrVKC/OfCtXmmkBTP2qsHfJ
	 IURUqbmIOc4niCkC3Jp3XI7uiuO6SzBlXEeunzMsbohHindYB2EGx1TyUwMLsV2q/X
	 K86fdWrRPG4219mFoMgwX/5QR1JgVQdbeEr2DfLDS62QYrtxUIHwGWqVTeiAIqi2Gp
	 dmWYkkIdTRfDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F1C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827999357.25796.9166031821454425662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cca6f1207fc51872a2edb6fb26437a1be1ae1257632f0c517913644813e6e22
Date: Mon, 26 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748279993
