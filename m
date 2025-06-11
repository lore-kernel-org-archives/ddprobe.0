Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E387DA82
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749620395; cv=none; b=vEAk3tyXlbRwnbLokhrqGNHccAo737DZtrLaAK1ChEpdKq0qETwhBY3gycgioRJSgfjFyFXn14WtRKMcz3PJLd69t+5aHv9yZyuoNcJjKMmok40UCmkXGO34r6OL4+Zf2MtzrzWONY3NJ9FePzLpHGO4qx4OmIMaVmvDC1OnyZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749620395; c=relaxed/simple;
	bh=IW5/Ml70/aKkDFJymRJPiy+zq2ar3C8UVUPZDs2QkFU=;
	h=To:Subject:From:Message-Id:Date; b=CwgHYYaqJDyn40s4rvPYD+tyjRAqoG/YTnaVHx8+1gNytIOlzwL4vJsFbHyhXM3C1ZbycvZiQgnIIbJYSwan7reA2eimfADELeBLKbIQg6tqlAdan7mEDQXsa+4oe1r4Q8Gkf4mG0nzGTQYRnOXigo6RRi3Be6D6tNTs8w8b8qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpCIUtKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpCIUtKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519DC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749620393;
	bh=IW5/Ml70/aKkDFJymRJPiy+zq2ar3C8UVUPZDs2QkFU=;
	h=To:Subject:From:Date:From;
	b=WpCIUtKh3JFX65oBRsuNYN45YD0dRWg6SAL3rkpGhOcGXq2sIxdcOsnZVtLqOhTO0
	 LRRoJ8EexCSNkl2GoLRHggQokoZWeRrxPiWiw0xKFnwdTHYnVd39oaq4At0CCKq3SY
	 1TxqPLaer9wqOB5v8hHzHOmYcYARUX5V6lgvAhI0Po+AQr3lsi50Xcw2RYUA6uq7W+
	 Zavrbxyt0UkWqzQpvv1ENTDI28CpnKoTF8cxTE9hPFBT8OOTG0WgmdDrV/WyJtLu+P
	 FvzFXTLMtQ2NzGk0umJLft8xcs1U7OVBDLbFlmRhaawgQcebp9zj6n4/GziIE0AF0Y
	 paLf/m5imDl6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC7C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962039357.17928.3906710131101659222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51860f777232f44e4bce0caeea842f2ad322bf3a6ebe18f48db90e4ce298af0
Date: Wed, 11 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749620393
