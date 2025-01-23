Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4B42101AF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737640554; cv=none; b=TtrMhR63U+aq1Q0LL/CMUBHh4Ist7gHOQzmDLm3/fAp2QIqsFk/L3xafxnVVvdzx50H4Hjk2W4cxSePv//ljTMMO2BsHDJppXdgMXwyWfO/LBiExZRskU/rDv9+LSubUPrpQgTanhkGSqxBQ0tGul52FKthfdhkeGJ0DuTKdOJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737640554; c=relaxed/simple;
	bh=bx5unpqu9sAOgBZVn3jVp9TBhFhCIfvlZcxrVi3T+40=;
	h=To:Subject:From:Message-Id:Date; b=VwIq2JaTuRCsch1izkqCDorTJouwUWd+iqKFR8q8bJ8R7uP6eRybVcXYONYxJhBbDQmMYTzLVMYi8F/87bhlbXutB8PQ8DT9pUVBV26wyNws89sRPtRs/gvPgAxsN644dC/Uh/PWDQrR9jUypc4We8rtM/vHvuWiYr23mI/jmqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqoeKM4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqoeKM4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C836C4CEE1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737640553;
	bh=bx5unpqu9sAOgBZVn3jVp9TBhFhCIfvlZcxrVi3T+40=;
	h=To:Subject:From:Date:From;
	b=lqoeKM4DadX/s8tVOiO9qTyJFWm4RX6G7cei22PJzNCgC/VnPBfY79x6Z3LK4DcfV
	 qW8UqSn+YspEprERbsW+gldTx5v+ggp9XW/ZpQxmNsVpgX20XmU8M4QbmYVHpNNvIp
	 Phm2ClfwmQ9I/mZxcUibvxwIXWy5OyitRzVvpXeWiYI0rj3HuTGBr9s2yK+Nw2cwgj
	 8vCQFGd87ljhFHwtRqJzDjW8jRocrRLHI2Y7f3EEGZE8a6Em+VTpXGJ3OTaQAZ/a5v
	 e0IyisoebtSNAWpaD51lpC/hJIp4BrEB6VG/qwoDez+160Osu+bo+3mlkWvX0sm4JR
	 d55k+K4hLFkTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E77BC0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764055357.24219.1612920516420060165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe536665b0747ced32ee5fc479b441e6c2dda04e857d4b82a17956afff2d538d
Date: Thu, 23 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737640553
