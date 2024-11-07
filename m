Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB574431
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730943354; cv=none; b=KrBSYRKElEyc5qj8I+1LlcwQe0W1xvYNXUFrxBO/lMisPTuWwpTLI17rI2qA9xRVzC7g5emrkpR3agrtoM6FF2O4WdGRUGQX7Do+oKQxKLKagdg2vBq/Ruj0vyy3ZXr6GZulL2nGTWVoAQ7csw/mhw0kcGzIdR5Jyu4XDovRQ/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730943354; c=relaxed/simple;
	bh=0hPYxTE6gtqdqp7oOLxK1SMyQN5Wik5swzKnDW7t7DU=;
	h=To:Subject:From:Message-Id:Date; b=agdSXlywIfiWY1yK9E3QdpL6uFJ8bjx3BYvZ0hXFbtsOIRk4NymWAHLC43VXsmyOyxnVdiVtABPjiuX9Xo8h4+mUomAzw31UclJV6djeUAbB5jCYi2ha7XUF2ESWp8eUyClKltpSBxvoGO1enxeb1hp0sg8q5OzukQQ9lp7pEPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESVVHmnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESVVHmnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D02C4CEC6
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730943353;
	bh=0hPYxTE6gtqdqp7oOLxK1SMyQN5Wik5swzKnDW7t7DU=;
	h=To:Subject:From:Date:From;
	b=ESVVHmnPK/PHUn+ONSg8ipqdHr1l+vYlHh3ET6Fkak+cc31Bd4bBKmjvjhKtDU52j
	 yp/OEdqdmhRx/lIVB6Fs1Llza0uLzp8SWvkPTEeijUm7qQIypeqXYzflKDh1OAlfJ3
	 cjcWNyjXBmac59QPvkbupDmylrG9/CRjzqiyoyvA8aqqfoXPmac55EqYM9TGfB/USK
	 EuFnON0oKLYtNr/rmP8kb1dlZcTDddoj0na9SGJmutClj3u3+yR+4eE07LdQaQnoBO
	 +DGnDr4Jp9zNOJsNq+X1wQGnuw57jTggfmwNNo2TH36b+TRSetShdwiFzqUKsRa9N7
	 009+qg/HX7frA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50DD29FA5
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173094335357.9581.2026400249517775829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9416b2c207a28ed233c59dde88bb54756fffa80533cc7c92c2dbe1c6c20e35f0
Date: Thu, 07 Nov 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730943353
