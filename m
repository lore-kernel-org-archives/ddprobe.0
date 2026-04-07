Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2403D23EAB7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775535934; cv=none; b=Gl0r6JkcG5+ZJXgNmIQ2gTP9RbVOUPOf6QYa8KI1dvdiwhvlrnQYdMdcMJD3VUhZcXhz2OL2+8q2d27p9WV0loNDJsn6mjyiEtAUNeqCTqYSDM8H8D5qxCCZAVVBNVmsIVo4BFZIJmMIpdW3SIxzyTsdB12jac18NW8QAKrwdM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775535934; c=relaxed/simple;
	bh=qNVqCjVBXExsypz1mwfCKs0AgWn6wIyXJQJ9znfa5fM=;
	h=To:Subject:From:Message-Id:Date; b=CnEdhcv5qdWJ1IHD842nN0iPGG4J3zpgz5LV9axXA+MntO4rHRkvixxycKoo5rxCYm0L0fgnqGsIuyQzzcrU1d20YyBztfonMHx0uy1ng3RS+DU/XZevzo7i2Iq9PjcFsoRUHvVxUp4telg0MkEhoz0/7UEfyPyksLYzoa3WAcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4sQnydZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4sQnydZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82C4C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775535933;
	bh=qNVqCjVBXExsypz1mwfCKs0AgWn6wIyXJQJ9znfa5fM=;
	h=To:Subject:From:Date:From;
	b=N4sQnydZaCdMlE2EFy4bP66xTUmATzkFLToq/Ou4hRVLO0KxOUD2YwamX0vbLwv1d
	 0v4io3SiA5IRQmLP8hM/GlZIiPi79hzjkvGLdZwfP8pKD0EhajvNfdhrwq6x3UGBTL
	 sOjuNuOMZbajt12rAl9la5MuLnxDGbnaDrHnbgZEhxVYrQeNceaqkpUUHpeuwk7Wlq
	 oov7iDmR5gYX1C64JLNosdXhRRsYfUsKbDacZkeb0SIgfQO0yRdV8j1ra9izFcmLS4
	 xx8f21fdSH3IHtnVYe8zRmGzE6ZTd07k1f460sIeY7JtYuIWsCeauTP2vMv8r0ZRVa
	 JtKdWudsNYUmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0368FB518B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553593369.22025.11860730420046797376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d55b94102a99525f9376f2c2d63a3e14a8eb3048098bbca2c5b333477470a34
Date: Tue, 07 Apr 2026 04:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775535933
