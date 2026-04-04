Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C5A29ACD7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775269533; cv=none; b=fBvoi2vypXoigdjZ5hKUKToAQhNhjo4ivxi4WNYyVOGhoMszqS8B9JwK+nUB5032kRAOvh7Cwn6qwgq+WdlmWr6A7h0EL6Hg8lZQell8MYqEbCM/tOWTQWL03/pN6D/MYPtbPtXxhIIoNFDQwQxnYKumQ9Oo381HT1nrjP0C7DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775269533; c=relaxed/simple;
	bh=oH6+9BjF6WmDjoflypIK7aiV2TnaACvfku8tBAkRXyg=;
	h=To:Subject:From:Message-Id:Date; b=b9+0kvndtKtwxc521mGBnnHYj2fmDt8vL9V+FHbPdnDg1WRzh3cxEac2dlwf6JtdLQmDkk4IEMN+a0LaDNCmuPHjqZoCpO8/hZV884llf73tmjT62PXBvOa1445Nw9AxNKLt9U9YPix50hPRh8FCHR0dYtHz9WbdJns8lDpm7gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hovNucOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hovNucOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA972C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775269533;
	bh=oH6+9BjF6WmDjoflypIK7aiV2TnaACvfku8tBAkRXyg=;
	h=To:Subject:From:Date:From;
	b=hovNucOPYiNLefAsT1Ms+WNXjjDq4JBHogdmCbFoxUmOiP98AOoHjaUL/GEYmU6as
	 rXV5j5G32kn9HGFynLIgyMapVsMRTsk8d8O1TQpLFq9Ah7Nztc4feR2gTZj21daz94
	 HgaOUIb8i93ibrhiyvkmBZs2XVgZ33xFulyrnKIzTh2hTTY7ZSs0gOH5hiptMzJ/Jt
	 LHuv6Duxfiv41BUeXslQFu49wRZviDGJKgR5BH6k3a0DtHEP/2v+++DcDTh/Vkn8ng
	 THZV505vHgw+5b5zlBhhquRlEMKBn91Et6TtHWdJr4uULGa79/ZL2I+dt9rWbrwYc5
	 OOUPXW834jnWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB049E88D78
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526953369.14827.8551294634806944181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee96e3f36b9c50d918b52091fa113ad3d435a327105d368d83d89b60fb7cd504
Date: Sat, 04 Apr 2026 02:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775269533
