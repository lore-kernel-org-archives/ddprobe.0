Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2716381B1A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785425435; cv=none; b=HoFoTx07VY1EbbbnO+fWKyzMMw9/6fRQORrHlnbxRFfgJv4xhpQnk3Vc0oK75ECpM2ypG9urqA98BKIz17Pl4euTqCuusJ/QBZp77+9oJfGT19jpPMLQFfOHVVsPADwcs2Zq3aX0Jj98wcuIy1Um80uUVwJhDoociIo7r/DlXeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785425435; c=relaxed/simple;
	bh=+KpdFnzHNVrjfWAlafzhsGvfMdS14Rhk5cKnhKFL0mQ=;
	h=To:Subject:From:Message-Id:Date; b=i6m+LwAaOIVCnq5v174TZwqCI8FBBlaEV9czl238M3luva1eOpYSUann0TNdyhw4csCi1tVGoYStsS9HKFruT7Kzyf9i+lPE31PzG4WiX4H4m0Tzbno22siBec9coPid+TBpOoaFSl5h7QD2CFIXdHhWmqd89deYY7sVq/oP+lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6yrbhHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6yrbhHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E509CC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785425433;
	bh=+KpdFnzHNVrjfWAlafzhsGvfMdS14Rhk5cKnhKFL0mQ=;
	h=To:Subject:From:Date:From;
	b=Y6yrbhHDusMoaAPXZdzctGO1F4T4qfAOPaknPN9Tpsw4GsvyRPS142nKAdjqqnsKU
	 Gju48wVvqe2EbwIFrwjzFlGXtHSFayGJIzkEYlm0PH5tAhWyMU0pJQgkQJHabQfGjZ
	 06+WbV7AWUJfgTS1JbPP17hfO3sRlZb+X+IFgbnyOGvBo5bamnGz1jYEtxVXyOomU5
	 Fsidx84qCvaOXusgV9gva4zuMd8Y3w0pzHeSmMoB4MlEEEQKiXcrXymxZu81ePN8Ki
	 yQs4j/SJB8TipohmRrlSej8gSUn0GZuUX3EI/W7Ts3QVqBwTaGoaUKwUFG/+68mMcj
	 NPNSd9KnrfR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA377C55164
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542543373.15206.17058835349665031680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e90d1d4ecde3025840f3de50e7dfa4700484854434af27b21dbad07476b719
Date: Thu, 30 Jul 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785425433
