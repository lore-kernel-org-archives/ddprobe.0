Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A020C01E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736508354; cv=none; b=ggz1YTwy53ss9YCRtOi2ZrmFCm6JJvzM0vuOHky/mJxlyl9Rj4hIMJ9gUFABSQhk5bb9uqGqecgMpytWcuqe6z3sNKPxIkc0YOQBwHYAqMWI3A4Nj0wdBfD0OS2GHX2CtgBeAoxDOAnGh0hcI6fVYdd6sOTJVLGI7Eq01ur3ghc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736508354; c=relaxed/simple;
	bh=OsknFSY5I2xr8/RDDWoGmd3xJpdLP6N5PS8Zi33skJc=;
	h=To:Subject:From:Message-Id:Date; b=bEbED/CtccMBo1rYeMiUOLQRHQkyeyALjf3YdUqc8x/AJ+b5OkzkwRpc199SdcdDuBj/jfb9JAgzwDUHeG7YjXvZq6/v98DcN3u16zoA1gRxZoorc2egEzk9AcX8r0N/4kioZqs5aeeCaBGzF2e1B9OYnH0ZAPDWa5W98w6iLtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAfJsg9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAfJsg9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DC3C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736508353;
	bh=OsknFSY5I2xr8/RDDWoGmd3xJpdLP6N5PS8Zi33skJc=;
	h=To:Subject:From:Date:From;
	b=WAfJsg9mGMuouQC6XZ10vKpxbGza45vPkc3ES0xuSe1m0WUmuQxjclJDefcxypMgn
	 dCmnfvPgbiUid0K4cfH/FXV9NS4neSs9RAuABNmORs4Odt0NybnklwWn18B/OVlcAa
	 pedxuXeENsNV8P89pxVsF7e+trGLhMI+Rz9jkTOJfYUNSTvuBdbI20pu1KUDxwQwWC
	 ij4GQx1NxOF0CO4jCSJ/fAiqqg3WBkYUZNZEswa74HeM78P6og2JMTei+O2FLuH8Lw
	 o7QyIJnDK+ZUm3rjO8UNJfIWBxM1hV3rZM0WL0PJOnRrcbptdDbMOusZeodeZ8sR4p
	 meNNE00ifGuLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E1E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650835360.30618.17536837020818968830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ea3526107d08349fc7143bb1353c4af376524621e1ec144c2ef8a78e684ea3
Date: Fri, 10 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736508353
