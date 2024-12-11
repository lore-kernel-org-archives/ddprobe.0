Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273131F949
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733935554; cv=none; b=PPa/cyTzTSLzbU4TLAXm4Rdu2Br3h9Mk/K3L58swhCwqp366x8UBGR8ElZFgq2XOLgqqqhNXZb2jdfSXxi+IqIbR7Kx4yJVtS8WTq5GuHO4s/s2dsWLFmzf2q5fc6iC+ygwt+EtmorND0xDyJsftxaKIzxX1+MIFd3feuA3cx/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733935554; c=relaxed/simple;
	bh=cGxuMb0U3TM1SG8fKyua/lgoSzoPEgyYNCfKSEhEYCM=;
	h=To:Subject:From:Message-Id:Date; b=ipYYYzHmEu7OXqi/4E2ZRKkhc/vjXwElEdrsIFEEMIPTP8WenoThvbb7LwZylsyQt0sQCHq9T9B1X32X8vsQGwmFfOp95QwAtZc723fAqsW3FPC8G1T5L+DLn7P2VMScGJ0+n3g8DLKtoSN4FZ9MpiCkNCJe9GQgVvh7FkiYKuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBMM+qia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBMM+qia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F3AC4CED4
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733935553;
	bh=cGxuMb0U3TM1SG8fKyua/lgoSzoPEgyYNCfKSEhEYCM=;
	h=To:Subject:From:Date:From;
	b=SBMM+qiaJ6mNrIK8Lt9wP/PkJSMr30pULeFbbNHP8UvX7ZM0AzfkdxfOIEnuW0Fmh
	 9jz8ovXLaJzA8cwWvkg6oWUNj4CIu/ciN29lmz27EL8mLdOb+Re8/TKXGNZegg+Ncu
	 GVHu13HNfnMV+D39sx+PrD+mvMc6M4AHq19iEuWIq3/nbNF+1RE6b08mu9gi8IUMoB
	 rMTVbwd0wRu/SceNFF7lpgW6Ts7XbZJq0M/K/NXvVmJYKPAasjAoMzPpBg+AlTPJ1w
	 hp5LWdKw9cU4Cq5eyKrGIxe8vgu6C4luwgE07alHugTOrzwyf3DH8REyGXUNiA3VGz
	 eCxXO0MiVVoAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A240FE77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173393555365.27706.18420045406714891700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91bf1e744549e4247149ef8aab1865c677f689f9cf495059796475e63e0839e8
Date: Wed, 11 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733935553
