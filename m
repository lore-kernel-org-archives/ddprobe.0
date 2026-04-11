Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBA9220687
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775936854; cv=none; b=midiT71Fj156j9iBc0ti00aDUQdPLzD1XAh7M8t0peuP6wtTXdG+g2FclwGv+NAXTNrCU+Zc4EHuydMdm7evQbp5XahuQ02Yk2nnXKppmbq3ic8qXuwtfow6GaWJTT0cEnF5e5zVEB6BpgBb0saz+3DgRWv0XwGTpZ88sh7UqZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775936854; c=relaxed/simple;
	bh=ur0wf5QGR/Ftsan7Dc7t+OECEJSYvqNKv5xGNB23ko4=;
	h=To:Subject:From:Message-Id:Date; b=JymcsE0cVfWp7lqUyiI9h0BH2rbHLoFdnYjvWaq+LbabdsV17vvS6opICaeveqBGZoRj4Zqt4GQScCHeMmV47YSttT0s5vAGFi3zQS5gUzPPYWeA7mQFIIf36kxig4frezkMS49HW8G/9wB8PxZZZpM4NHU0pxVtqstf/5oqSNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWS01p5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWS01p5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1967C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775936853;
	bh=ur0wf5QGR/Ftsan7Dc7t+OECEJSYvqNKv5xGNB23ko4=;
	h=To:Subject:From:Date:From;
	b=KWS01p5vt2SzI9M9KScaEfTm5S4M5Z14wIAEZLbXxGPIzudKWKSrTblShQccik4Od
	 +qSsUy/qNENvwoA9/5yRBn2lIr6pZD7EfOrtkJktKaXrj82fKzhBluUuONDQwYIUy2
	 VRvOtxv5isRrawZthlQf68QA7z8iStEk9y1fwgISGdQdLqyjWeqYRsc6gSfJ1LEpRa
	 snIa0v4qKFglY1Z2wl1qe/XATwnIHby7Mw17pt1DvagucIm+/ZSXgp8T/goC+hrt6T
	 Y/K/Rbj8sHNelCIuyZ4R25kSgbMwkSPdC1K/LfZjbH1El45oKMwlDjYreBbyKn2FxN
	 mukTZbo5YifYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18BCF3ED5E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593685369.14441.14121871940117762074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df8ddfd0f4d869eff35d1b1f4d07ff34e3258a8210a7186d7b7d5af6de0bb6c
Date: Sat, 11 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775936853
