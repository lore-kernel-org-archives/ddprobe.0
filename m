Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7B42E736F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780024954; cv=none; b=hFBcIgiBfoULu6ISdiLLJfb57vd+qA3ncZC+DfWzdnHbIbD5OUSKXTOIRWXuR1S/0zxj36WYLwSdnrl991hQsw9Wt7/dDqZzNcI500jSJTtFGGYBc77XM8l4pS7KJDB2HF/2Ot1htkHO6rDIGM1gpKtDaTxEb0D5zX5wXyzmOso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780024954; c=relaxed/simple;
	bh=L8mZ+maMKsIYcL+VHbf64VYNt7u1Skfhg/Qqe4E908A=;
	h=To:Subject:From:Message-Id:Date; b=HzwUDfdSQ7d5NwRik859u71KLk45PO4ApI6y3JqjBN0GOv5BovG0vmd+q2i+X2PYu+J81f+tJp7LsvVe79QRtLt3w1LVTA3j0l4SYSNFoxE2EHnC7WSoukbRGwJmkYutoNdlsKUpNt9b+DB2afi9+yn10xoDYJDvFQo4v3mtyfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvdGfsMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvdGfsMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25F0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780024953;
	bh=L8mZ+maMKsIYcL+VHbf64VYNt7u1Skfhg/Qqe4E908A=;
	h=To:Subject:From:Date:From;
	b=PvdGfsMNrIzeiYqLzHSh46Oou/Zvuqxzb1syPA8/fTyeUte7HGyFCu7o2tiJ5iDQm
	 XouStal+/L9zvQGkJIsIQb7I+xidD/RZ9VSQteM9Pv/X39iBc56F3TBlKv4EzEI1sY
	 xUfRbLslUgcP8tjKK0FCgZ8p21bN41CXPgDyt/DzLfSSCn8JmMz4/Dj6O4Eqez0cN+
	 aLAXBknVTGZoG3AB6RG981UyvzhFswE0Gxr2vi5KL3KH35qy7DULRW81JiikdX8yCh
	 I4btaMPACrA3hHyJ36Np8umHt3mg1C5NNGFQYQIKpTNuUPxUl+JqObA9pX3D9QiIkJ
	 1c+3GJQaO6hSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC65CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002495369.24265.3741718304129250126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f0354f4cfbe28e9f96651855fbf2db2f2ecb5e996a1352308e6dde5b0f450c
Date: Fri, 29 May 2026 03:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780024953
