Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA62314D1F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782260194; cv=none; b=oAwtfhWlL+enwP+2r0aZm7vnqfRh3/DU81Jc2Vgt8D9buk2DknnGc/cEXv/dTqbVbfu5AIBluRlY6bP+X3bNtQTCeKcGTaDCxP8dyuncw3u2HLfGREqSqVcQwT2I9OPX7J08+Eftvt0tYVs92vxUHNRxP2mODAlMDnJwfd9oo2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782260194; c=relaxed/simple;
	bh=D1Eq2MAFg6rhrwezUsdGDxOd+EkCbh/maF5cdrE2oDo=;
	h=To:Subject:From:Message-Id:Date; b=sw22na+bR+ePQEF2MMbP1/P9wQK2hDeNsfhaAUA4NmCluivN9qoWEx8O5f9fwAhiABxq06xdFBKCJ91Yfz9MTDko83Q4kFUVZVzEBvkwVp5d6jytGELmRmb9gAcuRvj0LTxURVjonr06nBomRwHni+9dHLp7tOR4z46rk8TfECQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Av2IPWZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Av2IPWZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5664C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782260193;
	bh=D1Eq2MAFg6rhrwezUsdGDxOd+EkCbh/maF5cdrE2oDo=;
	h=To:Subject:From:Date:From;
	b=Av2IPWZibnxBfSkRUxVjhk8bMokM3t34766TAwpknn11QqF8+VH91+GdvILf2rJT0
	 CqI1sYo9e1o39YAgrCJ1I76GfbGvAjSvZzIIy+xD+l624yBae9gvnFk0g5KfKMJDLQ
	 wFzNwTvkjxvq/6cZ3gXP7Z9DLHUy2quWEse7F02YuFf1uHSRuP6WiBQFc50iteBz5Q
	 /6ogDdC1f/ymaOCMuuESEV3vx5hHLvG3tZ5LI//Py5VylHnLMd3PPOlsxQrKJYVAZw
	 jQhIKfim1mrGPIFC2zDhzhf/fGwQvAYfl3VDfqOtpzkutQ12BH6CIVvif/6vTtNHRs
	 QLZsjeaf0o92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95DECDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226019368.24833.3453398143149578173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b863136b49c135f06157a5c492d8a3f7a8353ecf9913462ac9819be8d2a384bb
Date: Wed, 24 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782260193
