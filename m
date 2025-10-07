Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE9E34BA5C
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759798194; cv=none; b=L4HarKoyNunFwY/d0BEbPFJingYn/Jlt+bdg5loqBnwHTeWQnhECEAGCNXu/6N7aWZxzcwSpp66G6ybj8/ygQPO0lM3fy6EnVGbBOhAxxMRNB8VuyjQye8hMSYNDd3dFL5QcUTBC6pgJGP00aTgwqlEgGyBUsEcS0oiRKHyCFDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759798194; c=relaxed/simple;
	bh=eu8kPZ3gEehCNLwWVVY07r8hDU/xUXkELeJnJzVT0fo=;
	h=To:Subject:From:Message-Id:Date; b=kq9LBe3Mga+dJ1rsPjdxKnMuLdbAErdbpzZKstYymosh13t+11UFQf91mSRFlpObOvulrxG/JQhTgw1YocOdfxsN/8QZHzZvm7fGDYt/fyNQb4CL21Dw/sQyNsxTkzdmiBLq2magvZDpdKPpyW4ee6HniIIbRCCmDPhTqJYMCzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1JBxVFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1JBxVFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A46C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759798193;
	bh=eu8kPZ3gEehCNLwWVVY07r8hDU/xUXkELeJnJzVT0fo=;
	h=To:Subject:From:Date:From;
	b=u1JBxVFuPRE8lfs1KciapoC9w7aymEXG9Yj9ygL/8o4bSf5JwIIxY+F/bTt726Ulh
	 c7gi9dQ8ESC1E2NTuWbQUms9zsFBa5sV1R2ZPU3CYDxPbqLdB9CInekJSEzmAbkSTP
	 mgc2QkW/e8gilLChKYjNBz0LyA7ddRYr9cwaYd/JeW3bibBADALmoVVe4KrI0k7NrR
	 YSa03RdsOkDCm3BPC2DriEJZfPFIrjDvfQZUdtTGSdk8cVbvdH2PWr37X0BsNELpu/
	 B4A+8pPc009WLgpxNXyJghs30xSUmM5WfCAGyjSiW5IhONOX9UVilFAtpPckYq1SjH
	 fXTxRDK9O9f2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F5CCA471
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979819357.7633.506138606789827825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122253c31e828da8c1b196b2d3df252fb8a86a32a555a869ae733824cad43368
Date: Tue, 07 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759798193
