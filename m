Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538EB348C7D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792123834; cv=none; b=GBqdlPZIjVZ7TjJl+1E4mctfW326SBJVJuODsVXVbtlhkGr3ESMWDP2hHrnW5cblv2GKNHJRV4S5uB2Z95ykzP+lIV0wbWYh3JCXnBONstNKYwtLT4Z2NfqvyavQZlsAnd2gQQBPn9LMzsNa7IM+L1F+p1GkFslBmdA8XbPr8DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792123834; c=relaxed/simple;
	bh=8KdO1VqcNk+r7yNd1Yjo6MFRjwxTTGcOwg5jU4uBsXs=;
	h=To:Subject:From:Message-Id:Date; b=n7OeKcSEjX96ENqXVduAYY3HYSdS1BEv+JU1WtOF78/Rx46rndzIzVmUvzgadg6OABlFy/0VM/z+Lt488uwHDnjN9YmsMckWPlZLIeoGQGJmaFGH3Q5eVtbOI6dFpcxtqZ7jjeUGOe0GV6GJ3pFSbrg560C8/W8SKBrhLIm+tdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc3Ku1G1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kc3Ku1G1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D276EC2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792123833;
	bh=8KdO1VqcNk+r7yNd1Yjo6MFRjwxTTGcOwg5jU4uBsXs=;
	h=To:Subject:From:Date:From;
	b=Kc3Ku1G1gGVozvZte1Xxn+1XVd7sTgaTgee2HbAGtqZjsCjPL2OS3cCB6mLzlU1e1
	 ebHZ1c7Xpl4acE9271chAcmmo8Rikx8BLqt8Nu0g0nKJv1LjfCE9BOzBLt8HNyAwSC
	 /mYrNeyYHzDwazh8/o+yQL+89cJszqwJ+0vY6XHaAVY0JYdM9pNKWoQ4YFqci5h5Qy
	 1zA86ehFwYV3RyMFVGIL7hwVNJ4k1Jj+f+UVHwEWbwDh26ljlWSk+CVJPz7PIF2w18
	 DhDHXcXMA+UKFvBTtMxSEDQ+aYXtUjrEJ5F4tnfYQYc+JGaC8wggDT/cRE1+jBOaIl
	 GAxljEx07EHUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF958CC6B2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212383370.24780.7098685605607911398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4da4f04954b632dacd10c9ce9cb41782f070e7f57b98f8e58c57a2684f65dc
Date: Fri, 16 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792123833
