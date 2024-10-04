Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45724153838
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728086154; cv=none; b=mD7sKyLSh6wpRJ1FKL9FDd8py2E/b5fcG4S7/7kFvhn9Y8QkvrFdFNUdOyi7Iy2c+gbdTcP8rOpewrX6eFiD3311bLmJRsrvSHVB+QpTYb0nV8GdeSqUNd6rUyx4RfF9soj3zsKsb8wv7zBwZ31UEqoeY0k4cdMw5gTmlbp9odo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728086154; c=relaxed/simple;
	bh=DLgae/sG8rxKPsCLRlGl8tM5glmE/uKN8nEQc7nGcDg=;
	h=To:Subject:From:Message-Id:Date; b=FOrWbRJJXsFp8ZxZd2OaOvgrStLuoSqTP+NlWT1e9SPjxUcNLldz4SQqVnoNJKTC4v70JXIPCuEV0iNQ0OR+ehqmO+rrY/TC+d2hJqHeSaspDX/7IVCwAt4ut8VuyaGlWcnYriuC2AfHKqWdQqe0lKUV3dxHBo4lNG6pcU6ndao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJYV08ef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJYV08ef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD6BC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728086153;
	bh=DLgae/sG8rxKPsCLRlGl8tM5glmE/uKN8nEQc7nGcDg=;
	h=To:Subject:From:Date:From;
	b=LJYV08efI6vp/SLDlU/hJzeMDLRzM0kpgSwGCF+PGy3biWQKBPch3GmXOXHR1zryb
	 KPw0vbY5l39/z9g2jmMdXQ0a2REc+lpRvlzoTgYWrc6lr08jF/kkXvbOpnhknwZlmB
	 J9HvpbzufSp8TyMoqLibZvNkv3B6wqTg0K12yZLp+6ROTmbL6zEU2DRBQJCKAlw99O
	 dwTy/bvU/IPnJKGTRYNBPB423LQfcqW4Xca/PN4e/Osfz5s7ntjFd8uSLhN054+bSM
	 Mk4hffOwaiqjgGWZPTDiSejOBqSQeP64PsnH4LVj8y3HPslK4rOFG1XUOf/opeunV5
	 He5q+aJPEd94g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5DBCF8852
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808615367.23074.10081918356672934077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692eb9f3323edae5b8446e2816a53e2048d14884e61a997182eb5c7c1330aff1
Date: Fri, 04 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728086153
