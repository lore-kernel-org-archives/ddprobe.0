Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D252550A6
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748497794; cv=none; b=eIMyyjh39ulAE1vuuGvw4isRUuCnWbptE1QIrsDK8jV8oaKj2xvd2G1ttUcP1LfcshBGC8s6vgb68b+uXq2efa2BOauIudrUfpoSXsAmDzCd6ajeOGXKvmfh8HwxVjbTNP8UmMG+XWcd8XAx9yj86YhK5/x/cQU8gNrdgR//ItU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748497794; c=relaxed/simple;
	bh=2RfivQhMoWB8U/0/1XJrzJ3mD5zutQ8ZnYqBuULMda0=;
	h=To:Subject:From:Message-Id:Date; b=FvijicTpLLGa6XP4bUYPJmaHYkATkJgju+4IUIGCMNSBv83+lMAxyJcJ44a3Y/W0eVmCQHs8wQLdfDvH+EhcO4OJL3M6h0u9lM4aCehY6fT3ovzSdzGWhH44p5SCFr6KGwU9fg8WXs80aE6pu6ul68fW0si4PiW1pTvtbJbEli0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/vdlY0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/vdlY0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E854C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748497793;
	bh=2RfivQhMoWB8U/0/1XJrzJ3mD5zutQ8ZnYqBuULMda0=;
	h=To:Subject:From:Date:From;
	b=c/vdlY0eNdSyQm7HeYdNCXBv/WCkRObF/s7qLL/tgG7z9fcPeNKQA+wDF2n/VJiNy
	 Ege5X77vFVvRpNagqCbt3HwkqQ2DPvIaIM+ycJo8TJfoKesg+em/g2LYtNJtKt+Dlu
	 sFOWoepOtkOJ8uRlP2FmCTwu9T1kTULXhepKMROmv9RFnWDCPmwgc0HdAwQE5fnqnY
	 X79li/3nYFv+6QFDqPJSBAUgm88NFnIUUiNnx3DDudz4eXuNtXdK1uH+wEY3cjuLvf
	 yiZ8gJAzxI+gxoP+KpNYUSwD4HhsRJ3yBWKODIeIS4+3bixFxQIIW81gGR0bzQIHf8
	 f1dmtI1M6qYTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42DC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849779357.8554.989217556444408944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f83c226d6398c39fe91dd75004acb37ab7fa5a0d956b9ffaee6d78ba3c722bf
Date: Thu, 29 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748497793
