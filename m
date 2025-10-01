Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419F1199E89
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759280994; cv=none; b=bmZDqNkI3oT9+qL++8pyuz46Fg4nCraXQox9teOdqgqU/gVDJ6+7OinfZuX77bZHSsZqKLhxgAAlnW0TVOD0SeLHXrakk5buhH7IrFi2vhQJ+jody8qXlBZEDyADt3HT0t3d4/qdby/Nb1Vd7LzLejHZ9soIrXByDa6o3suef48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759280994; c=relaxed/simple;
	bh=876h0B7BJBTuM3ZSHYWMvnUhzyN+WdvekCQZ7lnepCQ=;
	h=To:Subject:From:Message-Id:Date; b=e6b/M8o1JXk4wLqO8DEClbXbL8xCdBqYZabjbVwEpkGQwVmqBmuRe5dMaWaoobYZqFyr3ujz69KqFwX4ow2LyzxWuF7tapa/rq2AxN4BlXy71lPufKOlrJZj+Tzb5U0xMLaUKByXF11W+dQkHxuVWjiv/BBeNbSp92kWhbE24pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSjCCmJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSjCCmJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EDBC113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759280993;
	bh=876h0B7BJBTuM3ZSHYWMvnUhzyN+WdvekCQZ7lnepCQ=;
	h=To:Subject:From:Date:From;
	b=DSjCCmJO2924GwiP32U4DyP8IGa6eewzMgiDcTL/ANoo7mwFEmqFBpeEuKsRW+Q/3
	 /4yHHvVBxgOg0BxP9z0ft5NGshWWdVcqpdl3HL6H4FMs8qAGFr4KnNuWzP+q0KLsa/
	 pWKRgp2s9RPl7oU+lwZvNSvEBH17pTZLiaXHQ4W+2ASesY6QTbSHMO0d1ML87fQkBX
	 vys/HDkSletgvUAUS+lUsxNq43e5eFaIdMESUbZwJEwFhjiPpe81JdtWz7FIPPgQps
	 1CaYi2ZbcUvOHTIfbbGjHv2DLySahaftAPMlfLVzW4yDDdJuGclt5b+ieEssKJjHve
	 08W7v9iRMDS3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94541CAC5B8
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928099359.25663.15552299086736279940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d709ec3d55d772e4d235167a92e2d2047098296b06cdece1bfe45c11f4438d
Date: Wed, 01 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759280993
