Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4771537DA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744770594; cv=none; b=J1R3um1zBg+wQnl9MNS8D6qQsya2sHrQ0lbuaXYNIW1LpeEfeQM4lBcXnzVcAGda7/w0sMnW4W+h87Kzy2l4ABJaZuw6ROBVlg6qokhQI7fsXvb5CMKyWpi664fQsXPZ1dOKGOhoXBi+XofcE/HDQObjuUy6eDDWTpRQ6nOXUP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744770594; c=relaxed/simple;
	bh=Vr6SRFGR9UWUIESvRPw1zFrn4ZbBSJTHHUWGH/AOLoc=;
	h=To:Subject:From:Message-Id:Date; b=nq6Y+nZsxFZ97T3mTeggigJvc4IB0+JskUU9gF2M2OeTQzRvBQniLY+ed//0JAByaxp1ZjNm9h5MaE4fj0ZvlTpWpjFFqMiwmI2YT49SLtjfgoLOY2i+qhUeNpzsqLvvxJO3x9RNOm3KAvqIKq0M20JFvHdzax+lZxDL60VVITM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2YOp+S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2YOp+S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8321C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744770593;
	bh=Vr6SRFGR9UWUIESvRPw1zFrn4ZbBSJTHHUWGH/AOLoc=;
	h=To:Subject:From:Date:From;
	b=d2YOp+S7qVaDSplUV2ySlJJ1JhQsE7ExGJ1A8NCJJldU2rll6ncEQDAuSTjiWAOd7
	 SpWwSWNZ6+WCHzCY/zBCOn9ztzSXQVHFr9Jly5LrKyyS6Hnx7ZmfMib9zxDo+Pei8p
	 JYILdfcoM7bKfY7mESYhsbOEbnESiXxTBRPYdhY4sqP6+7/1gZeNQSqDX2X1FiZoRB
	 Fciozw6PKZaYsEspfdxph9Pmuz56FxAVbSjLtOXl7pPX81brRyZvmbiXPUksCHlZOi
	 xREPNnjq9FjavPsmZER1xsk7IW0KdySoNLWvy9CiYlfDSIJj6lPgg4P6714+holywU
	 Ev2BYNUFDP0Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABF7C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477059362.6510.17875172468405776697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cf3f00ac1fbbd3dbeea9c81248cc7eea595b75756c704ac0cd90eb16e0f799
Date: Wed, 16 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744770593
