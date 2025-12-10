Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CBD25C6EE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765403574; cv=none; b=YQzwWIwHbb1BtHOgQCTucznSXWsaxUGgiQZm3V3mI0SwKEaQSKu9fu6MCbkOPMdHW0hrziF4FBda2h7EoAfR3w2z+AhnOESNj5lMQpIcW5vqSqwKlQx9s8cP7L8vEn9GkXeZOT6SFUVgOxX8VsGnotcFuWBks+Yux+itJuIww+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765403574; c=relaxed/simple;
	bh=Johys5Q2sa5JtK4NMXnXoOIMbbjyNyxzLsEAwURa1sA=;
	h=To:Subject:From:Message-Id:Date; b=a4FmTbrrLEmna/2MbNbZp+rCZZq5BphcNe2113GlaeffN1761dxM3kroc398XX0KOWaQufjzsD0AqGnsiIsJIvGPA1LPGdtee+tss4kbqPFCkDm/1crYi013u8qKmmaA794MxhhZOQcj4TGBs++PJEiqz6Jg1H0Oc9ltOhdR7CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xl/4FDSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl/4FDSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA945C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765403573;
	bh=Johys5Q2sa5JtK4NMXnXoOIMbbjyNyxzLsEAwURa1sA=;
	h=To:Subject:From:Date:From;
	b=Xl/4FDSB9mxLJuYKnZjkSkkc2su9AKmP2obVUa/cBpn6FAgFJxIrgENIWIFuI0u7h
	 agaXmwc8wipjpx1jroFI+uRYfj5BTv2ZW5INrSDpNX9J5nEW90tcWBJi54HlhLHCi/
	 9Z8BlwCe+Be6qdWLDxzKY8wZOni5tFlWb6nVZ3GM81AARoKhAL/4ewZ5ioPA1SrkNv
	 Y6iPPphq1qCEXoPjepspwOuwIduCCaGco0el6/hOt26BEYW8albBnIa/3XgkDSJz4d
	 EEl5Z5ET2zXEQT8sNPX1sgXwQ9UVJNrJXxV5Hs6gvlvusK6vO5/lz+hTkcr3SutkXv
	 GxJUDmrE94vzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD59D3E77D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540357361.908.5816122021351182901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f36515f35bfe2a250b8578a178248f473684f3e1dd9c83f4f5f10c3caab47c
Date: Wed, 10 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765403573
