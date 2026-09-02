Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3893DDDD9
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788365434; cv=none; b=Aan1j+NVukXhPl4QDm41M40PzbPjprybl2NeKMTOjsyAvUg8liWDFSMo+XtR8Z9+Bzo7899OKQs7eDYsCKsuQ1CbMkENcgV8pNzLvUF2+/3mCejTJ+9B+c4J4MHMn1KAL6r/GrpooOCGxkMzwEoQaYYU64ca1Uy8bxAl9LM5ptU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788365434; c=relaxed/simple;
	bh=rsSL4rwIdudqB7jPCkPc4ZO8Qm1+ypIW/0hW57u3DbM=;
	h=To:Subject:From:Message-Id:Date; b=IdGeB1z/AssbT4hOTBjhS+9GmLq32AU7ytA+y/FoEJWszR6sAIrP6ZoFDnbTDq0K+J0RJ/I/SmL2Y3q9sepKB++Pv3BdEdXDJzYLUzepQFt8Lk+uanvdyArbCntAcurOfVhMjqHRwCWFaJ3Q9qTakAyNiVv5rIW44fscKt6no6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZ9N1p8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZ9N1p8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF98C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788365433;
	bh=rsSL4rwIdudqB7jPCkPc4ZO8Qm1+ypIW/0hW57u3DbM=;
	h=To:Subject:From:Date:From;
	b=GZ9N1p8m9WG8lrZlwarwb26uzTuqB56R+pDjVrptRQkCZXmGm3V5fql5a/b1Fpc9/
	 Q1+XxDcyxdmlM5EkTVA8z5l9THPVcHy/ixx+nnR+F5MhRwSUKGiEWaC23TjuM4xmD2
	 BRZCn1i2P/PaIsW5Lt0RcDGPNBdXyXhZMvSEl2yXqhiZocHEEI5VzpITZRw3MCzv+K
	 7kxd484ju8MM5Y+WajZy4MMzdwrIR53f6+e9k4UM35xx3Vp1w5+pOCEl0UVc/uKiOq
	 1CumkAXkZ0PGkZKh0OJa7o1aInhmEKLYVmhnCNAJ6bVgJNPujKHuhw9Lg+fXEYfke2
	 kgRtc4ab3qeyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E26C624D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836543368.6971.15576524480968023426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb57d03a516bf63848340fce000533c38644dfa498fe5fcfaf198f9fc36d1939
Date: Wed, 02 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788365433
