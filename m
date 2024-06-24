Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687AF1FAA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719193343; cv=none; b=L92GE/xMxrtQMqidozWPgM0RdDJADVm30fsFIwOcxuYvoapLnQsuY3bDxQCE75vm2KLWa3MkX8z9XVxwEycKLkQ72Im5pam0o98ydFHVsPWaZtgiwsmji8d+A0UtVWxx5K/MAojrTeAavruh0ZC/d6xeKSc1LsKzk/4HqZ2vHek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719193343; c=relaxed/simple;
	bh=yGBP9EAcumkGPLmSERTiA6CAikf+1KCNxkxAZyXhLyM=;
	h=To:Subject:From:Message-Id:Date; b=WaXhGznELqYTW5cZj5gu5ui8+FRuLtsoTPnL3Pc9Gb7ft2ZdFyUQ6nR7XnqkbPz6nt8zwNQsNGWGA/OdjyMgOpA8ZXOX9ccdDdiNWZzBpWSkOu+X0Oxm5c/0lDSCkQgoZnctAXh65QZFlgzFefyVeWZbDoAtZI272l9SowozL2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOgDe+ho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOgDe+ho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CE1C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719193342;
	bh=yGBP9EAcumkGPLmSERTiA6CAikf+1KCNxkxAZyXhLyM=;
	h=To:Subject:From:Date:From;
	b=XOgDe+hocQR48T6Br8EfOdiepvIbNNUMnSfjkysHwEICUg7NzYFSjBSeV83z6Ot4E
	 LBamz0ueHUbxe7iN39Z4hfbwXhdoRoJ2ak8tlBWaH2PdTKF0S6I4Pa6xk4+dtz5RqD
	 HnhhUT/8NVcrUYBAjS+Prz735VsZnZIvcxTedi1tV/uCI6Sstu4QZnzMog9C5z/0HY
	 KhY27irZliUbdCr+vQrkRFh1AkCuHuwkLFaJYV7c+TbFjSZLQoeQljpfFqB54AiJFf
	 ZxtNu0HMIgtA8o3c8BzR91hlzH8e4Bquy012l7GE8hE7mISxSB9Ng9sovB+bOY3GPV
	 Aim6zy+j9BfmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE73CC27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919334276.31172.16087738351946951892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e055616f66418498f2db1333fff4db6a69e72a12deb7830477bf5d80714219
Date: Mon, 24 Jun 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719193342
