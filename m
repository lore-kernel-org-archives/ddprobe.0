Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5047818DF6D
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743344994; cv=none; b=teeSGCAQeSS2pxiUNXM2FhWv4WJlP7PTys9GPoz0JyJSrxPOH8OU23V9xuVPTdDaApRnM8HDDTDzNor7Pbcv2TUQlpYXaeE3VZ/DwTIMJJoPfKDodoAW2iOzDUcQeLeAPEKKLkNDv2jVxo2eqJeohWOlUKSQNiOlOZKgSb+ehtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743344994; c=relaxed/simple;
	bh=cpwu57+qxQ07ChLhKFEBU5feRmssY5VlMHnxiXHFuFs=;
	h=To:Subject:From:Message-Id:Date; b=k3sCpCwmwsTKdwvgBu1Uj5SwtEALA55C0vgJZv+N3P6rGrlcJG1LoS23DNe+hL9eLu7fD0PNgBn4zF61saDWFlg+lbVW3f6UmbuumXXqh2IeVDzVcY9NIAElV6R53RLqvrqnkShNX1d7n02b8F0iUUT50JrOazOH6/ymnztdspI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9DRLojk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9DRLojk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B765FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743344993;
	bh=cpwu57+qxQ07ChLhKFEBU5feRmssY5VlMHnxiXHFuFs=;
	h=To:Subject:From:Date:From;
	b=c9DRLojkWHCaDrlRj6grRc8MfUUp8Y9D4x/o6FGhmSDJMaoERY26OnpZjyi9Tu/5F
	 CSzFDrzWG1QfUbHgc7ZV3QNBvWGGfehNHucr74mdqHI0x+8go0XjiWM8tqHVj655QR
	 GoviFqTT5cH/T6Bm2yijs7VPBJXP5YvwwiQJFNl5FaIO4bIJ3nD4mcBorEaFGuHaii
	 QWeR1F9vnIMYRT3N2c6EXUfNxYyiVT5dJI9EOUNm0MJJzKn2FsfXXRL2kY99HDfvRG
	 zV7obp8+N83sOPaFpDba9Qv8wWsmLy5SJs3zR+8TSoeX/kJZX/mQuOlPyTOa9/D6gF
	 qHFLo0IdfLpxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF0C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334499360.25389.14912641357687606601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e562c11f4d06fb9f673b8f0c4f2adf1120f2fb12904a2dce8005a84f1538ba
Date: Sun, 30 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743344993
