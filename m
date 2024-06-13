Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659A313774C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718261904; cv=none; b=CKXbftxak6KVzn8w+HR59q0iBw2eKE60c0ByXdgOTIRSP3mrUx0+otiQxsCV10boMesUca5IwI1grXjbBNPBMem08/jvblDIC6mW30xWkncEHgUegmTUUFiYDx3DBc8YwMco+XR4XQdBTYa8gp9r12EkkEldXwyB21929qRkC10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718261904; c=relaxed/simple;
	bh=z0PVZqo83dN3vAmpBMQnRP0pxWHiyWNbudVgQz8TBgY=;
	h=To:Subject:From:Message-Id:Date; b=ovYbjLhIAP+6nyztJTCDvCsfigQE764dN0VABzFZsZOojwfa5vjlx2K/smoCCyfCwM38dbgs1mjn7wyYEKulhQD18fUNdhz7sa+gU8sFgxKmuo3+yV2tDtiN/TFzFIhmEJXLc1mZBXfEo/qSedatrUFXdWU8KehLi9MCcLTIxTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9s6BmDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9s6BmDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1AEC4AF1C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718261903;
	bh=z0PVZqo83dN3vAmpBMQnRP0pxWHiyWNbudVgQz8TBgY=;
	h=To:Subject:From:Date:From;
	b=Y9s6BmDt/urud/GHfnsgBsAo4NTv9c4n5JAszYzpOD1WmMG2rKfC+NSHYT2+GuS/F
	 pfACEPNrPsdM7hyPZ28hyEa8fsFiwWhtA9nu969sULrKAqtg2l7V8Pk3+n4MbO25XA
	 wVupKgYlVRnmiAxkZeAtU4bTmHTxvsDgIQskuYz+2PpfxQ51SijtWMF/Fqq76zcV4B
	 x/4GkucMuZX5fysQv3KqNsZAMngxI+CbkQX3cf8AmEOszHqPWVkMxaILZLg2QW+kkl
	 dbjdwTGxSn0kajTfQ7n/dKQRXTTlVXwvcfyMbPtzcBL1KnVp+kbwkMAPvhN3L9jh2x
	 kKo4vmyqkSy9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81FEC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 06:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826190280.25223.12035654651491994185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6957f85cd3b1d865b7eee7b2a461346abf4d299b4257c96bd3798928997d0684
Date: Thu, 13 Jun 2024 06:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718261902
