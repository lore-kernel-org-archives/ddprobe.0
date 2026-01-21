Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2040E328B70
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768979034; cv=none; b=Ptt4BrAHeC6REufqVFhCW4Xh5OwsDF1CEfiGxwRy92nzSrzz+rDm07MVD8BL21uqWdMFgOASHCaqYjFiQnzquiLKYups8VvSZqYhUrsjD9dFuBu2nf8ri1pTPYwpzu2Ux7Y0A+vNcP3+Q+TZdGITjWyeX5dbgkB0biVsa0ydZhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768979034; c=relaxed/simple;
	bh=pIaS93xaz88s69EwS79XCQeTnHiTBS5b/CIx4qOewj4=;
	h=To:Subject:From:Message-Id:Date; b=DD7lf4ClM9r3vlH3YbfsGBc7Gx31U/m1w3mTpBywaa3pXw/wFA/n3Zx0s82SQEH8vH7HY+yTtbLUCC+lvld4j7Pvn1bfci76ffg5YgIh87ZUPvcbrYjG+rQHLbLZt7hjqDw8JUn+nt+c6BU35I8aAseGWwDsA9qR2UZm1wPgB/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMulFPq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMulFPq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3922C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768979033;
	bh=pIaS93xaz88s69EwS79XCQeTnHiTBS5b/CIx4qOewj4=;
	h=To:Subject:From:Date:From;
	b=QMulFPq+PjXmlHSndyLZdWnaBQoMrm0afwVgJeeIpJ56i9eIi+68phyG/huGNkP74
	 dmHD2aP+4uAJ22bbwubNjax2gopGWZK15RnbDQ/jj5UgGgYCbgz44+e4Dn+OJr3Doq
	 ZgRbf2QvPtnYuefzlUYaTQ2drvZLz3TL1aD0O+OyiYKURBWu+F1wqviMwdHNRxwGw/
	 UFU+twnFHbRWAiO2l929Qvi5xQ3JQAxnffAbK+uIJjSm209KKvaLZIFVbwKLmLm+0T
	 xVNvPLcAfLxO09AY4216vrg3xTBvB1VWTlTnfL1+ChUI7ni5+5Y5Sdkk/Ar0gfERuj
	 ouyRdVk7Q6SeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D36D262B2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897903358.9878.2038096514143423649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd50244227e22e02618122469a0288a927b801d777285b95fe7f877723fbce5b
Date: Wed, 21 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768979033
