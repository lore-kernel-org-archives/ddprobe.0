Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3631A704B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763520114; cv=none; b=QMgnhXfM+IKYMykkMMLnJ9qfQJZIjBh7PI4unmy5aY++Lp0wHc38IruCOzxHLo4EBqAc21HLXDjv3LNZvVMMkxUydMCVyoW/KuuYqpklt0Zpk9C48R/o2EgYlIrpFtwwUjJ0sI+8DY1UR5/UOXnl+9iwQz2vdvkMuOpmYcnDEB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763520114; c=relaxed/simple;
	bh=Y9bX82wRPlNbO9tRG5J7y0RJPZFGEp0OUA5flX2RDKA=;
	h=To:Subject:From:Message-Id:Date; b=dW0bU1Rth1YAS5XTCUlxSzBczqWafnkxc/m46v/zNElJElMdUj9h1szg1Z58zDrQ4fcTOty0ZVXKZ/+1UIqyg38LkZb1tbHueKzrNzE7vZwDpLI4FABl+mJ46iv2f0N2gjOAf41MYYtIpJflhthib3N1AjvwcvCG2PgWkKinu9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg72/WTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg72/WTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED880C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763520114;
	bh=Y9bX82wRPlNbO9tRG5J7y0RJPZFGEp0OUA5flX2RDKA=;
	h=To:Subject:From:Date:From;
	b=Fg72/WTiyNhNfszUBAaLrzWML6eYWXC3bcC9CCIfJKCyYmErFJzz6j+/Fe/Z1aMlF
	 1NrxxWYjiBTqttsohKveFsNnqsCwPVx43NWgFW1cizXcFsCZ8giTQn3QsI69w6SIdD
	 DKOsjPCjdMf933XKOMNjZ7tVgywxab2gDfVxp14kcl26Db/+4a1sZoORZoT1Peo8wX
	 a0u9Pae7rQsBB52tvjyYpiUDYSNY2eKErDRnYIM8O3qSvRYRBcsGcs5x2ho5tS7W6l
	 qpEK6hE/stOzxiEOFC4Faq42KI1fkQRnMN2fsH4M0VdRIwsaqRw60zQW+Ncz+ZC10k
	 xh1PxNOh1Q08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28A7CF256A
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352011365.5471.17405502361193528789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a8df2021753646b2aca7bb4a1041c2f469d54102f7f7b8029573bf03555c54
Date: Wed, 19 Nov 2025 02:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763520113
