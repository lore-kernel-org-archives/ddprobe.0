Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD98A284B32
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746548993; cv=none; b=XtP8NmcKC0/OwBLE6/SuEbH6IS2JBudyj5GOCyW/bdrldIazWN0sQVg7JYGC1WjRxKMml0rR9X2ATtF1m7mTYcsu3RSUKMV45a6qRNTAlH3jN+o3+kfX+nIycdtbYDqVVlBgqvrOKAJkNMhnpbQX/MYa46+cueCsZyaXdR5nh9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746548993; c=relaxed/simple;
	bh=fp2dErw1dWcNCEmpnEM4uRwNZ1zAAhK6Czoeb5sMU6Q=;
	h=To:Subject:From:Message-Id:Date; b=WzeSxYbo0EajznkTpAEA1QjLRdQb6cKcGGDC4Y4E7zkd7Thbrv5f3hANQ66hj5DjRPMgi+lX1ub8j6HnUZf8kIsqTt6hk4KeyEEoNnFgvy4VGwjm9WS4RLTK5g1aJY+21SDmYuYkbZ5jwWtVD9BU6hSRsV6x+sxckH5Co2wheNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS9w9N3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS9w9N3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D280C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746548993;
	bh=fp2dErw1dWcNCEmpnEM4uRwNZ1zAAhK6Czoeb5sMU6Q=;
	h=To:Subject:From:Date:From;
	b=uS9w9N3ML+rLmh0YYRNWHpndOFljYiydaRzUUgxvOQTikcpIty3DXJxzp4ApTHyDa
	 eCGAFnqToVX+c5gHLTrw68t4ON5X8N4h7vFkDL4P9XfGUsGnGg9LgakDmp2YDZkPMh
	 JwEI+KBuzlEVDW5ljj6+0+CfaZ1x598lKKKLb6LOfFaaEC3NX+FoICND8IGTCsJ3fc
	 PkZRfTNjow1CPbgjhWPDmjsugBt3cl0336BHhoRt8m5VBdBjmpaP8K6sYBjP5tS0NA
	 TvZpmecAsuKMEc0s1/gRC1DiOKYCwz/qCjr1aFXL9xGptWmbknoizxDEF5pDxVfh9n
	 rQ/cMM+A3EjdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C0C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654899357.24825.4911330836629756691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0241e21f53531cff09e6defab92debb20b33ee789522555f4a70cdbc1d0d61c
Date: Tue, 06 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746548993
