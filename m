Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F0276025
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775387734; cv=none; b=d7kT/dRQYvGWLQzYaZ/Z293eOwOBpfYbW5yOhF/nY2SKKxS37CcL+JmBXe1YBwbvZfAftHZsSOYidsJfQaBlEty9dpfbbBDCidNS/SzCAu9r479k85PKeJHvw3P73FaKt5GMcYsqGF2Jp4/ZIAMSQERxL0T7y5dKic7jg5LxTO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775387734; c=relaxed/simple;
	bh=ueAiGQN631IElKc/XdhTQQubMuaja2fnkzH6hkMCSJk=;
	h=To:Subject:From:Message-Id:Date; b=sWkmUa+LRdA/7uoMNSNa8hU6hnKIlfQNsq84+qwRmgSzJ25czHFV1V0IH6+B4im1sSSGaxf0w6TZRBTc7a2eg7sGuSe1IlSN87aluyP8cVtlFoPvHqtdVdlgn2eU+202zcOZwGVqua5Ba61saG4R6ngyqZqzaM3O6BNs4vQYJUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2U2MYMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2U2MYMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F44C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775387733;
	bh=ueAiGQN631IElKc/XdhTQQubMuaja2fnkzH6hkMCSJk=;
	h=To:Subject:From:Date:From;
	b=X2U2MYMJ1CzPuYA0ziPB/0fjw+xq7GE1EgWY2/jX0bGMD4J2AQiuZ1ry7iWSYTxOl
	 N7ccWdCPG73jmkSP3JllUGozl2U5A7VGnzqIMVHx8Zx//oJThedPVTWA2u1anPGU45
	 O/wY0kcwCocQgaCv1n74SgC/6Rw0rw/yf0ZmODBJkxmS6GEIlB1TdhGwOPIugBUT/g
	 9IcXyrDvcudcscNaj4s/xwy0pCHmX21h9s7gfWA8WsVp9mNdaEekfHvJYh8ilIacKR
	 WMes1ZWpj+/x2gbeZn+2vD93A0l1WIWCGqcrDwpoHXKsOLf2IZl3NnCeZ/cStKhxle
	 3ss+0NM6fXKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1978E64013
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538773369.28883.5083379556522694787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08645dae7a7aad5ed635dadd39aaee6dcc8c85e308bd21d16964065dad377d7e
Date: Sun, 05 Apr 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775387733
