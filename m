Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268582D3A77
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769979234; cv=none; b=iyFlogovQ/5sR39bTiT6ZTOcSBuHp2TBibBAABsfQxRIdbPHHg4sO6I8x25BCXm2ubND7ITJsINTaFF3WIpsO1DLEo9b9VuiLML9Gbt/V5i2V6R+85K9p5smuSvre4BuSaCDlFVID2i1quHifzTslx7TYToqHQzUn3ILggRpcJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769979234; c=relaxed/simple;
	bh=GVVfR6B9SjSHZVLfGPIquLS0j+ySFA92pSbSpzuIEYU=;
	h=To:Subject:From:Message-Id:Date; b=m9uN/IIbbi7lkFtQTU+1HOVLFbJrmhs8rHdisyqIIQ266/Q4BKA3GKUc7clwSp/y9ZXI8Mw6fOBilG1UcmwMvzv7TZikw15HC2PbmzFhKQl7U0j/iy85TK0/Qzv8T98On0GZyLZPTXbn7bVkPNYGMrWR+PUl4BIn8FTpTZ6FZpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrw8MgIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrw8MgIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8125C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769979233;
	bh=GVVfR6B9SjSHZVLfGPIquLS0j+ySFA92pSbSpzuIEYU=;
	h=To:Subject:From:Date:From;
	b=qrw8MgIiJCc/VGIAo+XKRlGl+4Ht8Q4r45fLK3KWiR8ujgS8f8aeq99CypHc6YVeW
	 U/whOVbOWaf1Crz0A5uaRHmh2G12zB11umlL+AnBrFB6NogmeZx4/pRps85TqdTpE+
	 a0ZyeYbxnwKyMDO6qzdFQsZaHZU4BUTAXnyJBenXlA3Z9yRWYnjRZvrPDreHJ9pooP
	 zKMEpz9cUJO/szwjdbSCicIjHbxzw7V5cYANDMpyBc9gphWukaC2KgPX+wZ5wGsLra
	 PfQ/5Qadpf3ynjfEXNnBx/MowsNPkvfLChweobh1Oq1N7m4xLe2wmeza5y5NScw1fU
	 QmdTE2ewE5XsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B8E6526B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997923360.821.18325658484540946064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3919a09712fb5fc3e165667913938d306cea3b49dba4316aa0ea5d9ffed0dc2c
Date: Sun, 01 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769979233
