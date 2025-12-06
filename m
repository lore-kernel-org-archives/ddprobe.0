Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBEA2D2397
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765046574; cv=none; b=r/jm4zF/BfDHVmOO5YyZzDNF31c3zRhyC+sP20tMSJtAVjUTLbisWNqF+PFPRG3J5XGoiY1s2O9dnHhlvJN4VVDrlo0A4FIVSpwfSPxm0F5K0whkCTC1qaVAc9dCOhN+dgA5L6s9WQXnjBIHeG+btVu3Bw1xmY+A7USVN3opVa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765046574; c=relaxed/simple;
	bh=UQjD1wrkP8A4bthNKMTy8HkqIQ6uWHxaoey67/shYK4=;
	h=To:Subject:From:Message-Id:Date; b=M1lz9Bg9UMsSSb74fqRvLbCHPpbubVPHlaVSBBKwo+MVPWyg9ifjUv78i/aUgz6iIG+A2rYdLABVOlQIWGYBSCQUDxw0a9U0//MvK0duZeIuZiw09JgEwnwHLQgt68bEjyrO6TB6/9KKx1lTtwzXli0WZJtkvIur2eQ+I0RqkE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGLmmrtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGLmmrtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B65C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765046573;
	bh=UQjD1wrkP8A4bthNKMTy8HkqIQ6uWHxaoey67/shYK4=;
	h=To:Subject:From:Date:From;
	b=iGLmmrtdMEX46CuZ945HYU+eW2p2khG+83NgbKKmwEiW9GNgE/Vkef4LsYdhPoJbF
	 qH9JoddXC4FrLuVaqbmEMP7QPezJAT6Ol3bEK66Ip1/aHk//9BId4NJxHM81cwm4+d
	 BK3Noh66DS0HEiQFO2tvwirZ/afDizjPsnA4fe9ht1tH/2A0PhopA2VtLqc7ZKcriR
	 G01KFvUMZVyIpgDsCJZSOPEMtutPINCUkznHiETNHtsY+lsrO+HpAjPdfwj7ef/OpZ
	 cV5TBEQirDceOeuFo0DPJJWBmjJ1Z3KADV/i1iJNGxnuhNnrwF3wLzGQiOTZuCGAzB
	 9AmWWYWlegrWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B81D3B7DB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504657359.15186.18285088120188785202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5426c69b59619e16d945a43be7ba010c4c051f2ce9a8c34372d832cc4a0de85e
Date: Sat, 06 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765046573
