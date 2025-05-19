Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B947171D2
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747678794; cv=none; b=tfCDIOOFRFe0LiMma7lkYmKqaoGSlBfwDOpm6GcjFa1d+glif741rxpdt4qViDXbBgRiaquOmEhC8OZJnzrAHswYK2OscWwy4hc36/2rVQL6/hDoKv9hDVUgOlu4xoo/S25zKqVpxNDWuGgwUClxnAmmp2vOec5kohz1oLxkbnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747678794; c=relaxed/simple;
	bh=XEfnaCJUvBYFA3buTFjHO2bo+UNEB5Infcfsk36uPlU=;
	h=To:Subject:From:Message-Id:Date; b=PVOHcXh+5GKSSHm0dZCJ78zwJWJHAVQvfieSlwtZKjKroPXeQ0Cqwk8gsIlTjqplbKTF6zQ41ImVNUVJTeiIhEzVx5z6ZFSUkcl58hbQzwyitEUN6fqh0UtVmVbB9feGrfAX7LB29v5mWdm1Wv/QP51ryOUptZ/mRbi/MEBcBvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saMyXJwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saMyXJwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C7EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747678793;
	bh=XEfnaCJUvBYFA3buTFjHO2bo+UNEB5Infcfsk36uPlU=;
	h=To:Subject:From:Date:From;
	b=saMyXJwuYmJ24xFulFYGTTvWrnQORF19VMX6Cq9OX9cV3yU/CnXgmscUaIXUpgmpA
	 nHt4tVq6UhjwGXdBFuIMwIJELqWbw0BUKStl/FDEYbQzYgG2NcdTl+cClzrw/Rd7Q0
	 +I+qiaWQayOi+POaUDdjoNWNC/Kqf4GHKs4+785WnCsQgPi76JGlF8ecFVFhmle3xm
	 P9vE4i56qi33CxFv6faQdRArmRjeHgrnFVZfFPRyogP+N5e6KogeRA2l66S3dTI8Gw
	 VvD78SUistfQyBA4OZeMHmqunl+B1AdcZVSFhlq9P/oE6qHtPvqVwp6Nhpot+hA+fd
	 tfwg/jRZxBcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF72C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767879357.27184.5887875991375869138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4710c753f5e0ce1abc64bcd78d88c67c3e7aa8d9272846b1466d071790d8dd8
Date: Mon, 19 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747678793
