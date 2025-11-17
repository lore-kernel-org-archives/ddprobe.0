Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14E91946DF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763423514; cv=none; b=Ajrmh1YSnzILhEA+wHdSJHAV6fBDFl8jQP63pP9HnznNACTqzSTSQ3sSd0NmTcwjIPTF3zwG6aOmVIY4tJ/UxXBCTyijJCysEslP2X6rm8t68eBSRbyeikanI8/tFiuaZ6h6yojP4CKmMw3C4WAT/Vm3PtHdxc79I3kq5Zi7POo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763423514; c=relaxed/simple;
	bh=NLrydMo5GSzJyOZ8byzcPBnecaXZfjfrcjvqO6RqIhU=;
	h=To:Subject:From:Message-Id:Date; b=cBEIr+4rVDP4Y47BCJ/kxheczO/sWm0z7P/ruj/fY1xEnih41C/GWS8oGJm2mTm2D9Vu0Nw0SvlsnbPYoBYz/kg3QiHMOgJQV620v4FgTWtlM8MiFPSlZkVdJNaE9A+pd+o0Gf0kTO75q8MB31zV3KeiSrmu2QJTYFHfWsyKZF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOKvF+J2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOKvF+J2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D9D3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763423514;
	bh=NLrydMo5GSzJyOZ8byzcPBnecaXZfjfrcjvqO6RqIhU=;
	h=To:Subject:From:Date:From;
	b=XOKvF+J2A1LH9GH9xVlCZG5c1bX1sKOAMTyWIFpS72VPMFcg3GV0XfAUGIrAOaIps
	 qt1XwhivkQJL44RTaYL4cwDNUQt8y+RJX1jgT2AR9zwiCfhaEXPGzyQDYxKYlqmNG0
	 C/ObZxUP7SFCMz44TOuswjzk4OrhJ7CF3/n+moMZnnGHTQb/u8fchzr2x2DD4zFkvp
	 5S93jASpaL7GA2XGm0VaeeThfdrFNN/2N/bsEXAIdehA3Q/NB/l8uSbduHizICwTHI
	 YKES9VFhzZTuGj3pnR+KEh1Sk0g9Un+NopM1OUtxlfatNMFmndOLNNcZj5tnOq6Aib
	 osMmmoWk+BCLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94701CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342351358.8871.15374432026382278755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff41395f0fc80e2572ecd263fadbb0bf88351a1373fedc41c809735ef3ce4f5
Date: Mon, 17 Nov 2025 23:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763423513
