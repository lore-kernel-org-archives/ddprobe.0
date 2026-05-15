Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169BD3EE1C5
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778881234; cv=none; b=q5lNx1WDMQSDtsQHh+BxLfK1Zya/2tvU7hu+OcltOme2Da0kN22tYshaREs8/dRx63QgrvwuWTHa9SxYckE+T1t+4uIHPmm0qhZNaodp94f0uGv9FQqFPZT8HrYVC8ATI9OJBNHeq9fioJm2ZRIZqZ9TIxn/U3lmAAjqsOL1yuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778881234; c=relaxed/simple;
	bh=fISw0U7PtIsGkL5KGAS+p80YlHkam6bsAn3NHE7gdGc=;
	h=To:Subject:From:Message-Id:Date; b=o3rhKD8UOX/42OljXqMIhkSE8YLHrswGmZxiRdI6zErZOm3Y3Iyjfq2RchSS63LX7rsho0vP/BZe69SddvbgaDPgIBxZV70Phl6c5VoAai/GpnkL2nJTQ58DD4neHTu+8RvyDMT/bXF0UDSsjapeSAaovp2UsEgn39adGm9+NQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJXWR5J6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJXWR5J6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCDEC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778881233;
	bh=fISw0U7PtIsGkL5KGAS+p80YlHkam6bsAn3NHE7gdGc=;
	h=To:Subject:From:Date:From;
	b=OJXWR5J6YGIBGzpRWlUVZFPvqZgiY+zRR4+LYquNUWMJrrwuytTPxb11D7tQTgy1a
	 psjxcdsq0Wij1bBWfTWU+0YckvaZ4XOTPDczwpK8SEro9OsuoJi4Cdo5hviW8FKgo5
	 tZ7KurfbIe0ZGSE/eYWckZYemfsmp9+631GoXp3PpDtWnkCVtUi8G8vi0fSCSfMTw8
	 lb9YIHpcfxYjAtoldebl6EMPJsnsMSnBhA12/OKQ1edFOGf9cm6uMMl8ZX4n2cdm2K
	 j9qOJZ8ViOKIbT81IQxHwGqAjgTh9Dfcixk76I28SENEr8KtHS3vzGoVPIXkAF/BsC
	 unHZ5bc3C2O9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8FBCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888123369.19082.7721352952754610688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd93b715b4ff02b83659844a1213142e5225b792db2bb2af3966b00c647bef18
Date: Fri, 15 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778881233
