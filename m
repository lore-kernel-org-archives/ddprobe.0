Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F9F14E2C8
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 17:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712944763; cv=none; b=oSVBIAQcQXWwJRUsTWZrkjMEXzymiWpLVLJwUQp0bbrhpLb4rp0K8G567KjITkzaA5CsuxtT6ij+1vOIKsE/qwOAYmaAsgkqIj3xMIBHzGSvDxuWlc03opvpY5qJM/RGtTaUCB3FaqZDSk2Cc07y3pFR0vhKrW7kCBU6Qr99/VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712944763; c=relaxed/simple;
	bh=pdBtH/z2/1MNcIHWrZKiVjReXI78j6BFIh/OL6JGgwo=;
	h=To:Subject:From:Message-Id:Date; b=ksBXUnwF+8JIqbsPdlB0QGBkdg1ZoocH8wK95v7EPHtK6lktucdLIAuHlVPu16TGI9BIQNo2arOM5hoZS6pK+GqcAVxfCaYIcI/I3/9jwCc2GC3tOSQeyLHbq8C8+2lkpL8XYXkJlUOQhtrIeMdCzx95/9UrdMTx1nddBk7ZuYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3Bk4QJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3Bk4QJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE7DC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712944762;
	bh=pdBtH/z2/1MNcIHWrZKiVjReXI78j6BFIh/OL6JGgwo=;
	h=To:Subject:From:Date:From;
	b=G3Bk4QJ29PaFLijnU38lKrRChnvJ9LLfWXqCdILOH90nGVMvsfXhR600SSTCA6z48
	 eZOcaX0Mbt7Ao8539krYuJWwexRopszp3CAMA8AvYbodt312/ytjau385QdU+aF/9+
	 SmLZg7yKQ4iEYe4aEijZzgnIR65UlfVa2IvX46ODoJoNBCaqHa28CsfOcMtq/goyZy
	 EWTUPRdzYlym0byI6flcxOqsIayjkKPn5Rasd2BsdlACqWrcbmCWTleCgPRFIKrZ7o
	 gVclSOrHQDrZNVBYc4po0QVO/RCN2LJHxvem2yIBO4Ae6th3I55bsGx5pQA6VlmcC/
	 ChBmzJFKSAH0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6AEC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 17:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294476277.30100.14662218717285742191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb7a1a3d7cf301cff2df2853490b34faaf36ede3631cba54e80205e8f9786ee
Date: Fri, 12 Apr 2024 17:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712944762
