Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EFDAD4C
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718068703; cv=none; b=M6W8akJb4AKE0+L2SpPLqL6c18rxrxskNvEeCe7z5DmqVlHzVL6iVCEzqt4ugfb0li4wVh9GImQGQY3TrNy5m8T9tNq64wTBtCZfTU3mwV92neU1cQ59RlDOp7mrYbzk04qWsxePXhdQv1WG+6SITRKkFLsOvPtJIIe2pbAMqRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718068703; c=relaxed/simple;
	bh=jaNLo0/WSn+K3p7W1k8OR+pJY87QelyarPozsPmdMpM=;
	h=To:Subject:From:Message-Id:Date; b=HTQ2/Bw2Selwe+B8widNIn9DHunIG9SUdTlcYgTodP2Tuga4PKydnPydx2T7XCtDg8KZgn50ohadQaSA+NxQPnIRgOQFvYM9F81fkYmzRU8Zjfa7wkb7QLT4fTkVPg2tYl8U/ygRQgIXIG06N4UJp05be5+2Yeh0oA+gd6ypByU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOSFYfjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOSFYfjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F2EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718068702;
	bh=jaNLo0/WSn+K3p7W1k8OR+pJY87QelyarPozsPmdMpM=;
	h=To:Subject:From:Date:From;
	b=MOSFYfjTls0AdnGV9MuWEY7tpBGuoTu6Z2QgUCpRHiNsVu0tbfX9phel16JEQX68u
	 HR45gI7ARiet2E3SWxIpp6owCSSWr/mqDxW50JdED7atmg0JQM+F+aEkjcTRaGxk+B
	 /pk2kOVEdsYj9cNXs7dI1oqIsCxIoE0xE+7E6uZzdZY4gALJ4mgzsCUxFGFlGMu/4l
	 xmUd0exQ+WvwTy6z2HsKGJbM7WKEhZI/xeTzb7CMLkEB5qDYoN5zREOSghBmAkt/PN
	 YWyqOgPurBu2cGLtQ/GvkiEVKEQ/pvq3AdSow72QHbz7a/BguxSqpw1lpZizKAWdM5
	 gg/jkML956yxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3C7C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806870276.11849.8129669480180346576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3d251e632fa66afb159746f3aa95504fb9784903bb861b7469416aa7b6dccd
Date: Tue, 11 Jun 2024 01:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718068702
