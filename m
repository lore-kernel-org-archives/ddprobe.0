Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2597519E97A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752524394; cv=none; b=q3/kdyiNzss9hZ59hBUt6+5e+9oCztbYcEdPE/lj6ICKvnIEvU7f9Gr0K7Smfkb3NQhGx8zG/WhWoBlGDNBtcXOZqTThyzhacayQVuKonVHQ18ozAHmIaC1HGo7e7JD6oRMY7mqHOU1I70pNIjE0F6Hs8NjUQqzgniRF2juG4Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752524394; c=relaxed/simple;
	bh=VVfFbbUWhSMsATAnW6RlAHH2lcM5TdYhCj0wdjFDl6w=;
	h=To:Subject:From:Message-Id:Date; b=CKI0/CsxBIvrJm9p00vRUgf+wHzImuY1zVHjR2Ol0r1snQ4qX/W4HLvOGVw2anMscbZz0jDXXhVS9Y1Nbg6Mov3W8W8C3J3/0Vmh1tVlcRFtLiOwMusIdqU99rPWf8jstynpe+iSiOljatTTuk6dJAXEjf7Ig+xl8SznOXwFge0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7IWp2hZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7IWp2hZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C25C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752524393;
	bh=VVfFbbUWhSMsATAnW6RlAHH2lcM5TdYhCj0wdjFDl6w=;
	h=To:Subject:From:Date:From;
	b=t7IWp2hZsR4c6HYsoxQ5VjbFzHYU9sQJgFR8rl4wK8sdHEoU4w7GLzseH13Uop3op
	 7Gd/Zj63IuILeuCOtj7AGNKpPT4OMfa/hrESU3vTAHD+R17st+ReJevEwx/dcB+I06
	 2FGrNr5aK4STnBhiueRTamK2MyU0B+MepeFKrhRY7ZtV5jAS+Zko/+954nhm8SsCar
	 bJr2OTx7bvl/tWoEun8Ozp+0AZXqEBxXSNk1pX5wcLKRH9wkULJSmWAvW/WFnYX+OJ
	 rEpuAlw4eCmn5B1KvQk1AXDbItOKzHldjnEu1WUKDizBG1vFI8PMepE4wGx1w299L3
	 lEHnqxqvo1Xuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E0DC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252439358.7802.18322002594488711161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64f9f2de59d8c42d9713ac3f821e27134dcf29c03da7e1e1fc2745cfd374de3
Date: Mon, 14 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752524393
