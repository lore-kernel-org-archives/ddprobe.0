Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291EA2E0B5B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765539174; cv=none; b=VTeFoSjOU0sHX3vjvZAIux2zqBI6MljLVeHDu2wvQ6mtpoFoZ3xsYdk6RWevE1he57aRUw2LByPRYwdX5CEQjI4VQ1PDwt61Mwm97Iswa9tPCX88sF6ocrrrGdUdMLIb8EMcVOAzs1BbIXOq+gGAPzsaCYW76HnIm/K+N8JKOHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765539174; c=relaxed/simple;
	bh=5u3cEhzfqr1r5EW4PjwlK7jwunX45LxN04amCQjNqWU=;
	h=To:Subject:From:Message-Id:Date; b=VsDkYLzGgAJ3v2ouyT0dfl/q1BnzlK+XS2tiCNvuQBKes/g0Cf6J7aY5Wh9kVxGHm1KUETnsgqicHH2BJuD1Th0KLiHca3lIKgyifbJRhq1U6+SYm3PnUnmulH6+WKXj0Z/aoYheadcFOfy7DvuduEkoYvJDlUxDxTMv1J3R8NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZDZ6b4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZDZ6b4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFED6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765539173;
	bh=5u3cEhzfqr1r5EW4PjwlK7jwunX45LxN04amCQjNqWU=;
	h=To:Subject:From:Date:From;
	b=PZDZ6b4xpFRmO/sJShJRYERfHDCeL71NGh/ist3i0alI1gX5V7+HZ/Ezi08PdDulJ
	 K8rBRZiI1/pRvUPyijLbha9dzpKpqGheM5gFAKBsIeCPI/oeLJQVxiJ21HLZOJofHp
	 FfLDLFg6V9+OB4iVeOTB6h52wnO/yonqAtYA4N8cyDn4RLNvHEAje78l0+689LYrAo
	 ma5aNUchiwbGnSD29I22J3FrEZh/C4dtLuEwEg4f1ZofdeUcHrgcEIBAzh3ZtpeGFN
	 WEvwNpfabgI7mBVdodHP698Xyl172NBsRj/o/O1AkPi/gHKvvILFK1NijyDLjt+b3s
	 o9J/Jtuusd5Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1706D49200
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553917362.1728.4550082187703758386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81efb279cee74cd3f4cb88e2655602deed2b51c3be8fd5de2f8cc642b9b30629
Date: Fri, 12 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765539173
